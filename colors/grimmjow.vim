"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Name:           grimmjow
" Author:         Adelar S. Queiroz
" Version:        0.0.11
" Last Change:    2016.05.24
" URL:            https://github.com/adelarsq/vim-grimmjow
" License:        Apache 2.0
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Settings
if !exists('g:grimmjow_recolor_quickfixsigns')
  let g:grimmjow_recolor_quickfixsigns = 1
endif

" the default scheme is 'light'
if &background == "dark"
  hi clear
  let g:colors_name = "grimmjow"

  hi Normal 	  guifg=#d0d0d0 guibg=#404042  gui=none

  hi Comment 	  guifg=#8a8a8a
  hi CommentURL   guifg=#6090c0 guibg=NONE gui=underline
  hi CommentEmail guifg=#6090c0 guibg=NONE gui=underline

  hi Constant 	  guifg=#ffaf00 gui=bold
  hi String 	  guifg=#ffc63f
  hi Character    guifg=#c85bff
  hi Number       guifg=#ffad3f
  hi Boolean 	  guifg=#94be54
  hi Float        guifg=#fff650
  
  hi ColorColumn      guibg=#303032 term=reverse ctermbg=12

  " HTML Closing tags </...> 
  " Vim variables
  hi Identifier       guifg=#29a3ac                   gui=none
  " HTML Starting tags <...>
  hi Function         guifg=#7ad6ff                   gui=none

  hi Statement 	      guifg=#94be54                   gui=bold
  hi Conditional      guifg=#7aa6c2                   gui=bold
  hi Repeat           guifg=#7aa6c2 guibg=NONE      gui=bold
  hi Label            guifg=#409a50                   gui=bold
  " operator cpp: sizeof()
  hi Operator         guifg=#658aa5 guibg=NONE      gui=none
  "html: special keywords in jscript: window log
  hi Keyword	      guifg=#adffdd                   gui=none
  hi Exception        guifg=#2080c0 guibg=NONE      gui=bold

  hi PreProc 	      guifg=#2288ee                   gui=bold
  hi Include 	      guifg=#2288ee                   gui=bold
  hi Define           guifg=#2288ee                   gui=bold
  hi Macro            guifg=#a68ad2                   gui=none
  hi PreCondit        guifg=#7aa6c2                   gui=none

  " vim: lots of links
  " c: int char void
  " html: class href id
  hi Type             guifg=#5d8fbe gui=none ctermfg=67
  hi StorageClass     guifg=#55aa85 gui=italic
  " c: struct
  " py:  self __name__ Error Exception   and is not
  hi Structure        guifg=#557a95 gui=none
  " cpp: static cast
  hi Typedef          guifg=#55aa85

  hi Tag              guifg=#00c0ff               gui=bold
  hi Delimiter        guifg=#7a9acd guibg=NONE    gui=none

  hi SpecialComment   guifg=#6090c0               gui=bold
  hi Debug            guifg=#ddb800 guibg=NONE    gui=bold

  hi Underlined       guifg=#b5b5b5 guibg=NONE    gui=underline

  " Misc syntax ###############################################################
  
  hi Todo             guifg=#fff63f guibg=#736a3f gui=bold

  hi Directory        guifg=#b5b5b5 guibg=NONE    gui=bold

  hi DiffAdd                        guibg=#384b38
  hi DiffChange                     guibg=#383a4b
  hi DiffText         guifg=#e0e0e0 guibg=#484898
  hi DiffDelete       guifg=#484848 guibg=#3b3b3b

  hi SpellBad         guisp=#e83030 gui=undercurl
  hi SpellCap         guisp=#476afc gui=undercurl
  hi SpellLocal       guisp=#48b040 gui=undercurl
  hi SpellRare        guisp=#eeeeee gui=undercurl

  " User interface ############################################################
  
  hi Search           guifg=#000000 guibg=#00875f gui=bold
  hi IncSearch        guifg=#f8cf00 guibg=#000000

  hi Error            guifg=#e5a5a5 guibg=#602020 gui=bold,underline
  hi ErrorMsg         guifg=#f5c5c5 guibg=#901010 gui=bold
  hi WarningMsg       guifg=#edc830 guibg=NONE    gui=none
  hi WildMenu         guifg=#000000 guibg=#A6DB29 gui=none
  hi Question         guifg=#000000 guibg=#A6DB29 gui=none
  hi MoreMsg          guifg=#000000 guibg=#A6DB29 gui=none
  hi ModeMsg          guifg=#000000 guibg=#A6DB29

  hi Cursor           guibg=#afd700 guifg=#121212
  hi CursorLineNr     guifg=#d0d0d0 guibg=#482020 gui=bold
  hi CursorLine       guibg=#4a4a4c
  hi CursorColumn     guibg=#4a4a4c
  hi MatchParen       guifg=#202020 guibg=#8fca24 gui=none

  hi Visual           guibg=#3a4d6e gui=none
  hi VisualNOS        guibg=#4a4d4e gui=none

  hi Pmenu 	          guifg=#b5b5b5 guibg=#303032
  hi PmenuSel         guifg=#222222 guibg=#A6DB29 gui=none
  hi PmenuSbar        guibg=#a0a0a0
  hi PmenuThumb       guibg=#555555

  hi SignColumn       guifg=#A6E22E guibg=#303032
  hi FoldColumn       guifg=#b0b8c0 guibg=#373d43 gui=bold
  hi Folded 	      guifg=#727780 guibg=#373d43 gui=none

  hi NonText          guifg=#958b7f guibg=#3a3a3a gui=none
  hi Conceal          guifg=#f6f3e8 guibg=#303030

  hi LineNr 	      guifg=#857b6f guibg=#303032 gui=none
  hi StatusLine       guifg=#b5b5b5 guibg=#222222 gui=none term=NONE cterm=NONE
  hi StatusLineNC     guifg=#857b6f guibg=#303032 gui=none

  hi VertSplit        guifg=#222222 guibg=#2b2b2b gui=none
  hi Title            guifg=#d0d0d0 guibg=NONE    gui=bold
  
  hi TabLine          guifg=#afd700 guibg=#005f00 gui=none
  hi TabLineSel       guifg=#005f00 guibg=#afd700 gui=none
  hi TabLineFill      guifg=#303030 guibg=#a0a0a0 gui=none

  " Language Specific ##########################################################
  
  " C
  hi link cType Type

  " Java
  hi javaScopeDecl    guifg=#1994d1
  hi javaClassDecl    guifg=#1994d1

  " Python (non-default syntax file)
  hi PythonOperator      guifg=#7aa6c2 gui=none
  hi pythonDocstring     guifg=#6a7a8d guibg=NONE gui=none
  hi pythonDoctest       guifg=#4a6a8d
  hi link pythonDocTest  pythonDoctest
  hi link pythonDocTest2 pythonDoctest

  " Embedded inside HTML <script>
  hi javaScript       guifg=#a5c5b5 guibg=NONE gui=none

  " htmldjango
  hi DjangoBlock         guifg=#20ba50            gui=none
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   SpecialChar

  " Markdown
  hi markdownUrl guifg=#0087ff gui=underline ctermfg=33 cterm=underline
  
  " Mail
  hi link mailHeader    Comment
  hi link mailSubject   Constant
  hi link mailURL	    CommentURL
  hi link mailEmail     PreCondit
  hi mailSubject   	    ctermfg=226	guifg=#ffff00
  hi mailQuoted1	    ctermfg=189	guifg=#d7d7ff
  hi mailQuoted2	    ctermfg=194 guifg=#d7ffd7
  hi mailQuoted3	    ctermfg=105 guifg=#8787ff
  hi mailQuoted4	    ctermfg=120	guifg=#87ff87
  hi mailQuoted5	    ctermfg=62	guifg=#5f5fd7
  hi mailQuoted6	    ctermfg=77	guifg=#5fd75f
  hi link mailSignature Comment

  " Plugins ####################################################################
  
  " https://github.com/rhysd/clever-f.vim
  hi CleverFDefaultLabel guibg=#5fd700 guifg=#404040 gui=bold ctermbg=76 ctermfg=238 cterm=bold

  " https://github.com/kien/ctrlp.vim
  hi CtrlPMatch       guifg=#000000 guibg=#f8cf00 gui=none

  " https://github.com/dyng/ctrlsf.vim
  hi CtrlsfLnumMatch guifg=#0087d7
  hi CtrlsfMatch     guibg=#ffd700 guifg=#000000
  
  " https://github.com/ervandew/eclim
  hi EclimError   guibg=#303030 guifg=#f92672
  hi EclimWarning guibg=#303030 guifg=#FFFF00
  hi EclimInfo    guibg=#303030 guifg=#afd700

  " https://github.com/davidhalter/jedi-vim
  hi jediFunction guibg=#303030 guifg=#767676 ctermbg=236 ctermfg=243
  hi jediFat      guibg=#303030 guifg=#afd700 gui=bold ctermbg=236 ctermfg=148 cterm=bold

  " https://github.com/scrooloose/nerdtree
  hi NERDTreeDir      guifg=#5d8fbe ctermfg=67
  hi link NERDTreeDirSlash NERDTreeDir
  hi NERDTreeOpenable guifg=#5d8fbe guibg=#404042 gui=bold ctermfg=70 ctermbg=22 cterm=bold
  hi NERDTreeClosable guifg=#5d8fbe guibg=#404042 gui=bold ctermfg=70 ctermbg=22 cterm=bold
  hi NERDTreePart     guifg=#707070 ctermfg=243
  hi NERDTreePartFile guifg=#FFFFFF gui=bold ctermfg=231 cterm=bold
  hi NERDTreeLinkFile guifg=#ffaf00 ctermfg=214
  hi NERDTreeLinkDir  guifg=#ffaf00 ctermfg=214
  hi NERDTreeBookmarkName gui=bold ctermbg=4 guifg=#afd700
  hi NERDTreeBookmark     ctermbg=4 guifg=#797772
  hi NERDTreeBookmarksLeader guifg=#404042 guibg=#404042

  " https://github.com/tomtom/quickfixsigns_vim
  if g:grimmjow_recolor_quickfixsigns == 1
     hi QFSignsMark       guifg=#ffc63f guibg=#202020 gui=bold ctermfg=220 ctermbg=234 cterm=bold
     hi QFSignsDiffAdd    guifg=#108f4f guibg=#324832 ctermfg=35 ctermbg=22
     hi QFSignsDiffChange guifg=#336fdf guibg=#20385f ctermfg=27 ctermbg=17
     hi QFSignsDiffDelete guifg=#d75f5f guibg=#872222 ctermfg=167 ctermbg=88
     let g:quickfixsigns#marks#texthl = "QFSignsMark"
     let g:quickfixsigns#vcsdiff#highlight = {'DEL': 'QFSignsDiffDelete', 'ADD': 'QFSignsDiffAdd', 'CHANGE': 'QFSignsDiffChange'}
  endif
  
  " https://github.com/luochen1990/rainbow
  let g:rainbow_conf = {
  \	'guifgs': ['royalblue3', 'darkorange3', '#108f4f', 'firebrick'],
  \	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \}

  " https://github.com/scrooloose/syntastic
  hi SyntasticErrorSign  guifg=#f92672 guibg=#f5f5f5
  hi SyntasticWarningSign guifg=#afd700 guibg=#f5f5f5

  " https://github.com/majutsushi/tagbar
  hi link TagbarSignature Comment
  hi TagbarScope      guifg=#0087d7 gui=bold ctermfg=32 cterm=bold
  hi TagbarType       guifg=#66b600 gui=bold ctermfg=70 cterm=bold
  hi TagbarKind       guifg=#7ad6ff ctermfg=117

  " https://github.com/Lokaltog/vim-easymotion
  hi EasyMotionTarget        ctermbg=none ctermfg=green guifg=#A6E22E
  hi EasyMotionTarget2First  ctermbg=none ctermfg=green guifg=#F92672
  hi EasyMotionTarget2Second ctermbg=none ctermfg=green guifg=#1994d1
  
  " https://github.com/nathanaelkane/vim-indent-guides
  hi IndentGuidesEven guifg=#a0a0a0 guibg=#797772
  hi IndentGuidesOdd  guifg=#797772 guibg=#a0a0a0

  " https://github.com/qstrahl/vim-matchmaker
  hi Matchmaker gui=underline

  " https://github.com/weynhamz/vim-plugin-minibufexpl
  hi MBENormal               guifg=#586e75 guibg=#404042
  hi MBEChanged              guifg=#79b541 guibg=#404042
  hi MBEVisibleNormal        guifg=#586e75 guibg=#404042
  hi MBEVisibleChanged       guifg=#79b541 guibg=#404042
  hi MBEVisibleActiveNormal  guifg=#005f00 guibg=#afd700
  hi MBEVisibleActiveChanged guifg=#005f00 guibg=#afd700

  " https://github.com/kshenoy/vim-signature
  hi SignatureMarkText guifg=#0087d7 guibg=#404042

  " https://github.com/mhinz/vim-signify
  hi SignifySignAdd             guifg=#008700 guibg=#404042
  hi SignifySignChange          guifg=#ff5f00 guibg=#404042
  hi SignifySignChangeDelete    guifg=#ff5f00 guibg=#404042
  hi SignifySignDelete          guifg=#ff0000 guibg=#404042
  hi SignifySignDeleteFirstLine guifg=#ff0000 guibg=#404042

  " https://github.com/justinmk/vim-sneak
  hi SneakPluginTarget guibg=#ff5f00 guifg=#ffff00 ctermbg=202 ctermfg=226
  hi link SneakPluginScope Visual

  " https://github.com/mhinz/vim-startify
  hi StartifyBracket  guifg=#5DC2D6 guibg=#404042 gui=bold ctermfg=32 ctermbg=236 cterm=bold
  hi StartifyFile     guifg=#3c960f ctermfg=39
  hi StartifyHeader   guifg=#1094a0 ctermfg=39
  hi StartifyNumber   ctermfg=215 guifg=#1994d1 guibg=#404042 gui=bold ctermfg=40 ctermbg=236 cterm=bold
  hi StartifyPath     guifg=#66b600 ctermfg=246
  hi StartifySlash    guifg=#66b600 ctermfg=253
  hi StartifySpecial  guifg=#b2b2b2 guibg=#606060 ctermfg=249 ctermbg=241
  hi link StartifyFooter StartifyHeader

  " https://github.com/mbbill/undotree
  hi UndotreeSavedBig ctermfg=245   guifg=#11AF46
  hi UndotreeSavedSmall ctermfg=240 guifg=#F1266F

  " 256 Color Terminal (dark) ##################################################
  if &t_Co > 255
    hi Normal ctermbg=238 ctermfg=252
    hi CursorLine ctermbg=239 term=none cterm=none
    hi CursorColumn ctermbg=239
    hi NonText ctermbg=237 ctermfg=102
    hi Conceal ctermbg=237 ctermfg=230
    hi Comment ctermfg=245
    hi CommentURL cterm=underline ctermfg=68
    hi CommentEmail cterm=underline ctermfg=68
    hi Constant cterm=bold ctermfg=214
    hi String ctermfg=220
    hi Character ctermfg=171
    hi Number ctermfg=214
    hi Boolean ctermfg=149
    hi Float ctermfg=227
    hi Identifier ctermfg=37 cterm=none
    hi Function ctermfg=117
    hi Statement cterm=bold ctermfg=149
    hi Conditional cterm=bold ctermfg=110
    hi Repeat cterm=bold ctermfg=110
    hi Label cterm=bold ctermfg=35
    hi Operator ctermfg=67
    hi Keyword ctermfg=158
    hi Exception cterm=bold ctermfg=32
    hi PreProc cterm=bold ctermfg=33
    hi Include cterm=bold ctermfg=33
    hi Define cterm=bold ctermfg=33
    hi Macro ctermfg=140
    hi PreCondit ctermfg=110
    hi Type ctermfg=67
    hi StorageClass ctermfg=71 cterm=none
    hi Structure ctermfg=67
    hi Typedef ctermfg=72
    hi Special ctermfg=194 cterm=none
    hi SpecialChar ctermfg=69 cterm=none
    hi Tag cterm=bold ctermfg=39
    hi Delimiter ctermfg=104
    hi SpecialComment cterm=bold ctermfg=67
    hi Debug cterm=bold ctermfg=184
    hi Underlined cterm=underline ctermfg=249
    hi Todo cterm=bold ctermbg=94 ctermfg=227
    hi Directory cterm=bold ctermfg=252
    hi DiffAdd ctermbg=22
    hi DiffChange ctermbg=239
    hi DiffText cterm=bold ctermbg=18 ctermfg=254
    hi DiffDelete cterm=none ctermbg=237 ctermfg=238
    hi SpellBad cterm=undercurl ctermfg=203 ctermbg=none
    hi SpellCap cterm=undercurl ctermfg=33 ctermbg=none
    hi SpellLocal cterm=undercurl ctermfg=51 ctermbg=none
    hi SpellRare cterm=undercurl ctermfg=205 ctermbg=none
    hi Search cterm=bold ctermbg=148 ctermfg=16
    hi IncSearch cterm=reverse ctermbg=16 ctermfg=220
    hi Error cterm=underline ctermbg=52 ctermfg=217
    hi ErrorMsg cterm=bold ctermbg=88 ctermfg=224
    hi WarningMsg ctermfg=221
    hi WildMenu ctermbg=148 ctermfg=16
    hi Question ctermbg=148 ctermfg=16
    hi MoreMsg ctermbg=148 ctermfg=16
    hi ModeMsg cterm=bold ctermbg=148 ctermfg=16
    hi Cursor ctermbg=160 ctermfg=231
    hi CursorLineNr cterm=bold ctermbg=52 ctermfg=252
    hi MatchParen ctermbg=112 ctermfg=234
    hi Visual ctermbg=24
    hi VisualNOS ctermbg=239
    hi Pmenu ctermbg=236 ctermfg=249
    hi PmenuSel ctermbg=148 ctermfg=235
    hi PmenuSbar ctermbg=247
    hi PmenuThumb ctermbg=240
    hi SignColumn ctermbg=236 ctermfg=148
    hi FoldColumn cterm=bold ctermbg=236 ctermfg=145
    hi Folded ctermbg=236 ctermfg=243
    hi LineNr ctermbg=236 ctermfg=244
    hi StatusLine ctermbg=235 ctermfg=230 term=NONE cterm=NONE
    hi StatusLineNC ctermbg=236 ctermfg=244 term=NONE cterm=NONE
    hi VertSplit ctermbg=235 ctermfg=234
    hi Title cterm=bold ctermfg=252
    hi TabLine ctermbg=22 ctermfg=148 cterm=none
    hi TabLineSel ctermbg=148 ctermfg=22 cterm=none
    hi TabLineFill ctermbg=247 ctermfg=236 cterm=none
    hi PythonOperator ctermfg=110
    hi pythonDocstring ctermfg=67
    hi pythonDoctest ctermfg=97
    hi javaScript ctermfg=151
    hi DjangoBlock ctermfg=35 cterm=none
    hi CtrlPMatch ctermbg=220 ctermfg=16
    " for the reason behind this, see
    " https://github.com/tomasr/molokai/issues/22
    set background=dark
  endif
else
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " Light
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  hi clear
  let g:colors_name = "grimmjow"

  hi Normal           guifg=#444444 guibg=#f5f5f5 gui=NONE

  " Syntax ####################################################################

  hi Comment          guifg=#70a0d0 guibg=NONE    gui=NONE
  " TODO avoid background glitch 
  hi CommentURL       guifg=#70a0ff guibg=NONE    gui=underline
  " TODO avoid background glitch 
  hi CommentEmail     guifg=#70a0ff guibg=NONE    gui=underline
  hi SpecialComment   guifg=#6090c0               gui=bold

  hi Constant         guifg=#0000af guibg=NONE    gui=bold
  hi String           guifg=#0060a0 guibg=NONE
  hi Character        guifg=#9054c7 guibg=NONE    gui=bold
  hi Number           guifg=#0070c0 guibg=NONE
  hi Boolean          guifg=#66b600 guibg=NONE    gui=none
  hi Float            guifg=#00a0a0 guibg=NONE

  hi Identifier       guifg=#202090 guibg=NONE    gui=none
  hi Function         guifg=#1177dd               gui=none

  hi Statement        guifg=#66b600 guibg=NONE    gui=bold
  hi Conditional      guifg=#1177dd guibg=NONE    gui=bold
  hi Repeat           guifg=#1177dd guibg=NONE    gui=bold
  hi Label            guifg=#007700               gui=bold
  hi Operator         guifg=#274aac guibg=NONE    gui=none
  hi Exception        guifg=#005090 guibg=NONE    gui=bold

  hi PreProc          guifg=#d80050 guibg=NONE    gui=bold
  hi Include          guifg=#d80050 guibg=NONE    gui=bold
  hi Define           guifg=#d80050 guibg=NONE    gui=bold
  hi Macro            guifg=#d80000 guibg=NONE    gui=bold
  hi PreCondit        guifg=#1177dd               gui=none

  hi Type             guifg=#f47300 guibg=NONE    gui=none

  hi StorageClass     guifg=#0000d7               gui=italic
  hi Structure        guifg=#274aac guibg=NONE    gui=none
  hi Typedef          guifg=#274aac               gui=italic

  hi Tag              guifg=#0010ff               gui=bold
  hi Delimiter        guifg=#d80050 guibg=NONE    gui=none
  hi Debug            guifg=#ddb800 guibg=NONE    gui=bold

  hi Underlined       guifg=#202020 guibg=NONE    gui=underline

  hi Error            guifg=#d80000 guibg=#d8d0d0 gui=bold,underline
  hi ErrorMsg         guifg=#d80000 guibg=#d8d0d0 gui=bold


  " Misc syntax ###############################################################
  
  hi Todo             guifg=#00af5f guibg=#f5f5f5 gui=bold
 
  hi Directory        guifg=#0060a0 guibg=NONE    gui=bold
  " html: special keywords in jscript: window log 
  hi Keyword          guifg=#66b600               gui=none
  hi Title            guifg=#1060a0 guibg=NONE    gui=bold
  
  hi Special	      guifg=#3a3a3a gui=none
  hi SpecialChar      guifg=#6a96ff gui=bold
  hi SpecialKey	      guifg=#999999 guibg=#f5f7f5 ctermbg=243 ctermfg=237
  hi NonText          guifg=#999999 guibg=#f5f5f5 gui=none
 
  hi Conceal          guifg=#303030 guibg=#e0e8e0

  hi ColorColumn      guibg=#f0f0f0 term=reverse ctermbg=254

  hi DiffAdd                        guibg=#ddffdd 
  hi DiffChange                     guibg=#e8e8e8 
  hi DiffText         guifg=#000055 guibg=#ddddff
  hi DiffDelete       guifg=#eecccc guibg=#ffdddd

  hi SpellBad         guisp=#d80000 gui=undercurl
  hi SpellCap         guisp=#274aac gui=undercurl
  hi SpellLocal       guisp=#006600 gui=undercurl
  hi SpellRare        guisp=#555555 gui=undercurl

  " User interface ############################################################

  hi Visual           guifg=#ffffff guibg=#398df0 gui=NONE
  hi VisualNOS                      guibg=#d8d8d8 gui=none

  hi Cursor           guifg=#F5F5F5 guibg=#444444 gui=NONE
  hi CursorLineNr     guifg=#000000 guibg=#f5f5f5 gui=bold
  hi Cursorline                     guibg=#eaeaea
  hi CursorColumn                   guibg=#eaeaea
  hi LineNr           guifg=#707070 guibg=#f5f5f5 gui=NONE
  hi MatchParen       guifg=#ffffff guibg=#ffd030 gui=none

  hi Search           guifg=#000000 guibg=#ffff5f gui=bold
  hi IncSearch        guifg=#f8cf00 guibg=#000000

  hi StatusLine       guifg=#e0e0e0 guibg=#707070 gui=NONE
  hi StatusLineNC     guifg=#e0e0e0 guibg=#a0a0a0 gui=NONE
  hi Folded           guifg=#707070 guibg=#e8e8e8 gui=NONE
  hi FoldColumn       guifg=#707070 guibg=#b0b0b0 gui=bold

  hi WildMenu         guifg=#000000 guibg=#A6DB29 gui=none
  hi Question         guifg=#000000 guibg=#A6DB29 gui=none
  hi MoreMsg          guifg=#000000 guibg=#A6DB29 gui=none

  hi ModeMsg          guifg=#000000 guibg=#A6DB29
  hi WarningMsg       guifg=#d82020 guibg=NONE    gui=bold

  hi TabLine          guifg=#afd700 guibg=#005f00 gui=none
  hi TabLineSel       guifg=#005f00 guibg=#afd700 gui=none
  hi TabLineFill      guifg=#303030 guibg=#a0a0a0 gui=none

  hi VertSplit        guifg=#a0a0a0 guibg=#f5f5f5 gui=NONE
  hi SignColumn       guifg=#005f00 guibg=#f5f5f5 

  hi Pmenu        guifg=#ffffff   guibg=#323232
  hi PmenuSel     guifg=#ffffff   guibg=#1994d1
  hi PmenuSbar    guifg=#323232   guibg=#323232
  hi PmenuThumb   guifg=#646464   guibg=#646464   gui=none

  " hi Visual                         guibg=#d0eeff gui=NONE
  " Language Specific ##########################################################
  
  " C
  hi cType guifg=#66b600 ctermfg=70
  hi link  javaType cType
  hi link  TexType Function

  " Java
  hi javaScopeDecl    guifg=#0167dd
  hi javaClassDecl    guifg=#0167dd

  " Python (non-default syntax file)
  hi PythonOperator   guifg=#0167dd               gui=none
  hi pythonDocstring  guifg=#004B84 guibg=NONE    gui=none
  hi pythonDoctest    guifg=#0000af
  hi link pythonDocTest pythonDoctest
  hi link pythonDocTest2 pythonDoctest

  "  Ruby
  hi rubyInterpolation      guifg=#ff4040 guibg=NONE gui=NONE
  hi rubyMethodBlock        guifg=#ffb28d guibg=NONE gui=NONE
  hi rubyCurlyBlock         guifg=#f64a8a guibg=NONE gui=NONE
  hi rubyDoBlock            guifg=#f64a8a guibg=NONE gui=NONE
  hi rubyBlockExpression    guifg=#f64a8a guibg=NONE gui=NONE
  hi rubyArrayDelimiter     guifg=#00bcbc guibg=NONE gui=NONE

  " Embedded inside HTML <script>
  hi javaScript       guifg=#486050 guibg=NONE    gui=none

  " htmldjango
  hi DjangoBlock      guifg=#005f00               gui=bold
  hi link djangoTagBlock DjangoBlock
  hi link djangoVarBlock DjangoBlock
  hi link djangoFilter   Typedef

  " Markdown
  hi markdownUrl guifg=#005faf gui=underline ctermfg=25 cterm=underline

  " Mail
  hi link mailHeader  Comment
  hi link mailSubject Constant
  hi link mailURL	  CommentURL
  hi link mailEmail   Identifier
  hi mailQuoted1	  ctermfg=17  guifg=#00005f
  hi mailQuoted2	  ctermfg=22  guifg=#005f00
  hi mailQuoted3	  ctermfg=19  guifg=#0000af
  hi mailQuoted4	  ctermfg=34  guifg=#00af00
  hi mailQuoted5	  ctermfg=21  guifg=#0000ff
  hi mailQuoted6	  ctermfg=71  guifg=#5faf5f
  hi mailQuoted7	  ctermfg=21  guifg=#5f5faf
  hi mailQuoted8	  ctermfg=101 guifg=#87875f
  hi mailSignature    ctermfg=209 guifg=#ff0000

  " Plugins ####################################################################

  " https://github.com/jlanzarotta/bufexplorer
  hi bufExplorerHidBuf guifg=#878787
  hi bufExplorerAltBuf guifg=#878787 gui=bold
  hi bufExplorerActBuf guifg=#005faf
  hi bufExplorerCurBuf guifg=#005faf gui=bold

  " https://github.com/rhysd/clever-f.vim
  hi CleverFDefaultLabel guibg=#ffd700 guifg=#000000 gui=bold ctermbg=220 ctermfg=16 cterm=bold

  " https://github.com/kien/ctrlp.vim
  hi link CtrlPMatch Search

  " https://github.com/dyng/ctrlsf.vim
  hi CtrlsfLnumMatch guifg=#0087d7
  hi CtrlsfMatch     guibg=#ffd700 guifg=#000000
  
  " https://github.com/ervandew/eclim
  hi EclimError   guibg=#f5f5f5 guifg=#f92672
  hi EclimWarning guibg=#f5f5f5 guifg=#FFFF00
  hi EclimInfo    guibg=#f5f5f5 guifg=#afd700
  
  " https://github.com/davidhalter/jedi-vim
  hi jediFunction     guibg=#878787 guifg=#f0f0f0 ctermbg=244 ctermfg=255
  hi jediFat          guibg=#878787 guifg=#afd700 gui=bold ctermbg=244 ctermfg=148 cterm=bold

  " https://github.com/scrooloose/nerdtree
  hi NERDTreeDir          guifg=#0087d7 gui=bold ctermfg=32 cterm=bold
  hi link NERDTreeDirSlash NERDTreeDir
  hi NERDTreeOpenable     guifg=#0087d7 guibg=#f5f7f5 gui=bold ctermfg=28 ctermbg=255 cterm=bold
  hi NERDTreeClosable     guifg=#0087d7 guibg=#f5f7f5 gui=bold ctermfg=28 ctermbg=255 cterm=bold
  hi NERDTreePart         guifg=#c0c0c0 ctermfg=250
  hi NERDTreePartFile     guifg=#000000 gui=bold ctermfg=16 cterm=bold
  hi NERDTreeLinkFile     guifg=#ffaf00 ctermfg=214
  hi NERDTreeLinkDir      guifg=#ffaf00 ctermfg=214
  hi NERDTreeBookmarkName gui=bold ctermbg=255 guifg=#07281c
  hi NERDTreeBookmark     ctermbg=255 guifg=#797772
  hi NERDTreeBookmarksLeader guifg=#f5f7f5 guibg=#f5f7f5
  " NERDTress File highlighting
  " Fonte: https://github.com/scrooloose/nerdtree/issues/433#issuecomment-92590696
  function! GrimmjowNERDTreeHighlightFile(extension, fg, guifg)
      exec 'au filetype nerdtree highlight ' . a:extension .' ctermfg='. a:fg .' guifg='. a:guifg
      exec 'au filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
  endfunction
  call GrimmjowNERDTreeHighlightFile('java' , 'cyan'    , '#d80050')
  call GrimmjowNERDTreeHighlightFile('sql'  , 'cyan'    , '#a444ff')

  " https://github.com/tomtom/quickfixsigns_vim
  if g:grimmjow_recolor_quickfixsigns == 1
       hi QFSignsMark       guifg=#005faf guibg=#a0a0a0 gui=bold ctermfg=25 ctermbg=247 cterm=bold
       hi QFSignsDiffAdd    guifg=#008700 guibg=#5fd75f ctermfg=28 ctermbg=77
       hi QFSignsDiffChange guifg=#5f5fd7 guibg=#afafff ctermfg=62 ctermbg=147
       hi QFSignsDiffDelete guifg=#ff5f00 guibg=#ffafaf ctermfg=202 ctermbg=217
       let g:quickfixsigns#marks#texthl = "QFSignsMark"
       let g:quickfixsigns#vcsdiff#highlight = {'DEL': 'QFSignsDiffDelete', 'ADD': 'QFSignsDiffAdd', 'CHANGE': 'QFSignsDiffChange'}
  endif

  " https://github.com/luochen1990/rainbow
  let g:rainbow_conf = {
  \	'guifgs': ['royalblue3', 'darkorange3', '#108f4f', 'firebrick'],
  \	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
  \}

  " https://github.com/scrooloose/syntastic
  hi SyntasticErrorSign  guifg=#f92672 guibg=#f5f5f5
  hi SyntasticWarningSign guifg=#005faf guibg=#f5f5f5

  " https://github.com/majutsushi/tagbar
  hi link TagbarSignature Comment
  hi TagbarScope        guifg=#0087d7 gui=bold ctermfg=32 cterm=bold
  hi TagbarType         guifg=#66b600 gui=bold ctermfg=70 cterm=bold
  hi TagbarKind         guifg=#0087d7 ctermfg=21
  hi TagbarAccessPublic guifg=#66b600  
  
  " https://github.com/Lokaltog/vim-easymotion
  hi EasyMotionTarget        ctermbg=none ctermfg=green guifg=#108f4f gui=bold
  hi EasyMotionTarget2First  ctermbg=none ctermfg=green guifg=#F92672 gui=bold
  hi EasyMotionTarget2Second ctermbg=none ctermfg=green guifg=#1994d1 gui=bold
  
  " https://github.com/nathanaelkane/vim-indent-guides
  hi IndentGuidesEven guifg=#dcdedc guibg=#e9e9e9 
  hi IndentGuidesOdd  guifg=#e9e9e9 guibg=#dcdedc

  " https://github.com/qstrahl/vim-matchmaker
  hi Matchmaker gui=underline

  " https://github.com/weynhamz/vim-plugin-minibufexpl
  hi MBENormal               guifg=#586e75 guibg=#c9c4c4
  hi MBEChanged              guifg=#79b541 guibg=#c9c4c4
  hi MBEVisibleNormal        guifg=#586e75 guibg=#c9c4c4
  hi MBEVisibleChanged       guifg=#79b541 guibg=#c9c4c4
  hi MBEVisibleActiveNormal  guifg=#005f00 guibg=#afd700
  hi MBEVisibleActiveChanged guifg=#005f00 guibg=#afd700

  " https://github.com/kshenoy/vim-signature
  hi SignatureMarkText guifg=#0087d7 guibg=#f5f5f5

  " https://github.com/mhinz/vim-signify
  hi SignifySignAdd             guifg=#008700 guibg=#f5f5f5
  hi SignifySignChange          guifg=#ff5f00 guibg=#f5f5f5
  hi SignifySignChangeDelete    guifg=#ff5f00 guibg=#f5f5f5
  hi SignifySignDelete          guifg=#ff0000 guibg=#f5f5f5
  hi SignifySignDeleteFirstLine guifg=#ff0000 guibg=#f5f5f5

  " https://github.com/justinmk/vim-sneak
  hi SneakPluginTarget guibg=#ffaf00 guifg=#ffff00 gui=bold ctermbg=214 ctermfg=226 cterm=bold
  hi link SneakPluginScope Visual

  " https://github.com/mhinz/vim-startify
  hi StartifyBracket ctermfg=240 guifg=#5DC2D6 guibg=NONE gui=bold ctermfg=45 ctermbg=255 cterm=bold
  hi StartifyFile    ctermfg=26  guifg=#008700 gui=bold
  hi StartifyHeader  ctermfg=203 guifg=#1060a0
  hi StartifyNumber  ctermfg=215 guifg=#005faf guibg=NONE gui=bold ctermfg=240 ctermbg=255 cterm=bold
  hi StartifyPath    ctermfg=245 guifg=#66b600
  hi StartifySlash   ctermfg=240 guifg=#66b600
  hi StartifySpecial  guifg=#666666 guibg=#d7d7d7 ctermfg=242 ctermbg=252
  hi link StartifyFooter StartifyHeader

  " https://github.com/mbbill/undotree
  hi UndotreeSavedBig ctermfg=245   guifg=#11AF46
  hi UndotreeSavedSmall ctermfg=240 guifg=#F1266F

  " 256 Color Terminal (light) ################################################
  if &t_Co > 255
    hi Normal ctermbg=255 ctermfg=16
    hi Comment ctermfg=110
    hi CommentURL cterm=underline ctermfg=75
    hi CommentEmail cterm=underline ctermfg=75
    hi SpecialComment cterm=bold ctermfg=67
    hi Constant cterm=bold ctermfg=19
    hi String ctermfg=24
    hi Character ctermfg=98 cterm=bold
    hi Number ctermfg=25
    hi Boolean ctermfg=70
    hi Float ctermfg=36
    hi Identifier ctermfg=18
    hi Function ctermfg=32
    hi Statement cterm=bold ctermfg=70
    hi Conditional cterm=bold ctermfg=32
    hi Repeat cterm=bold ctermfg=32
    hi Label cterm=bold ctermfg=28
    hi Operator ctermfg=25
    hi Exception cterm=bold ctermfg=24
    hi PreProc cterm=bold ctermfg=161
    hi Include cterm=bold ctermfg=161
    hi Define ctermfg=161
    hi Macro cterm=bold ctermfg=160
    hi PreCondit ctermfg=32
    hi Type ctermfg=202
    hi StorageClass cterm=none ctermfg=20
    hi Structure ctermfg=25
    hi Typedef ctermfg=25
    hi Special cterm=bold ctermfg=214
    hi SpecialChar cterm=bold ctermfg=197
    hi Tag cterm=bold ctermfg=21
    hi Delimiter ctermfg=161
    hi Debug cterm=bold ctermfg=178
    hi Underlined cterm=underline ctermfg=234
    hi Error cterm=underline ctermbg=252 ctermfg=160
    hi ErrorMsg cterm=bold ctermbg=188 ctermfg=160
    hi Todo cterm=bold ctermbg=226 ctermfg=16
    hi Directory cterm=bold ctermfg=25
    hi Keyword ctermfg=70
    hi Title cterm=bold ctermfg=25
    hi NonText ctermbg=255 ctermfg=16
    hi Conceal ctermbg=253 ctermfg=236
    hi DiffAdd ctermbg=194
    hi DiffChange ctermbg=254
    hi DiffText cterm=bold ctermbg=189 ctermfg=17
    hi DiffDelete cterm=bold ctermbg=224 ctermfg=252
    hi SpellBad cterm=undercurl ctermfg=196
    hi SpellCap cterm=undercurl ctermfg=20
    hi SpellLocal cterm=undercurl ctermfg=28
    hi SpellRare cterm=undercurl ctermfg=240
    hi Visual ctermbg=153
    hi VisualNOS ctermbg=253
    hi Cursor ctermbg=196 ctermfg=231
    hi CursorLineNr cterm=bold ctermbg=255 ctermfg=16
    hi CursorLine ctermbg=254 cterm=none
    hi CursorColumn ctermbg=254
    hi MatchParen ctermbg=221 ctermfg=231
    hi Search cterm=bold ctermbg=148 ctermfg=16
    hi IncSearch cterm=reverse ctermbg=16 ctermfg=220
    hi LineNr ctermbg=255 ctermfg=242
    hi StatusLine ctermfg=254 ctermbg=242 term=NONE cterm=NONE
    hi StatusLineNC ctermbg=247 ctermfg=254 term=NONE cterm=NONE
    hi VertSplit ctermbg=247 ctermfg=247
    hi Folded ctermbg=254 ctermfg=242
    hi FoldColumn cterm=bold ctermbg=145 ctermfg=242
    hi WildMenu ctermbg=148 ctermfg=16
    hi Question ctermbg=148 ctermfg=16
    hi MoreMsg ctermbg=148 ctermfg=16
    hi ModeMsg cterm=bold ctermbg=148 ctermfg=16
    hi WarningMsg cterm=bold ctermfg=160
    hi TabLine ctermbg=22 ctermfg=148 cterm=none
    hi TabLineSel ctermbg=148 ctermfg=22 cterm=none
    hi TabLineFill ctermbg=247 ctermfg=236 cterm=none
    hi SignColumn ctermbg=255 ctermfg=148
    hi Pmenu ctermbg=254 ctermfg=16
    hi PmenuSel cterm=bold ctermbg=148 ctermfg=16
    hi PmenuSbar ctermbg=247
    hi PmenuThumb ctermbg=240
    hi PythonOperator ctermfg=26
    hi pythonDocstring ctermfg=24
    hi pythonDoctest ctermfg=19
    hi javaScript ctermfg=59
    hi DjangoBlock cterm=bold ctermfg=22
  endif
endif


