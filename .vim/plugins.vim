filetype off                  				" required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Basic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'VundleVim/Vundle.vim'           "let Vundle manage Vundle, required
Plugin 'tpope/vim-vinegar'              "expand netrw
Plugin 'majutsushi/tagbar'              "displays tags in a window, ordered by scope
Plugin 'scrooloose/nerdtree'            "tree explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'    "showing git status flags in NERDTree
Plugin 'ctrlpvim/ctrlp.vim'             "Fuzzy file,buffer,mru,tag ...finder
Plugin 'rking/ag.vim'                   "plugin for the_silver_searcher
Plugin 'skwp/greplace.vim'              "Global search and replace
Plugin 'tpope/vim-surround'             "quoting/parenthesizing made simple
Plugin 'MarcWeber/vim-addon-mw-utils'   "needed for vim-snipmate
Plugin 'tomtom/tlib_vim'                "needed for vim-snipmate
Plugin 'garbas/vim-snipmate'            "TextMate snippets feature in vim
Plugin 'ervandew/supertab'              "Perform all your vim insert mode completions with tab
Plugin 'tpope/vim-fugitive'             "A git wrapper
Plugin 'scrooloose/syntastic'           "Syntax checking hacks for vim
Plugin 'junegunn/vim-easy-align'        "A simple easy to use vim alignment plugin
Plugin 'itchyny/lightline.vim'          "statusline/tabline for vim
Plugin 'sjl/gundo.vim'                  "visualize your vim undo
Plugin 'ntpeters/vim-better-whitespace' "Better whitespace highlighting for Vim
Plugin 'airblade/vim-gitgutter'         "A Vim plugin shows a git diff in the gutter and stages/undoes hunks


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PHP, Laravel
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'StanAngeloff/php.vim'           "Up-to-date php syntax file
Plugin 'arnaud-lb/vim-php-namespace'    "types use statements for you
Plugin 'stephpy/vim-php-cs-fixer'       "A tool to automatically fix PHP coding standard issues
Plugin 'tobyS/vmustache'                "Mustache templates system for VIMScript (required for PDV)
Plugin 'tobyS/pdv'                      "PHP Documentator for vim
Plugin 'shawncplus/phpcomplete.vim'     "Improved PHP omni-completion
Plugin 'jwalton512/vim-blade'           "Vim syntax highlighting for Blade templates


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML, CSS, SASS, LESS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'othree/html5.vim'               "HTML5 omnicomplete and syntax
Plugin 'hail2u/vim-css3-syntax'         "CSS3 snytax support
Plugin 'groenewege/vim-less'            "Vim syntax for less
Plugin 'gorodinskiy/vim-coloresque'     "css/less/sass/html color preview for vim
Plugin 'cakebaker/scss-syntax.vim'      "Vim syntax file for scss


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => HTML, CSS, SASS, LESS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'othree/yajs.vim'                                "Yet Another JavaScript Syntax file
Plugin 'othree/javascript-libraries-syntax.vim'         "Syntax file for JavaScript Libraries
Plugin 'othree/es.next.syntax.vim'                      "The syntax file for EcmaScript future syntax
Plugin 'elzr/vim-json'                                  "a better JSON for vim
Plugin 'othree/jsdoc-syntax.vim'                               "standalone Jsdoc syntax for vim
Plugin 'heavenshell/vim-jsdoc'                          "generates JSDoc block commentsi
Plugin '1995eaton/vim-better-javascript-completion'     "An expansion of vim's current Jacascript syntax file
Plugin 'posva/vim-vue'                                  "Vim syntax highlighting for Vue components.
Plugin 'othree/jspc.vim'                                "JS Parameter Complete

Plugin 'ludovicchabant/vim-gutentags'                   "plugin that manages the tag files

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
