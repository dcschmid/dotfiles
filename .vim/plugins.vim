filetype off                  				" required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'           "let Vundle manage Vundle, required
Plugin 'cocopon/iceberg.vim'            "A dark blue color theme
Plugin 'majutsushi/tagbar'              "displays tags in a window, ordered by scope
Plugin 'skwp/greplace.vim'              "Global search and replace
Plugin 'tpope/vim-surround'             "quoting/parenthesizing made simple
Plugin 'MarcWeber/vim-addon-mw-utils'   "needed for vim-snipmate
Plugin 'tomtom/tlib_vim'                "needed for vim-snipmate
Plugin 'garbas/vim-snipmate'            "TextMate snippets feature in vim
Plugin 'ervandew/supertab'              "Perform all your vim insert mode completions with tab
Plugin 'tpope/vim-fugitive'             "A git wrapper
Plugin 'w0rp/ale'                       "Asynchronous Lint Engine
Plugin 'junegunn/vim-easy-align'        "A simple easy to use vim alignment plugin
Plugin 'itchyny/lightline.vim'          "statusline/tabline for vim
Plugin 'hallzy/lightline-iceberg'       "Lightline color theme
Plugin 'sjl/gundo.vim'                  "visualize your vim undo
Plugin 'ntpeters/vim-better-whitespace' "Better whitespace highlighting for Vim
Plugin 'airblade/vim-gitgutter'         "A Vim plugin shows a git diff in the gutter and stages/undoes hunks
Plugin 'chrisbra/vim-autoread'          "Use tail -f on a buffer and append new content
Plugin 'editorconfig/editorconfig-vim'  "EditorConfig plugin for vim
Plugin 'ctrlpvim/ctrlp.vim'             "Fuzzy File buffer,mru,tag ...finder
Plugin 'rking/ag.vim'                   "plugin for the_silver_surfer

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PHP, Laravel, Symfony
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'StanAngeloff/php.vim'           "Up-to-date php syntax file
Plugin 'arnaud-lb/vim-php-namespace'    "types use statements for you
Plugin 'stephpy/vim-php-cs-fixer'       "A tool to automatically fix PHP coding standard issues
Plugin 'SirVer/ultisnips'               "UltiSnips - The ultimate snippet solution for Vim.
Plugin 'tobyS/vmustache'                "Mustache templates system for VIMScript (required for PDV)
Plugin 'tobyS/pdv'                      "PHP Documentator for vim
Plugin 'shawncplus/phpcomplete.vim'     "Improved PHP omni-completion
Plugin 'jwalton512/vim-blade'           "Vim syntax highlighting for Blade templates
Plugin 'lumiliet/vim-twig'              "Twig Syntax highlighting
Plugin 'adoy/vim-php-refactoring-toolbox' "PHP Refactoring Toolbox for VIM

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML, CSS, SASS, LESS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'othree/html5.vim'               "HTML5 omnicomplete and syntax
Plugin 'hail2u/vim-css3-syntax'         "CSS3 snytax support
Plugin 'groenewege/vim-less'            "Vim syntax for less
Plugin 'gorodinskiy/vim-coloresque'     "css/less/sass/html color preview for vim
Plugin 'cakebaker/scss-syntax.vim'      "Vim syntax file for scss
Plugin 'mattn/emmet-vim'                "Emmet Plugin

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML, CSS, SASS, LESS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'othree/yajs.vim'                                "Yet Another JavaScript Syntax file
Plugin 'othree/javascript-libraries-syntax.vim'         "Syntax file for JavaScript Libraries
Plugin 'othree/es.next.syntax.vim'                      "The syntax file for EcmaScript future syntax
Plugin 'elzr/vim-json'                                  "a better JSON for vim
Plugin 'othree/jsdoc-syntax.vim'                        "standalone Jsdoc syntax for vim
Plugin 'heavenshell/vim-jsdoc'                          "generates JSDoc block commentsi
Plugin '1995eaton/vim-better-javascript-completion'     "An expansion of vim's current Jacascript syntax file
Plugin 'posva/vim-vue'                                  "Vim syntax highlighting for Vue components.
Plugin 'sekel/vim-vue-syntastic'
Plugin 'othree/jspc.vim'                                "JS Parameter Complete

"Plugin 'ludovicchabant/vim-gutentags'                   "plugin that manages the tag files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
