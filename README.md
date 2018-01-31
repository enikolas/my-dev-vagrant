# My NodeJS environment on Windows

## Requirements

1. [Vagrant](https://www.vagrantup.com/downloads.html)
2. [Cmder Mini](http://cmder.net/)

## Clone the repository

Clone this repo in an easy access directory (Eg: ```C:\Users\<your_username>```)

```
git clone https://github.com/enikolas/my-dev-vagrant.git
```

## Cmder setup

- Unzip the cmder in an easy access directory (Eg: ```C:\Users\<your_username>\.cmder```)
- Then open ```Cmder.exe```

## Customizing Cmder (optional)

This bundle contains my personal setup for ```cmder```. Which includes the following stuff:

- Custom keyboard commands:
    - ```Ctrl + Alt + S``` for splitting the current panel vertically by 50%
    - ```Ctrl + Alt + D``` for splitting the current panel horizontally by 50%
    - ```Alt + Shift + {W,A,S,D}``` navigate in between the splitted panels
    - ````Ctrl + Alt + Shift + G``` Open a 2x2 grid with admin privileges (```vagrant``` + windows ```symslink``` requirement).
    - ````Ctrl + Alt + Shift + S``` Open a terminal with admin privileges (```vagrant``` + windows ```symslink``` requirement).
- Alias ```ll``` as ```ls -la```
- Support for ```utf-8``` and unicode already set

If you want it to work on the same way for you, import the ```ConEmu.xml``` inside ```Cmder``` settings.

## Vagrant setup

In the root directory of this project, with ```Cmder``` (or any terminal of your choise) running with ```administrator privileges```, execute the following commands:

```
vagrant up
vagrant ssh
```

Enjoy!