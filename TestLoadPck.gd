extends Node2D

const _PCK = "test-0.2.0.pck"
const _VERSION_TXT = "user://version.txt"
 
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
		_write_version_file("0.1.0")
	$WhatVersion.text = "This is v%s" % _version()

func _on_WaitToLoad_timeout():
	if _version() == "0.1.0":
		ProjectSettings.load_resource_pack(_PCK)
		print("Changing scene")
		_write_version_file("0.2.0")
		get_tree().change_scene("res://TestLoadPck.tscn")
	else:
		$Prompt.text = "All done."

func _write_version_file(semver: String):
	var vf = File.new()
	if vf.open(_VERSION_TXT, File.WRITE) != OK:
		printerr("Failed to write version file !")
		return
	else:
		vf.store_string(semver)
		vf.close()
