if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl --insecure -fLo ~/.vim/autoload/plug.vim
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

so ~/dotfiles/vim/plugin.vim
so ~/dotfiles/vim/color.vim
so ~/dotfiles/vim/keymap.vim
so ~/dotfiles/vim/others.vim
so ~/dotfiles/vim/vim-coc.vim
so ~/dotfiles/vim/snippets.vim
so ~/dotfiles/vim/airline.vim
so ~/dotfiles/vim/clang-format.vim

autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif