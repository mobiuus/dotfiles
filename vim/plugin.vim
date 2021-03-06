call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'makerj/vim-pdf'
Plug 'Quramy/tsuquyomi'
Plug 'neovimhaskell/haskell-vim'
Plug 'djoshea/vim-autoread'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'
Plug 'rust-lang/rust.vim'
Plug 'pboettch/vim-cmake-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'sheerun/vim-polyglot'
Plug 'gko/vim-coloresque'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()
