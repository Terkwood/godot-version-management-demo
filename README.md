# godot-version-management-demo

This project demonstrates a way to carry project data across calls to ProjectSettings.load_resource_pack().

For instance, if you have a [self-updating game](https://github.com/Terkwood/delta-pack), you'll need to carry the release version number across multiple instances of PCK files loaded by the engine.

One might think that `ProjectSettings` will be automatically reloaded from `project.godot` when a new PCK file is delivered. That is not the case! We can, however, manage changes to `project.godot` by using GDScript, as seen in the `func _version_by_setting` example.

Another approach is to store a special file in the `user://` filespace containing your mission critical data. This can be seen in the `func _version_by_file` example.
