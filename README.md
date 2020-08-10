# wowmacros
A collection of Macros for World of Warcraft Classic

Created together with Núll @kgnadinger, with early contributions from Paragonical @BenGu3.

This was originally a [gist](https://gist.github.com/profx-boboma/08f08188f8c48af73b7ac1973daa20bb), but since people started contributing, I decided to make it a repo. 

*Any further contribution to the macros or the documentation (this file) is highly appreciated :)*

## General WoW Macro Info
To bring up the macro editor in WoW, type `/m` or `/macro` in the in-game chat box.

There are typically multiple macros in a `.lua` file (9 in `loot_filter.lua`). 
To set them up, simply copy each line (2 lines if you count the line that starts with `#`) into the macro editor, pick an pretty icon, save, and you are done. 
The line that starts with `#` will be ignored by WoW chat box, and merely serve as a quick identifier.

To use the macros, drag the icons out to an action bar just like any other spell or skill, and you can activate the macro by either clicking on them or by pressing the associated Key stroke.

## loot_filter.lua
This file contains a suite of macros that helps you manage your inventory by deleting unwanted items in your inventory. 
There are 9 separate macros in that file.

For most, the **first two macros should be enough** to get through the day.
For the second macro, if you want to change the quality to something other than gray, use the following info:

```
#9d9d9d    Gray, poor
#ffffff    White, Common
#1eff00    Green, Uncommon
#0070dd    Blue, Rare
#a335ee    Purple, Epic
#ff8000    Orange, Legendary
#e6cc80    Light Gold, Artifact
#00ccff    Blizzard Blue, Heirloom, WoW Token
```

The **next four macros**, starting with `add selected item to whitelist` and ending with `del all but wlist` work together as a group, and use a semi-persistent white list.
The white list will be emptied (i.e. global variable reset) every time you log off, or reload your UI via `/reload` or `/rl`. 
In these cases where the white list (a global variable) is reset, or not created in the first place, the `del all but wlist` macro will not touch your items.

The **last three macros** are merely diagnostics, to check things are working properly. In any case, the last macro will print out all items currently in your `white list`, and can be very useful in many circumstances.
