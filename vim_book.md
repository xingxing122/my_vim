# vim 使用说明文档  


##  导航模式  上下左右 
      上h
      下j 
      左k 
      右l      
##  导航模式  上一个，下一个词  
     w 从左到右，从上到下跳
     b      
##  导航模式   上一屏   下屏  
      ctrl   f  下一屏
      ctrl    b  上一屏     
##  导航模式   多行选择
      shift+v        
## 导航模式  不按整行选择 
      按  v 进行选择     
## 搜索
      /a    按n 从上到下搜索    
## 全局替换   
      :%s/a/b/   
## 局部替换      
      shift+v 选择   
      :s/=/+  等号替换为+号  
##  替换-注意事项，某一整行内的多次替换       
      vim 默认只在每一行替换一次，如果替换多次的话
      :%s/one/TWO/g   加g是对每一行进行多次匹配       
## 自动补齐
      ctrl n 补齐 
 
## 快速导航-根据文件名称打开文件 
       FuzzyFinder
       根据它的介绍可以设置一下快捷键  
       可以使用这种方式设置快捷键，根据自己常需要的一些命令
       map  ff  <esc> :FufFile<CR> 
       
       也可以使用如下
       map <C-t> :FufFile<CR>     
        
    
##  快速打开历史文件

     ctrl+e  
     

##  快速跳转到最近编辑的位置
      g；
 
## 快速跳转到最近打开的文件 
      
        ctrl+o  
        ctrl+i         
##  横屏分屏和竖屏分屏  
     
      sp 上下分屏 跳转ctrl +ww
      vs 竖屏分屏  ctrl+ww 
           
## 多行注释  
       
     shift+v 选择多行 
     然后注释 
     s/^/\/\/
     
## 代码格式化 
     
     选中代码   按 “=”  等号   vim自身的代码格式化  
     
     
## 折叠过长的代码

    :set wrap 
    :set nowrap 
    
## 代码左移
    
    shift 大于号
    shift  小于号
    
## 代码合并成为一行
     
    选择代码 
     shift+g  
          
## unite  
    https://github.com/shougo/unite.vim  
    文件查找补充FuzzyFinder  
    map  uf  <esc> :Unite file<CR> 
    map  uf  <esc> :Unite file buffer<CR>
    
           



























