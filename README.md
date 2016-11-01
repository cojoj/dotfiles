# macOS Setup guide

## Update **App Store** software

Make sure that everything on the Mac is up to date either by opening **App Store** and going to **Update** tab or by running software update from terminal using this command:
```
softwareupdate -l
```

If there's something to update you'll have to run this command to update it:
```
sudo softwareupdate -iva
```

## Install Xcode and Command Line Tools

To be able do do anything _programming-related_ you'll have to install **Xcode** and **Command Line Tools**. To do it follow the steps below:

1. Go to **App Store** and install **Xcode** (free software section).
2. After the installation is complete open **Xcode** and accept **terms and conditions** (**NECESSARY :bangbang:**)
3. Open terminal and install **Command Line Tools** (or if you wish to install them from _Xcode_ :arrow_right: _Preferences_ :arrow_right: _Locations_):
```
xcode-select --install
```

> To check if **Command Line Tools** were successfully installed on your machine you can simply type `gcc` in terminal and you should see some something useful like `clang: error: no input files`.

**Note**:
Solution described above is _okay_, but you can use something better for installing Xcode and Command Line Tools.
You have to check a great tool called [`xcode-install`](https://github.com/neonichu/xcode-install). So, let's just jump into this:
```
sudo gem install xcode-install
```
After this you can get a list of available Xcodes by calling:
```
xcversion list
```
And if you want to install Xcode, simply call
```
xcversion install "version here e.g. 7.0 GM seed"
```
It'll take a looooooong, long time and ask you for password **twice**, so be patient because it's worth the hustle! 🔫
You can also use this CLI tool to install Command Line Tools itself or Simulators.

## Install dotfiles

To install **dotfiles** and it's dependencies go to `$HOME` directory and run:
```
git clone https://github.com/cojoj/dotfiles.git .dotfiles
```

than change directory to the `.dotfiles` and simply run:
```
source bootstrap.sh
```

Of course you can easily use each file without calling `bootstrap.sh`.

## Computer names

There are 3 _names_ of the computer which you probably would like to set:

+ **`ComputerName`** is the so-called _user-friendly_ name for the Mac, it’s what will show up on the Mac itself and what will be visible to others when connecting to it over a local network. This is also what’s visible under the Sharing preference panel.
    ```
    scutil --set ComputerName "MacBook Willy"
    ```

+ **`HostName`** is the name assigned to the computer as visible from the command line, and it’s also used by local and remote networks when connecting through SSH and Remote Login.
    ```
    scutil --set HostName "centauri"
    ```

+ **`LocalHostName`** is the name identifier used by Bonjour and visible through file sharing services like AirDrop.
    ```
    scutil --set LocalHostName "MacBookPro"
    ```

## Allow third-party software

Since macOS is more and more about preventing users from messing around with software, Gatekeeper is enabled by default in Sierra, and since I use a lot of third party software I have to disabl Gatekeeper by running this command:
```
sudo spctl --master-disable
```

To avoid some complication during the installation process you'll have to enable installation of third party software. To do this follow bullet points:

- Go to **Preferences**.
- Go to **Security...**.
- Select **Allow software downloaded from unknown sources**.

## Custom font

I'm using [Fira Code](https://github.com/tonsky/FiraCode) font family for all my code-related things like editors, IDEs etc. Please follow installation guides in the repository of this Monospaced font.

## Terminal window configuration

To have complete **Terminal.app** configuration you have to download custom theme and install it. I use [Tomorrow Night](https://github.com/ChrisKempson/Tomorrow-Theme) with **Fira Code 12pt**.

Terminal app shows this stupid `Las Login` command. You can disable it by simply creating `.hushlogin` file in home directory:
```
touch ~/.hushlogin
```

What's more, to complete setting up open **Terminal.app** preferences and there's a couple of things to set...

- **General** tab:
    + New window with profile: **Tomorrow Night**
- **Profiles** tab:
    + Set Tomorrow Night as default (at the bottom of table view)
    + Text:
        + **Background** - 90% opacity and 30% blur
        + Font is **Fira Code 12pt**
        + **Text** - everything selected here
        + **Cursor**:
            * Square
            * Blinking
            * **30%** opacity
    + Window:
        * **Active process**
    + Advanced:
        * Bell:
            - Visual signal only

## Atom configuration

Right now I use (Atom)[http://atom.io], so it's fairly simple to set it up as it works pretty nice from the beginning.
One thing that you need to do is install third party plugins.

To install them you have to call following command:
```
apm install --packages-file atom/packages
```

## Xcode configuration

You'll have to install default **theme** and set some **properties** manually. Follow the steps listed below:

- **Fonts and Colors**:
    + `Tomorrow Night`
    + Font to Fira Code, 12
- **Text Editing**:
    + Show **Line Numbers**
    + Page guide at column
- **Source Control**:
    + Refresh server status automatically

## Dock

Please see the screenshot below for the default **Dock** icons positioning. Feel free to do it whatever you like your icons grouped.

![](res/dock.png)

For **Documents** and **Downloads** directories in Dock I've set this options:

- Sort by **add date**
- Show as **directory**
- Show content **automaticaly**

## Third-party software and App Store

Other tools which cannot be istalled using  **Homebrew Cask** need to be installed manually. Most of them via App Store.
