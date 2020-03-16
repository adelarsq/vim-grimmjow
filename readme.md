# Vim Colorscheme: grimmjow

Light colorscheme for gvim, macvim and [neovim](https://github.com/neovim/neovim).

Main features:

* 256 color terminal support
* 24-bit color terminal support
* Support for several plugins

Optimized for the following languages:

* C/C++
* HTML (+ Django, JavaScript)
* Java
* LaTeX
* Python
* Ruby
* Vim

## Installation

### [Vim-Plug](https://github.com/junegunn/vim-plug)

1. Add this to your vimrc:

        Plug 'https://github.com/adelarsq/vim-grimmjow'
        colorscheme grimmjow

2. Run

        :PlugInstall

3. Restart Vim

### [Vundle](https://github.com/adelarsq/vim-grimmjow)

1. Add this to your vimrc:

        Bundle 'https://github.com/adelarsq/vim-grimmjow'

        colorscheme grimmjow
        set background=light

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

## 24-bit color terminal

To configure vim to use 24-bit colors use this config on .vimrc:

    if (has('termguicolors'))
        set termguicolors
    endif

## About

Explicitly supported plugins:

* [ale](https://github.com/w0rp/ale)
* [bufexplorer](https://github.com/jlanzarotta/bufexplorer)
* [clever-f.vim](https://github.com/rhysd/clever-f.vim)
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)
* [eclim](https://github.com/ervandew/eclim)
* [jedi-vim](https://github.com/davidhalter/jedi-vim)
* [keepeye.vim](https://github.com/soywod/keepeye.vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [quickfixsigns_vim](https://github.com/tomtom/quickfixsigns_vim)
* [rainbow](https://github.com/luochen1990/rainbow)
* [tagbar](https://github.com/majutsushi/tagbar)
* [undotree](https://github.com/mbbill/undotree)
* [vim-bookmarks](https://github.com/MattesGroeger/vim-bookmarks)
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
* [vim-matchmaker](https://github.com/qstrahl/vim-matchmaker)
* [vim-minimap](https://github.com/severin-lemaignan/vim-minimap)
* [vim-nerdtree-syntax-highlight](https://github.com/tiagofumo/vim-nerdtree-syntax-highlight)
* [vim-plugin-minibufexpl](https://github.com/weynhamz/vim-plugin-minibufexpl)
* [vim-signify](https://github.com/mhinz/vim-signify)
* [vim-sneak](https://github.com/justinmk/vim-sneak)
* [vim-startify](https://github.com/mhinz/vim-startify)
* [vim-which-key](https://github.com/liuchengxu/vim-which-key)

The following colorschemes were influential for this theme: [vim-kalisi](https://github.com/freeo/vim-kalisi), [blackboard](https://github.com/lisposter/vim-blackboard), [github](https://github.com/endel/vim-github-colorscheme), molokai, pyte and winter.

Thanks to https://github.com/godlygeek/csapprox, which helped greatly in
bringing 256 color terminal support to this colorscheme!

It contains only theme for light background.
The default colorscheme is *light*, as is Vims default setting, if you don't set the background manually.

Suggestions for improving support for other programming languages and plugins are welcome!

This colorscheme is licensed under the Apache 2.0 license.

