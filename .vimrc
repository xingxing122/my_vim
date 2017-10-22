"https://github.com/VundleVim/Vundle.vim"
set nocompatible           
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'gmarik/Vundle.vim'
"plugins
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/The-NERD-tree'
Plugin  'L9'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-syntastic/syntastic' 
Plugin 'shougo/unite.vim'
Plugin 'FuzzyFinder'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" vim +PluginInstall +qall

"vim-scripts/The-NERD-tree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-f> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"scrooloose/nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" YouCompleteMe
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" " 主动调用补全
let g:ycm_key_invoke_completion = '<C-j>'

"ctrl 
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f' 


"FuzzyFinder
map <C-t> :FufFile<CR>
map <C-d> :FufDir<CR>
map <C-b> :FufBuffer<CR>

"Unite
map  <C-S-U> :Unite file buffer<CR>
map  <C-S-F> :Unite file<CR>
"vim 配置文件详解"
syntax on   　　　　　    "  自动语法高亮 
set ignorecase smartcase  "  搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感
set hlsearch              "  搜索时高亮显示被找到的文本
set showmatch             "  插入括号时，短暂地跳转到匹配的对应括号
set matchtime=2           "  短暂跳转到匹配括号的时间
set nowrap                "  不自动换行
set magic                 "  显示括号配对情况
set background=dark       " 　背景颜色
set backspace=indent,eol,start "backspace 键可以使用
set nobackup                   " 关闭缓存
colorscheme   desert      "  主题　
set novisualbell            " 关闭使用可视响铃代替呼叫
set t_vb=                   " 置空错误铃声的终端代码
set smartindent             " 开启新行时使用智能自动缩进
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936 "编码设置
set nocompatible        
filetype plugin indent  on 
set helplang=cn " 中文帮助
set ai          " 缩进
