set nocompatible              				" We want the latest vim settings
filetype off                  				" required

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start				"Make backwspace behave like every other editor.
let mapleader=','					"The default leader is \m but a comma is much better.
set number						"Let's activate line numbers
set autowriteall                                        "Automatically write the file when switching
set complete=.,w,b,u 					"Set our desired autocompletion matching
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
set laststatus=2

"-----Visuals-----"
colorscheme atom-dark-256
set t_CO=256						"Use colors, This is useful for Terminal vim


"-----Search-----"
set hlsearch
set incsearch

"----Split Management-----"
set splitbelow
set splitright

nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>


"-----Plugins-----"

"/CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"/NERDTree
let NERDTreeHijackNetrw = 0

"/greplace.vim
set grepprg=ag						"We want use Ag for search
let g:grep_cmd_opts = '--line-numbers --noheading'

"/php-namespace
let g:php_namespace_sort_after_insert = 1

"/php-cs-fixer
let g:php_cs_fixer_level = "psr2" 

"-----Mappings-----"
"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader>es :e ~/.vim/snippets/
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Make Nerdtree easier to toogle.
nmap <C-f> :NERDTreeToggle<cr>
nmap <Leader>f :tag<space>

nmap <C-R> :CtrlPBufTag<cr>
nmap <C-e> :CtrlPMRUFiles<cr>

"php-cs-fixer.
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>

"pdv
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <Leader>d :call pdv#DocumentWithSnip()<cr>


"-----Laravel-Specific-----"
nmap <Leader>lm :!php artisan make:
nmap <Leader><Leader>c :e app/Http/Controllers/<cr>
nmap <Leader><Leader>m :CtrlP<cr>app/
nmap <Leader><Leader>v :e resources/views/<cr>

"fugitive
nmap <Leader>gs :Gstatus<cr>
nmap <Leader>gd :Gdiff<cr>
nmap <Leader>gc :Gcommit<cr>
nmap <Leader>gb :Gblame<cr>
nmap <Leader>gl :Glog<cr>
nmap <Leader>gp :Git push<cr>

"-----Auto-Commands-----"

"Automatically source the vimrc file on save.
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

function! IPhpInsertUse()
	call PhpInsertUse()
	call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

function! IPhpExpandClass()
	call PhpExpandClass()
        call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>nf <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>nf :call PhpExpandClass()<CR>

autocmd FileType php inoremap <Leader>ns <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>ns :call PhpSortUse()<CR>

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

"-------------Tips and Reminders--------------"
" - Press 'zz' to instantly center the line where the cursor is located.
