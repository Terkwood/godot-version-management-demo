extends Node2D

const _PCK = "test-0.2.0.pck"

# one strategy
const _VERSION_TXT = "user://version.txt"

# another strategy
const _VERSION_SECTION = "application/config"
const _VERSION_KEY = "version"
const _VERSION_CONFIG_FILE = "user://version.cfg"

const _FIRST_VERSION = "0.1.0"
const _LAST_VERSION = "0.2.0"

var _cfg_version

func _version():
	return _version_by_setting()

func _version_by_setting():
	return _cfg_version

func _version_by_file():
	var vf = File.new()
	if vf.open(_VERSION_TXT, File.READ) != OK:
		printerr("Failed to open version text ! ")
		return
	else:
		var t = vf.get_as_text()
		vf.close()
		return t
		
func _ready():
	# init a version ProjectSetting
	var vcf = ConfigFile.new()
	vcf.load(_VERSION_CONFIG_FILE)
	_cfg_version = vcf.get_value(_VERSION_SECTION, _VERSION_KEY)
	if not _cfg_version:
		print("%s version missing, setting it up for the first time" % _VERSION_CONFIG_FILE)
		_cfg_version = _FIRST_VERSION
		vcf.set_value(_VERSION_SECTION, _VERSION_KEY, _FIRST_VERSION)
		vcf.save(_VERSION_CONFIG_FILE)
		
	
	# init a version file
	var vf = File.new()
	if !vf.file_exists(_VERSION_TXT):
		_write_version_file(_FIRST_VERSION)


	$WhatVersion.text = "This is v%s" % _version()

func _on_WaitToLoad_timeout():
	if _version() == _FIRST_VERSION:
		ProjectSettings.load_resource_pack(_PCK)
		print("Still on the first version.  Changing scene")
		_write_version_config(_LAST_VERSION)
		_write_version_file(_LAST_VERSION)
		get_tree().change_scene("res://TestLoadPck.tscn")
	else:
		$Prompt.text = "All done."
		# clean up the version file so we can run this demo again
		var vd = Directory.new()
		if vd.remove(_VERSION_TXT) != OK:
			printerr("Failed to clean up %s" % _VERSION_TXT)

func _write_version_config(semver: String):
	var vcf = ConfigFile.new()
	vcf.set_value(_VERSION_SECTION, _VERSION_KEY, semver)
	vcf.save(_VERSION_CONFIG_FILE)
	

func _write_version_file(semver: String):
	var vf = File.new()
	if vf.open(_VERSION_TXT, File.WRITE) != OK:
		printerr("Failed to write version file !")
		return
	else:
		vf.store_string(semver)
		vf.close()
