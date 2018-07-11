# vim 插件大全 


## vim 插件管理器 
    
    vim 现在流行的插件管理机Vundle  vim-plug，vim-plug算是Vundle的加强版
    
   [https://github.com/VundleVim/Vundle.vim]()
   
   [https://github.com/junegunn/vim-plug]()
   
   
## Vundle管理器帮助  
   
    " Brief help
    " :PluginList       - lists configured plugins
    " ::wq!    - installs plugins; append `!` to update or just 
    :PluginUpdate
    " :PluginSearch foo - searches for foo; append `!` to refresh local cache
    " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
    " vim +PluginInstall +qall  
   
## 插件网站
   [http://vimawesome.com/　]()

   [http://vim-scripts.org/vim/scripts.html]()　
   
   
## vimrc vim自带的参数设置
      
    set showcmd       显示现有的命令
    set showmatch     显示相对应的括号
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
      
    
      
   
## 常用插件配置 
 
 
###  nerdtree  
     https://github.com/s
     crooloose/nerdtree
     树形显示vim  
      ctrl +w +w    光标自动在左右侧窗口切换
		ctrl +w +r    移动当前窗口的布局位置
		o   展开左侧某个目录，再按一下就是合并目录
		O   递归打开选中 结点下的所有目录
		x   合拢选中结点的父目录
		X   递归 合拢选中结点下的所有目录
		go  在已有窗口中打开文件，但光标不跳到该窗口
		t   中打开选中文件,并跳到新窗口
		T   打开选中文件, 在原窗口 
		P   跳到上级目录结点
		p   跳到根目录结点
		q   关闭 NerdTree 窗口
		i   打开选中文件，上下分屏并跳到该窗口
		gi  打开选中文件，上下分屏, 不跳到该窗口
		s   打开选中文件，左右分屏并跳到该窗口
		gs   打开选中文件，左右分屏,不跳到该窗口
     
     
     
###  ultisnips 
       https://github.com/SirVer/ultisnips
       代码片段补全需要结合 https://github.com/Valloric/YouCompleteMe 
        
        
##  syntastic  
      语法检查  
      https://github.com/vim-syntastic/syntastic  
      
      
##  YouCompleteMe

      语法补全工具 
      
      https://github.com/Valloric/YouCompleteMe 
      安装起来比较麻烦一下,按照官网提示一步一步安装完成 
      
      编译安装
       git  clone 
       cd ~/.vim/bundle/YouCompleteMe
       ./install.py --clang-completer  --gocode-completer 
       
       
       
##  vim-go
      支持go 语言
       
      
       
      
      
       