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

To install **dotfiles** and it's dependencies go to `$HOME` directory and run:
```
git clone https://github.com/cojoj/dotfiles.git .dotfiles
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

What's more, to complete setting up open **Terminal.app** preferences and there's a couple of things to set...

- **General** tab:
    + New window with profile: **Tomorrow Night**
- **Profiles** tab:
    + Set Tomorrow Night as default (at the bottom of table view)
    + Text:
        + Font is **Menlo Regular 12pt**
        + **Text** - everything selected here
        + **Cursor**:
            * Square
            * Blinking
            * **30%** opacity
    + Window:
        * **Active process**
        * **Background** - 90% opacity and 30% blur
    + Advanced:
        * Bell:
            - Visual signal only

## Sublime Text configuration

First of all let's start with linking cool `subl` shell alias so we can easily manipulate everything from Terminal.app:
```
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```

If you're not me (:stuck_out_tongue_winking_eye:) and you can't link (or don't want to) plugins. You can rely on `.dotfiles`. They'll ask you if you will do it manually or you want to download current version from Dropbox and simply move them to Sublime Text directory.

If you only want to get the preferences file. You can find it in `sublime/Preferences.sublime-settings`. Just copy it to `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User`.

Default configuration files are stored on [Dropbox](https://www.dropbox.com/sh/j4e32n62temz336/AACQH1Ufh9nN2hTPp_4WaBB1a?dl=0). To set everything just link provided files to proper directory on machine by:
```
ln -sfhv ~/Dropbox/Sublime/Installed\ Packages ~/Library/Application\ Support/Sublime\ Text\ 3/
ln -sfhv ~/Dropbox/Sublime/Packages ~/Library/Application\ Support/Sublime\ Text\ 3/
```

With this you should be ready to go with **Sublime Text 3**. If anything went wrong here's the **list of packages** but first install **Package Control**:

- access console by `ctrl+` ` or do it like human bing via _View_ :arrow_right: _Show Console_
- paste this snippet into console:  
    ```
    import urllib.request,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)
    ```

List of installed packages (_might be outdated_):

- BracketHighlighter
- DashDoc
- Emmet
- Git
- Markdown Preview
- MarkdownEditing
- MarkdownTOC
- Marked App Menu
- Monokai Extended
- Package Control
- Pretty JSON
- RSpec
- SideBarEnhancements
- sublimelint
- SublimeLinter-annotations
- SublimeLinter-json
- SublimeLinter-ruby
- SummitLinter
- Swift
- Tomorrow Color Schemes

Theme is set to [Tomorrow Night](https://github.com/ChrisKempson/Tomorrow-Theme) with **Menlo 12pt**.

## Xcode configuration

First of all install [Alcatraz](http://alcatraz.io) using:
```
curl -fsSL https://raw.githubusercontent.com/supermarin/Alcatraz/master/Scripts/install.sh | sh
```

Here's the list of **Xcode plugins** which you use:

- AdjustFontSize.xcplugin
- Alcatraz.xcplugin
- Auto-Importer.xcplugin
- Backlight.xcplugin
- ClangFormat.xcplugin
- DBSmartPanels.xcplugin
- DerivedData Exterminator.xcplugin
- FuzzyAutocomplete.xcplugin
- GitDiff.xcplugin
- HOStringSense.xcplugin
- IntelliPaste.xcplugin
- KSImageNamed.xcplugin
- MarvinPlugin.xcplugin
- NCSimulatorPlugin.xcplugin
- OMColorSense.xcplugin
- OMQuickHelp.xcplugin
- Open With Application.xcplugin
- PrettyPrintJSON.xcplugin
- QuickLocalization.xcplugin
- RealmPlugin.xcplugin
- SuggestedColors.xcplugin
- Tuna.xcplugin
- VVDocumenter-Xcode.xcplugin
- XCActionBar.xcplugin
- XcodeBoost.xcplugin
- XcodeColors.xcplugin
- XcodeWay.xcplugin
- Xcode_beginning_of_line.xcplugin

If some plugins doesn't work it's probably because of new Xcode version and you need to update **UUID**. You can simply do it by running script in this [Gist](https://gist.github.com/b70e2ff44f26677caa02)

Beside installing plugins you'll have to install defult **theme** and set some **properties** manually. Follow the steps listed below:

- **Fonts and Colors**:
    + `Tomorrow Night` theme can be installed via **Alcatraz**
- **Text Editing**:
    + Show **Line Numbers**
    + Page guide at column

Now let's move to configuring **Plugins**:

- **Backlight**:
    + line backlight (overlay)
    + Always backlight
    + Enable stroke
    + Enable round corners
    + Backlight color 5% opacity
- **Show colors under carret**
- **Enable string popover**

## Dock

Please see the screenshot below for the default **Dock** icons positioning. Feel free to do it whatever you like your icons grouped.

![](res/dock.png)

For **Documents** and **Downloads** directories in Dock I've set this options:

- Sort by **add date**
- Show as **directory**
- Show content **automaticaly**

## Third-party software and App Store

Other tools which cannot be istalled using  **Homebrew Cask** need to be installed manually. Most of them via App Store.
