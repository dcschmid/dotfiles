"Plugins
so ~/.config/nvim/plugins.vim    "extra plugins file

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

" Use ag over grep
set grepprg=ag\ --nogroup\ --nocolor


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
" => Netrw
"""""""""""""""""""""""""""""""""
let g:netrw_banner = 0
nmap - :Explore<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=syntaxcomplete#Complete



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Add simple highlight removal.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader><space> :nohlsearch<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nvim Terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ts :tabedit term

if has('nvim')
    tnoremap <Esc> <C-\><C-n>
    tnoremap <C-v><Esc> <Esc>
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nvim Sessions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sc :CloseSession<CR>


"""""""""""""""""""""""""""""""""
" => Make it easy to edit the vimrc file.
"""""""""""""""""""""""""""""""""
nmap <Leader>ev :tabedit ~/.config/nvim/init.vim<cr>
nmap <Leader>es :e ~/.config/nvim/snippets/
nmap <Leader>epl :tabedit ~/.config/nvim/plugins.vim<cr>
nmap <Leader>el :tabedit ~/.config/nvim/lightline.vim<cr>


"""""""""""""""""""""""""""""""""
" => Status line
"""""""""""""""""""""""""""""""""
"Always Show the status line
set laststatus=2

"lightline
so ~/.config/nvim/lightline.vim    "extra lightline file


"""""""""""""""""""""""""""""""""""""""
" => FZF
"""""""""""""""""""""""""""""""""""""""
nmap ; :Buffers<CR>
nmap <c-p> :Files<CR>
nmap <Leader>t :Tags<CR>


"""""""""""""""""""""""""""""""""""""""
" => Vim-Grepper
"""""""""""""""""""""""""""""""""""""""
let g:grepper = {}
let g:grepper.tools = ['rg', 'git']

"Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

"Open Grepper-prompt for a particular grep-alike tool
nnoremap <leader>g :Grepper -tool rg<CR>
nnoremap <leader>gg :Grepper -tool git<CR>

"Searching for the current word
nnoremap <leader>rg :Grepper -tool rg -cword<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Supertab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function MyTagContext()
	if filereadable(expand('%:p:h') . '/tags')
    	return "\<c-x>\<c-]>"
    endif
endfunction

let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabRetainCompletionDuration = "completion"
let g:SuperTabLongestEnhanced = 1
let g:SuperTabLongestHighlight = 1
let g:SuperTabCompletionContexts = ['MyTagContext', 's:ContextText', 's:ContextDiscover']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-easy-align
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <c-g> :GundoToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""0
" => tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-t> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""0
" => Livedown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap gm :LivedownToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title
nmap <silent> <c-k> <Plug>(ale_previous_wrap)
nmap <silent> <c-j> <Plug>(ale_next_wrap)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>gd :Gdiff<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gb :Gblame<cr>
nmap <Leader>gl :Glog<cr>
nmap <Leader>gp :Git push<cr>
nmap <Leader>gm :Merginal<cr>
nmap <Leader>gt :Twiggy<cr>


"""""""""""""""""""""""""""""""""
" => AutoCloseHTMLTags
"""""""""""""""""""""""""""""""""
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.twig'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,*.twig'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

"""""""""""""""""""""""""""""""""
" => Laravel specific
"""""""""""""""""""""""""""""""""
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => pdv
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<cr>


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
" => javascript-libraries-syntax.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'jquery,vue'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tern
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto-Commands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

autocmd BufWritePost *.php silent! !exctags -R &
autocmd BufWritePost *.scss silent! !exctags -R &
autocmd BufWritePost *.js silent! !exctags -R &

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
