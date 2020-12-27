# godot-version-management-demo

This project demonstrates a way to carry project data across calls to ProjectSettings.load_resource_pack().

For instance, if you have a [self-updating game](https://github.com/Terkwood/delta-pack), you'll need to carry the release version number across multiple instances of PCK files loaded by the engine.

At first you might think that `ProjectSettings` can manage this, but when we tried to call something like
`ProjectSettings.get("my/special/version")` after reloading a new PCK file, we found that, even if the newly-exported PCK had a
different value set in their `godot.project` file, this value was not updated after the new pack was loaded.

In this demo, we leveraged the `user://` filespace to store a simple text file with our "mission critical data".
