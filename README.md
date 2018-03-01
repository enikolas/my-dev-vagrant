# My NodeJS environment on Windows

## Requirements

1. [Vagrant](https://www.vagrantup.com/downloads.html)
2. [Cmder Mini](http://cmder.net/)

## Clone the repository

Clone this repo in an easy access directory (Eg: ```C:\Users\<your_username>```)

```
git clone https://github.com/enikolas/my-dev-vagrant.git
cd vagrant
```

## Cmder setup

- Unzip the cmder in an easy access directory (Eg: ```C:\Users\<your_username>\.cmder```)
- Then open ```Cmder.exe```

## Customizing Cmder (optional)

This bundle contains my personal setup for ```cmder```. Which includes the following stuff:

- Custom keyboard commands:
    - `Ctrl + Alt + Shift + G` Open a 2x2 grid with `admin privileges`
    - `Ctrl + Alt + Shift + S` Open a terminal with `admin privileges`
    - `Ctrl + Alt + S` Split the current panel `vertically` by 50%
    - `Ctrl + Alt + D` Split the current panel `horizontally` by 50%
    - `Ctrl + Alt + E` Create a `new console` of your choice to the left
    - `Alt + {W,A,S,D}` navigate in between the `splitted panels`
    - `Alt + E` Navigate to the `next` console tab
    - `Alt + Q` Navigate to the `previous` console tab
    - `Ctrl + V` Paste single line
    - `Ctrl + Shift + V` Paste multiple lines
- Support for `UTF-8` and unicode already set

If you want it to work on the same way for you, import the ```ConEmu.xml``` inside ```Cmder``` settings.

## Vagrant setup

In the root directory of this project, with ```Cmder``` (or any terminal of your choise) running with ```administrator privileges```, execute the following commands:

```
vagrant plugin install vagrant-disksize
vagrant up
vagrant ssh
```

## Shared folders

This vagrant setup provides the following shared folders (host / guest):

- `git/` -> `/home/vagrant/git/`
- `shared/` -> `/vagrant`

## Accessing nodeJS application running inside vagrant VM

To access any running service:

```
http://192.168.59.101:<port>/
```
