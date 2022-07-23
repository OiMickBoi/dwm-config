set number relativenumber splitright splitbelow
syntax on
set nocompatible
set expandtab ts=3 sw=3 ai


call plug#begin(stdpath('data') . '/plugged')
     Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
     Plug 'neoclide/coc.nvim', {'branch': 'release'}
     Plug 'preservim/nerdtree'
     Plug 'vim-airline/vim-air'
call plug#end()

colorscheme tokyonight

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


