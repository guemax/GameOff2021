# GameOff2021 - Buggy Attack

![GitHub](https://img.shields.io/github/license/guemax/GameOff2021)
![GitHub issues](https://img.shields.io/github/issues/guemax/GameOff2021)
![GitHub closed issues](https://img.shields.io/github/issues-closed/guemax/GameOff2021)
![GitHub top language](https://img.shields.io/github/languages/top/guemax/GameOff2021)

This is my repository for the game I make for the Game Off 2021. I'm using Godot 3.3.4 and Blender 2.93 for creating it. During developing, I had the idea of calling my game "Buggy Attack". The name might still be modified.

Link to the game jam: https://itch.io/jam/game-off-2021  
Link to the website of my game: https://guemax.itch.io/buggy-attack

## The idea

Before doing anything, I like to write a spec. This keeps me focused while working,
and other people know what I'm building when the software (or the game) is not completed yet.
This is my idea for the game, on the topic of bugs:

> Due to a bug in a computer program, our main character, the insect, can get into the target computer. Before the malicious code which the insect brings with it can be executed, however, the insect has to make its way through a labyrinth (the computer's hard drive) and comes across passwords of the user lying around. These can be collected to optain points.  
> Afterwards, the labyrinth is evaluated and points are counted.

If you have read this spec a little earlier, you may be wondering why the files, which can be encrypted, are no longer present in the spec - it was just not enough time to do it.  
The option for marking places where you have already been has also been removed as well as the console for executing the malicious code before evaluating the labyrinth.

## How to play

This game is currently in development and has only pre-releases (for Windows) yet. So if you would like to play it now, download the latest development executable [here](https://github.com/guemax/GameOff2021/releases) and run it.

### How to control the bug

For controlling the movement of the bug, press the following keys:

| Key         | Action         |
| ----------- | -------------- |
| Left arrow  | Rotate left    |
| Right arrow | Rotate right   |
| Up arrow    | Move forwards  |
| Down arrow  | Move backwards |

### Other useful keyboard shortcuts

Press <kbd>escape</kbd> to open the pause menu in the main level. You can then restart the game, go to the main menu (quit the game) or continue playing.
You can also press <kbd>9</kbd> to open or close the small topdown view in the bottom left corner.

## Downloading the source code and running it in Godot

If you would like to run the game with Godot and not using one of the binaries, you might run into some problems.  
Because I was not able to include the sound tracks in this repository (due to copyrights), I only have them locally on my computer.
This will of course lead to some errors when Godot cannot find these files.

The best option is registering on [ProductionCrate](https://www.productioncrate.com/register/) (it's free!) and downloading the music files shown in the [credits](https://github.com/guemax/GameOff2021#credits) section down below.

Create two new folders under `src/godot`. Name the first one `music` and the second one `sound_effects`. Then move all files from ProductionCrate into the `music` folder except of `soundscrate-coin-01.mp3`, this file should be moved to `sound_effects`. Make sure you leave the filename as it is and don't rename the files.

## Credits

Badges by [Shields](https://shields.io)  
Textures by [Polyhaven](https://polyhaven.com/textures)  
Labyrinth layout by [Maze Generator](https://www.mazegenerator.net/)  
Font (Poppins) from [Google Fonts](https://fonts.google.com/specimen/Poppins?query=Poppins#about)

Sound effects and music from [ProductionCrate]():

- [SciFi Atmospheric Track](https://sfx.productioncrate.com/royalty-free-music/soundscrate-scifi-atmospheric-track-1)
- [Outer World](https://sfx.productioncrate.com/royalty-free-music/soundscrate-outer-world)
- [Coin 01](https://sfx.productioncrate.com/sound-effects/soundscrate-coin-01)

## License

[MIT License](./LICENSE)
