extends Node2D

const _PCK = "test-0.2.0.pck"
const _VERSION_TXT = "user://version.txt"
const _FIRST_VERSION = "0.1.0"
const _LAST_VERSION = "0.2.0"
 
func _version():
	var vf = File.new()
	if vf.open(_VERSION_TXT, File.READ) != OK:
		printerr("Failed to open version text ! ")
		return
	else:
		var t = vf.get_as_text()
		vf.close()
		return t
		
func _ready():
	var vf = File.new()
	if !vf.file_exists(_VERSION_TXT):
		_write_version_file(_FIRST_VERSION)
	$WhatVersion.text = "This is v%s" % _version()

func _on_WaitToLoad_timeout():
	if _version() == _FIRST_VERSION:
		ProjectSettings.load_resource_pack(_PCK)
		print("Changing scene")
		_write_version_file(_LAST_VERSION)
		get_tree().change_scene("res://TestLoadPck.tscn")
	else:
		$Prompt.text = "All done."
		# clean up the version file so we can run this demo again
		var vd = Directory.new()
		if vd.remove(_VERSION_TXT) != OK:
			printerr("Failed to clean up %s" % _VERSION_TXT)

func _write_version_file(semver: String):
	var vf = File.new()
	if vf.open(_VERSION_TXT, File.WRITE) != OK:
		printerr("Failed to write version file !")
		return
	else:
		vf.store_string(semver)
		vf.close()
