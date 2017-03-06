# ahk-luamacros-test

> An example of using Luamacros + AutoHotkey with a second keyboard on Windows.

The following scripts are based on the original implementation made by Taran from LinusTechTips, available [here](https://github.com/TaranVH/2nd-keyboard). The included sample code provides some useful keyboard shortcuts for Photoshop made by a friend of mine (available on the attached `Photoshop Hotkeys.docx` file).

## Getting started

Either follow the instructions below or [watch this video](https://youtu.be/Arn8ExQ2Gjg?t=362).

1. Download and install [LuaMacros](http://www.hidmacros.eu/) and [AuthoHotkey](https://autohotkey.com/).
2. Plug in both keyboards.
3. On both the `.lua` and `.ahk` files, ensure you've switched the hard-coded `Users` directory into your current user.
4. Run LuaMacros and open `macros.lua`
5. Click on the "play" button, wait for the identification window to pop up and press any key on your 2nd keyboard.
6. Run `photoshop_hotkeys.ahk`. The AutoHotkey tray icon will show up.

You're good to go!


## References

* [DIY 87-Key Macro Keyboard](https://www.youtube.com/watch?v=Arn8ExQ2Gjg) by LinusTechTips
* [The Art of the Bodge](https://www.youtube.com/watch?v=lIFE7h3m40U) by Tom Scott
* [LuaMacros](https://github.com/stevedonovan/LuaMacro)
* [AuthoHotkey](https://github.com/AutoHotkey/AutoHotkey)
