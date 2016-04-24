Vim Colorscheme: grimmjow
=========================

Version 0.0.1

Based on [vim-kalisi](https://github.com/freeo/vim-kalisi) theme.

The colorscheme with GVim, MacVim and [*neovim*](https://github.com/neovim/neovim).

Main features:

* Dark Theme
* Light Theme
* 256 color terminal support
* Support for several plugins

Optimized for the following languages:

* C/C++
* HTML (+ Django, JavaScript)
* LaTeX
* Python
* Vim

## Installation

### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add this to your vimrc:

        Plug 'https://github.com/adelarsq/vim-grimmjow'

        colorscheme grimmjow
        set background=light
        " or 
        set background=dark
        " if you don't set the background, the light theme will be used

2. Run

        :PlugInstall

3. Restart Vim

### [Vundle](https://github.com/adelarsq/vim-grimmjow)

1. Add this to your vimrc:

        Bundle 'https://github.com/adelarsq/vim-grimmjow'

        colorscheme grimmjow
        set background=light
        " or 
        set background=dark
        " if you don't set the background, the light theme will be used

2. Run

        :BundleInstall

3. Restart Vim

## 256 color terminal

1. Make sure [your terminal](http://fedoraproject.org/wiki/Features/256_Color_Terminals#Terminal_256_color_support_list) supports 256 colors

2. In addition to the installation, add this to your vimrc:

        set t_Co=256

        " in case t_Co alone doesn't work, add this as well:
        let &t_AB="\e[48;5;%dm"
        let &t_AF="\e[38;5;%dm"

About
======

Explicitly supported plugins:

* [clever-f.vim](https://github.com/rhysd/clever-f.vim)
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [eclim](https://github.com/ervandew/eclim)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [vim-matchmaker](https://github.com/qstrahl/vim-matchmaker)
* [vim-plugin-minibufexpl](https://github.com/weynhamz/vim-plugin-minibufexpl)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [quickfixsigns_vim](https://github.com/tomtom/quickfixsigns_vim)
* [vim-sneak](https://github.com/justinmk/vim-sneak)
* [vim-startify](https://github.com/mhinz/vim-startify)
* [tagbar](https://github.com/majutsushi/tagbar)
* [jedi-vim](https://github.com/davidhalter/jedi-vim)

I love the [vim-kalisi](https://github.com/freeo/vim-kalisi) theme, but need
some changes for my own needs. 

The following colorschemes were influential for this theme: vim-kalisi, blackboard, github, molokai, pyte and winter.

Thanks to https://github.com/godlygeek/csapprox, which helped greatly in
bringing 256 color terminal support to this colorscheme!

Suggestions for improving support for other programming languages and plugins are welcome!

It contains two themes, one for each background setting (*light* and *dark*).
The default colorscheme is *light*, as is Vims default setting, if you don't set the background manually.

Following the **neovim** project, this colorscheme is licensed under the Apache 2.0 license.
