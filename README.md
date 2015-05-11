# OS X Setup guide

## 1. Update **App Store** software

Make sure that everything on the Mac is up to date either by opening **App Store** and going to **Update** tab or by running software update from terminal using this command:
```
softwareupdate -l
```

If there's something to update you'll have to run this command to update it:
```
sudo softwareupdate -iva
```

## 2. Install Xcode and Command Line Tools

To be able do do anything _programming-related_ you'll have to install **Xcode** and **Command Line Tools**. To do it follow the steps below:

1. Go to **App Store** and install **Xcode** (free software section).
2. After the installation is complete open **Xcode** and accept **terms and conditions** (**NECESSARY :bangbang:**)
3. Open terminal and install **Command Line Tools** (or if you wish to install them from _Xcode_ :arrow_right: _Preferences_ :arrow_right: _Locations_):
```
xcode-select --install
```

> To check if **Command Line Tools** were successfully installed on your machine you can simply type `gcc` in terminal and you should see some something useful like `clang: error: no input files`. 

## 3. Install dotfiles

To install **dotfiles** and it's dependencies go to _Documents_ directory and run:
```
git clone ...
```

than change directory to the `.dotfiles` and simply run:
```
source bootstrap.sh
```

Of course you can easily use each file without calling `bootstrap.sh`.

## 4. Allow third-party software

To avoid some complication during the installation process you'll have to enable installation of third party software. To do this follow bullet points:

- Go to **Preferences**.
- Go to **Security...**.
- Select **Allow software downloaded from unknown sources**.

## 5. Terminal window configuration

To have complete **Terminal.app** configuration you have to download custom theme and install it. I use [Tomorrow Night](https://github.com/ChrisKempson/Tomorrow-Theme) with **Menlo 12pt**.

What's more, to complete setting open **Terminal.app** preferences and there's a couple of things to set...

- **General** tab:
    + New window with profile: **Tomorrow Night**.
- **Profiles** tab:
    + Set Tomorrow Night as default (at the bottom of table view).
    + Text
        + Font is **Menlo Regular 12pt**.
        + **Text** - everything selected here.
        + **Cursor**:
            * Square.
            * Blinking.
            * **30%** opacity
    + Window:
        * **Active process**.
        * **Background** - 90% opacity and 30% blur.
    + Advanced:
        * Bell:
            - Visual signal only

## Sublime Text configuration
## Xcode configuration
