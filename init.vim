:set number relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set guicursor=i:block

call plug#begin()
	Plug 'ThePrimeagen/vim-be-good'
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " code completion
	Plug 'lervag/vimtex' " latex previewer
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " markdown previewer
call plug#end()

" REMAPS 

" new lines with normal mode
nnoremap <leader>o o<Esc>0"_D
nnoremap <leader>O O<Esc>0"_D

" advanced copying
xnoremap <leader>p "_dP

" coc
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

" VARIABLES

let mapleader=" "

" vimtex
let g:vimtex_compiler_method = 'latexmk'

" netrw
let g:netrw_banner = 0
let g:netrw_keepdir = 0
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

nnoremap <Leader>p :Ex<CR>
