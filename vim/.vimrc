" ----- EDITAR O VIMRC DIRETAMENTE -------------------------------
map <F2> :tabnew $MYVIMRC<CR>
" ----------------------------------------------------------------


" ----- PLUGINS ---------------------------------------------------
call plug#begin('~/.vim/plugged')

" Deixa o vim bonitinho
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

" configura os highlights de sintaxe para todas as linguagens de programação
Plug 'sheerun/vim-polyglot'

" Mostra a linha de identação
Plug 'Yggdroot/indentLine'

" Plugin INDISPENSAVEL...
" Atalhos de Surround
Plug 'tpope/vim-surround'

" Permite o comando de . (ponto) com atalhos de plugins, como o do
" vim-surround
Plug 'tpope/vim-repeat'

" Atalho para commentar facilmente uma linha de um código com 'gcc'
Plug 'tpope/vim-commentary'

" Integração com o Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Um plugin base com uma serie de configurações "recomendadas"
Plug 'tpope/vim-sensible'

" Navegar na pasta
Plug 'preservim/nerdtree'

call plug#end()
" ----------------------------------------------------------------



" ----- Configurações básicas ------------------------------------
"bar
set laststatus=2

" Show Keys Pressed
set showcmd

" Nao quebra a linha
set nowrap

" Configurar linhas laterais e numeros nela
set encoding=UTF-8
set hidden
set number
set relativenumber

"Destaque na linha onde está o cursor
set cursorline

"Indentização
set tabstop=4
set shiftwidth=4
set expandtab

"Menu saida quando não salvar antes
set confirm

"Só para colorir quando você for procurar por uma palavar no comand-mode
set incsearch
set hlsearch

"AutoIndentacion
set autoindent
set smarttab
set cindent

" Sempre abre uma nova vsplit na direita da tela
set splitright

"Mouse
set mouse=a
" -----------------------------------------------------------------



" ------- Theme ---------------------------------------------------
set termguicolors     " enable true colors support
colorscheme gruvbox
set background=dark
syntax on

" Tema da barra inferior
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }
" ----------------------------------------------------------------



" ------ ATALHOS---------------------------------------------------
" Diz qual o atalho que é o <Leader>
let mapleader=" "

"Atalhos de save
map <C-s> :w<CR> 

"Atalho para voltar ao inicio da linha no modo de inserção
inoremap <C-a> <Esc>^i

"Selecionar tudo modo seleção
vnoremap <C-a> <Esc>ggVG

"Ctrl+V (conteudo no clipboard) no modo inserção
inoremap <C-v> <Esc>"+pi

"Ctrl+C no modo VISUAL
vnoremap <C-c> "+y

" Lidar com splits views
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Buffers
map <C-q> :bp<CR>
map <C-e> :bn<CR>
map <Leader>b :ls<CR>:b  

map [b :bp<CR>
map ]b :bn<CR>
map [B :bfirst<CR>
map ]B :blast<CR>

" ----------------------------------------------------------------



" ------ Plugins---------------------------------------------------
" Nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Sair do Vim se o NERDTree é a unica coisa aberta
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
" ----------------------------------------------------------------
