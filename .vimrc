"Vundle{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tmhedberg/SimpylFold'
" All of your Plugins must be added before the following line


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
" set background=dark
" colorscheme solarized
set number
set backspace=2
set textwidth=80
set hlsearch
set tabstop=4
set sw=4
set cursorline

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

""""""""
" PEP8 "
""""""""
au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			\ set textwidth=80 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix |
			\ let python_highlight_all = 1
au BufNewFile,BufRead *.html 
			\ set tabstop=2 |
			\ set softtabstop=2 |
			\ set shiftwidth=2 |
			\ set expandtab |
			\ set autoindent

""""""""""""""""""
" Bad Whitespace "
""""""""""""""""""
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h
			\ highlight BadWhitespace ctermbg=red guibg=red |
			\ match BadWhitespace /\s\+$/


"""""""""""""""
" LaTeX-Suite "
"""""""""""""""
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
"set sw=2
"set iskeyword+=:

""""""""""""
" NERDTree "
""""""""""""
noremap <silent> <C-n> :NERDTreeToggle<CR>
noremap! <silent> <C-n> :NERDTreeToggle<CR>
let g:NERDTreeIgnore=['\.pyc$', '\.o$']
" automatically open a NERDTree when vim starts up
autocmd vimenter * NERDTree
" Go to previous (last accessed) window.
autocmd VimEnter * wincmd p
" Quit if NERDTree is last and only buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"""""""""""""""
" delimitMate "
"""""""""""""""
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1

"""""""""""""""""
" NERDCommenter "
"""""""""""""""""
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"""""""""""""""
" SimplylFold "
"""""""""""""""
let g:SimpyFold_docstring_preview=1
