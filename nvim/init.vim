" ~/.config/nvim/init.vim

for initfile in split(globpath('~/.config/nvim/init.d', '*'), '\n')
  execute 'source' initfile
endfor

autocmd!
autocmd BufWritePost init.vim source % | :set filetype=vim

colorscheme disciple

filetype indent plugin on
syntax on
