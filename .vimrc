"""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""

" We want the latest vim settings
set nocompatible

"Sets how many lines of history VIM has to remember
set history=500

"Set to autoread when a file is changed from the outside
set autoread

"The default leader is \m but a comma is much better
let mapleader=','
let g:mapleader=','

"fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""
" => Vim user interface
"""""""""""""""""""""""""""""""""

"turn on the wild menu
set wildmenu

"always show current position
set ruler

"Height of the command bar
set cmdheight=1

"a buffer becomes hidden when its abandoned
set hid

"configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase

"when searching try to be smart about cases
set smartcase

"highlight search results
set hlsearch

"makes search act like search in modern browsers
set incsearch

"don't redraw while executing macros (good performence config)
set lazyredraw

"for regular expressions turn magic on
set magic

"show matching brackets when text indicator is over them
set showmatch

"how many tenths of a second to blink when matching brackets
set mat=2

"no anoying sounds on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=0

"Let's activate line numbers
set number

"----Split Management-----"
set splitbelow
set splitright


"""""""""""""""""""""""""""""""""
" => Vundle Plugins file
"""""""""""""""""""""""""""""""""
so ~/.vim/plugins.vim


"""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""
"Enable syntax highlighting
syntax enable

"Colorscheme and enable 256 Colors
colorscheme iceberg
set t_CO=256						"Use colors, This is useful for Terminal vim

"set utf8 as standard encoding
set encoding=utf8

"Use unix as standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""
" => Files, backups, undo
"""""""""""""""""""""""""""""""""
"Automatically write the file when switching
set autowriteall

"Turn Backup off, since most stuff is in SVN, git etc
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""
" => Text, Tab and indent related
"""""""""""""""""""""""""""""""""
"Use spaces instead of tabs
set expandtab

"be smart when using tabs
set smarttab

"1Tab == 4 spaces
set tabstop=4
set shiftwidth=4

"Auto indent
set ai

"Smart indent
set si


"""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""
"Map <space> to / (search) and Ctrl-<space> to ? (backward search)
nmap <space> /
nmap <c-space> ?

"smart way to move between windows
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"close all the buffers
nmap <leader>ba :bufdo bd<cr>

nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>

"Useful mappings for managing tabs
nmap <leader>tn :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove
nmap <leader>t<leader> :tabnext<cr>

"let 'tl' toogle betwwen this and the last accessed tab
let g:lasttab = 1
nmap <leader>tl :exe "tabn ".g:lasttab<cr>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
nmap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
nmap <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"""""""""""""""""""""""""""""""""
" => Make it easy to edit the vimrc file.
"""""""""""""""""""""""""""""""""
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>el :tabedit ~/.vim/lightline.vim<cr>

"""""""""""""""""""""""""""""""""
" => Netrw
"""""""""""""""""""""""""""""""""
let g:netrw_banner = 0
nmap - :Explore<cr>


"""""""""""""""""""""""""""""""""
" => Laravel specific
"""""""""""""""""""""""""""""""""
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>

"""""""""""""""""""""""""""""""""
" => Symfony specific
"""""""""""""""""""""""""""""""""
nmap <Leader>sc :e src/Controller/<cr>
nmap <Leader>se :e src/Entity/<cr>
nmap <Leader>sv :e templates/<cr>


"""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""
"Always Show the status line
set laststatus=2

"lightline
so ~/.vim/lightline.vim                                   "extra lightline file


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete


"""""""""""""""""""""""""""""""""""""""
" => Ag searching and scope displaying
" requires ag-vim
"""""""""""""""""""""""""""""""""""""""
" When you press gv you Ag after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<cr>

"open Ag and put the cursor in the right position
map <leader>g :Ag

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with Ag, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap ; :Buffers<CR>
nmap <Leader>t :Files<CR>
nmap <Leader>r :Tags<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => greplace.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set grepprg=ag						"We want use Ag for search
let g:grep_cmd_opts = '--line-numbers --noheading'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => php-namespace
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:php_namespace_sort_after_insert = 1

" Automatically adds the corresponding use statement for the name under the
" cursor
function! IPhpInsertUse()
	call PhpInsertUse()
    :q
    :q
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

" Expands the name under the cursor to its fully qualified name.
function! IPhpExpandClass()
	call PhpExpandClass()
        call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

"Sort existing use statements alphabetically
autocmd FileType php inoremap <Leader>ns <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>ns :call PhpSortUse()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => php-cs-fixer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Add simple highlight removal.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader><space> :nohlsearch<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => pdv
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>gd :Gdiff<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gb :Gblame<cr>
nmap <Leader>gl :Glog<cr>
nmap <Leader>gp :Git push<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""0
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-t> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <c-g> :GundoToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabRetainCompletionDuration = "completion"
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => javascript-libraries-syntax.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'jquery,vue'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto-Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"Strip all trailling whitespace on save
autocmd BufEnter * EnableStripWhitespaceOnSave

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

autocmd BufWritePost *.php silent! !ctags -R &

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ag '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

set complete=.,w,b,u 					"Set our desired autocompletion matching


"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
