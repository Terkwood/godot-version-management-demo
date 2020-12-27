extends Node2D

const _PCK = "test-0.2.0.pck"

# one strategy
const _VERSION_TXT = "user://version.txt"
# another strategy
const _VERSION_SETTING = "application/config/version"

const _FIRST_VERSION = "0.1.0"
const _LAST_VERSION = "0.2.0"
 
func _version():
	return _version_by_setting()

func _version_by_setting():
	return ProjectSettings.get(_VERSION_SETTING)

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
	var pv = _version_by_setting()
	if pv == null:
		print("ProjectSettings version missing, setting it up for the first time")
		_write_version_setting(_FIRST_VERSION)
	else:
		print("ProjectSettings %s: %s" % [ _VERSION_SETTING, _version_by_setting() ])
	
	# init a version file
	var vf = File.new()
	if !vf.file_exists(_VERSION_TXT):
		_write_version_file(_FIRST_VERSION)


	$WhatVersion.text = "This is v%s" % _version()

func _on_WaitToLoad_timeout():
	if _version() == _FIRST_VERSION:
		ProjectSettings.load_resource_pack(_PCK)
		print("Still on the first version.  Changing scene")
		_write_version_setting(_LAST_VERSION)
		_write_version_file(_LAST_VERSION)
		get_tree().change_scene("res://TestLoadPck.tscn")
	else:
		$Prompt.text = "All done."
		# clean up the version file so we can run this demo again
		var vd = Directory.new()
		if vd.remove(_VERSION_TXT) != OK:
			printerr("Failed to clean up %s" % _VERSION_TXT)

func _write_version_setting(semver: String):
	ProjectSettings.set(_VERSION_SETTING, semver)
	ProjectSettings.save()
	

func _write_version_file(semver: String):
	var vf = File.new()
	if vf.open(_VERSION_TXT, File.WRITE) != OK:
		printerr("Failed to write version file !")
		return
	else:
		vf.store_string(semver)
		vf.close()
