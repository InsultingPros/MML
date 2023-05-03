# Multi Mut Loader

[![GitHub all releases](https://img.shields.io/github/downloads/InsultingPros/MML/total)](https://github.com/InsultingPros/MML/releases)

Yet another KF1 MutLoader, but this one is special, because it allows you to have dozens of votings without hitting the `KFMapVote.ini` size limit.

## Usage

1. So, you have 50 classes to use (a bit overkill, but why not):
    - MML.ML01
    - MML.ML02
    - ...
    - MML.ML50
2. Open your MML [config](Configs/MML.ini) file, and start to fill mutator lists by your taste. And you can name them properly / add comments, so in future you won't forget which list does what.
3. Finally in your `KFMapVote.ini` replace your mutators with corresponding MML classes:

    ```ini
    GameConfig=(GameClass="KFMod.KFGameType",Prefix="KF-",Acronym="KF",GameName="01. Vanilla",Mutators="MML.ML01")
    ...
    GameConfig=(GameClass="KFStoryGame.KFStoryGameInfo",Prefix="KFO-",Acronym="KFO",GameName="30. Objetive",Mutators="MML.ML30")
    ```

Grats, you've saved lot's of file space for additional votings. Enjoy!

## Building

Use [KF Compile Tool](https://github.com/InsultingPros/KFCompileTool) for easy compilation.

```ini
EditPackages=MML
```

## Credits

- [Dave_Scream](https://forums.tripwireinteractive.com/index.php?members/dave_scream.22538/) for original [MutLoader](https://web.archive.org/web/20230000000000*/killingfloor.ru/xforum/threads/mutloader.1729/).
- [Poosh](https://github.com/poosh) - I used multiple loader class idea from [ZedManager](https://github.com/poosh/KF-ZedManager).

Additionally you can check [Vel](https://github.com/Vel-San)'s [MutLoader](https://github.com/Bleeding-Action-Man/MutLoader) realization, which doesn't have this much flexibility, but has some other nice features.
