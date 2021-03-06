" copy all this into a vim buffer, save it, then...
" source the file by typing :so %
" Now the vim buffer acts like a specialized application for mastering vim

" There are two queues, Study and Known.  Depending how confident you feel
" about the item you are currently learning, you can move it down several
" positions, all the way to the end of the Study queue, or to the Known
" queue.

" type ,, (that's comma comma)
" You know the command pretty well, but not enough to move it to 'Known'.
" ,, moves the current command to the bottom of the 'Study' queue.
nmap ,, ^v/^$<cr>dma/^= Known<cr>P'azt<c-y><c-l>

" type ,c (that's comma c)
" You don't really know the command at all and want to see it again soon.
" ,c moves the current command down a several positions in the 'Study' queue
" so you'll see it again soon.
nmap ,c ^v/^$<cr>dma/^$<cr>/^$<cr>/^$<cr>/^$<cr>jP'azt<c-y><c-l>:noh<cr>

" type ,k (that's comma k)
" You have the command down cold.  Move it to the 'Known' queue.
" ,k moves the current command into the 'Known' queue.
nmap ,k ^v/^$<cr>dma/^= Known<cr>jjP'azt<c-y><c-l>

" Ok, it's time to get this party started.  Move to the top of the study queue
" and go for it!
/^= Study
normal jztj
nohls

" This line keeps the rest of the file from being treated as vimscript
finish

-----------------------------------------------------------------------------

= Study

= Known

/\cruby
"忽略大小写查找单词,\c可放在任何位置,/ruby\c,大写\C强调大小写
do a case-insensitive search for ruby (the \c can be anywhere, including at the end)

vim filename -c 'execute "normal \<C-x>"'
"vim打开文件并执行norml下的命令,这个命令时如果当前光标下时一个数字,将减少它的值.可用来计算打开的次数
how can you decrement the first number on the first line of the file? (how would you property escape the <c-x>?)

ds"
"先安装插件vim-surround
if you have the surround plugin, how would you remove the double quotes from "hello" when inside it?

&
"重复上一次的替换操作
repeat last substitution

:AS
with rails.vim, how do you open the rspec tests when you are in a model?

vim +NERDTree
"打开vim开启NERDTree插件
From the shell command line (not vim's command line) how can you easily run a vim command?

:only
"打开多个窗口,执行将关闭其他窗口
if you have a bunch of windows open, close all the other windows, making the current window the only window

:g/^/m0
"g全文件查找,/^匹配所用行,/m0移动到第一行,每行炒作一次就颠倒顺序了
reverse the vertical order of all the lines

<c-w><enter>
"使用copen打开quickfix窗口,切换到窗口执行
open the file listed in quickfix in a horizontal split

"_dd ("_ is the black hole buffer)
"黑洞寄存器'_',这个寄存器不做任何操作
delete a line without overriding the buffer

@:
"最后执行的命令储存在寄存器':'
repeat the last command-line

:cnew
show the newer error list in the quickfix window (error lists are referred to as being in the quickfix stack)

:cold
show the older error list in the quickfix window (error lists are referred to as being in the quickfix stack)

cs"'
"先安装插件vim-surround
how would you change the text "foo hello there" to 'foo hello there' using vim-surround?

%s/\v +$//g 
"如果这样更清楚 %s/\v( +)$//g
remove trailing spaces from all lines

%s/\v("[a-z_]+"):/\1/g
replace "foo": with "foo" => (to turn JSON into acceptable Ruby)

:verb set ballooneval?
how can you check who last set ballooneval

%v/bar/m$
":g/pattern/cmd 是找到pattern,并进行操作
":v/pattern/cmd 是找到非pattern,并进行操作
":%s/pattern//gn，统计个数,n表示只报告匹配的个数而不进行实际的替换
move every line that *does not* contain bar to the end of the file

"Ayy
"先使用:call setreg('A','')清空寄存器在操作
"寄存器大小写区别,都指向同一个寄存器,大写表示追加内容,小写表示覆盖内容
Append the yank of the current line into the 'a' buffer

:put =@%
"插入当前文件名
insert the file directory/filename for the current file into the buffer

:'<,'>!uniq | sort
"visual选择区域执行命令,uniq删除相邻的重复行
With some lines selected, how can I run them through external commands, substituting the result?

%g/foo/s/bar/xxx/g
"文件中查找包含'foo'的行,并替换中介的'bar'为'xxx'
On every line containing foo *anywhere* in the line (before or after the bar), replace every occurrence of bar with xxx

VG:norm @x
"VG选择从本行到文件末,:执行命令,norm @x普通模式下寄存器x的命令
replay a vim macro recorded into register x on all lines between the current line and the bottom of the buffer

tabularize
"vim代码对齐插件
What's the name of a plugin that will help you align stuff

K
"man查看系统命令
look up the word under the cursor in man

<c-]>
jump to tag under cursort (for example, following a link in help)

<c-t>
return from tag jump.  For example, in help, if you've followed a link, how do you go back?

set -o vi
"系统终端下set用来定制shell环境,-o开启+o关闭,-o后不输入参数查看列表
in a the bash shell, how can you use #readline_vi_mode?

zb
scroll current line to bottom of page

zL
scroll half a screen to the left

zH
scroll half a screen to the right

zl
scroll one character to the left

zh
"关闭自动换行才有效 :set nowrap
scroll one character to the right

[m
"[M  向后方法的结束处
backward to start of previous method

]m
"]M 向前方法的结束处.大写是结尾,小写时开头.]的开口表示向前还是向后
forward to start of next method

<c-y>
scroll one line down

<c-e>
scroll one line up

;
repeat the last f/F/t/T command you gave

zz
move current line to middle of page

<c-f>
scroll forward one page

tx
same as fx, but moves the cursor to right before the character, not all the way to it.

zt
scroll current line to top of page

M
move the cursor to the middle of the screen

<c-w>x
"交换两个窗口
exchange the window with the next window (like if you split a new buffer into the wrong window location)

Tx
"查找x,并移动到字符靠当前方向前一个位置,小写反方向
move the cursor backward to right before the previous occurrence of the character x on the current line.

fx
"查找x,并移动,大写反方向
move the cursor forward to the next occurrence of the character x on the current line

g-
go to an older text state (like <c-r>, but will move backwards through all text states on multiple undo branches)

g+
"undolist列出undo分支,:undo命令并指定编号做为参数，则能够切换到指定分支
"新建文件并输入“AAA”，然后在新的一行中输入“BBB”，返回Normal mode并按下u命令。
"这时输入“BBB”的操作被撤消，文件将只包含“AAA”。
"接着输入“CCC”，然后返回Normal mode并按下u命令，此时将撤消输入“CCC”的操作，文件仍然只包含“大象”。所以你的“BBB”就再也找不回来了。使用g+ g-都出来了
go to a newer text state (like <c-r>, but will move forward through all text states on multiple undo branches)

:undolist
list the leaves in the tree of the undo changes

<c-b>
"Backwards-Forwards Up-Down
scroll back one page

Fx
move the cursor backward to the previous occurrence of the character x on the current line.

''
" 注意''和 ``的区别
go to the position before the latest jump

%s/\v(.*\n){5}/&\r
"&表示匹配到的整个字符,\r回车符号
insert a blank line every 5 lines

gj
"j,gj都是选择一行,但是gj选择的行是屏幕显示的一行,不包含自动换行部分
go to next visual line, even if text wrapped

gD
"跳到文件第一次出现在光标下单词的位置,gd貌似一样
go to the first occurrence in the file of the word under the cursor

rm /tmp/clip.txt ; vim -c "normal \"+p" -c "wq" /tmp/clip.txt
"这是在shell下执行,不是在vim内部,先是删除存在的文件,然后启动vim,并带有参数
"normal表示进入normal模式"+p表示粘贴系统粘贴板,然后’wq 文件名‘保存到文件
Save the contents of the clipboard to a file by opening, pasting into, and closing vim.

redir @a | :g/someregex/
"不要忘记:redir END结束重定向,就可以用:reg a活着插入模式c-r点a插入所有内容
Capture the lines that match a certain regex into the @a register for pasting

va(
"a与i的区别
visually select *around* a set of parentheses.  Try it by moving the cursor (somewhere in here) and trying it

:echo line('.')
in the #vim_command_line, echo the current line number

<c-u>
delete all inserted text on the line (in insert mode)

<c-w>
delete word before cursor in insert mode

<c-a>
insert previously inserted text (in insert mode)

:g/foo/p
"与norml模式下的[I相似,但不用移动到目标单词旁
list all the matches with prepended line numbers in ex command output

:gui
switch to the gui version

g?
"对选择的文本进行rot13转换,普通模式只能转换一个
reverse the characters in a visual selection

redir @a
"注意!> >>的区别,!>覆盖并且没文件失败,>>新建或者追加
redirect the output of an Ex command into buffer a

[I
"将光标移动到想要查看的单词处,输入快捷键显示文件所有保含此单词的行.
show lines containing the word under the cursor

<c-w><c-w>
"命令行执行copen后,点击快捷键that‘s it.
switch between windows

m
NERDTree: opens the filesystem menu for a file, allowing you to remove, rename, etc

.
repeat the last command

~
uppercase or lowercase the character under the cursor

<c-o>
"跳转到后一个鼠标位置
old

<c-i>
"跳转到前一个鼠标位置
next

<c-a>
increment a number on the same line when in normal mode (can be used with n before it)

<c-x>
"normal模式下当前光标下如果是数字则减1
decrement a number on the same line when in normal mode (can be used with n before it)

:so $MYVIMRC
"从文件中读取vim命令
reload the vimrc file (or ":so %" if you happen to be editing the file)

zo
fold: open a fold at the cursor

<c-v>
block selection (column editing)

<c-x><c-f>
"插入模式,比如输入stu,点击快捷键将自动补全为文件名study.vim
completes using filenames from the current directory.

<c-l>
"刷新目录
redraw the screen

gv
"visual模式下选择一个区域点击gv,然后移动选择其他,在点击gv则变回原来的选择区域
remark area that was just marked

:bm
":Explore
"设置vimrc,:fe打开目录窗口,或者100fe打开指定宽度的窗口
"""""""""""""""""""""""""""""""
"" netrw setting
"""""""""""""""""""""""""""""""
"let g:netrw_winsize = 30
"nmap fe :Sexplore!<cr> 
go to next modified buffer

:cp
Go to the previous item in the quickfix list

:cn
"主要用于开发,使用copen打开窗口,cclose关闭窗口
"nmap <F6> :cn<cr>
"nmap <F7> :cp<cr> #提高效率
Go to the next item in the quickfix list

:w !sudo tee %
"如果一个文件需要root权限写入,可以执行修改
"w!{cmd}，让vim执行一个外部命令{cmd}，然后把当前缓冲区的内容从stdin传入。
"tee是一个把stdin保存到文件的小工具
"%表示当前文件路径和文件名的寄存器
save the current file as root (in case you opened it up without sudo accidentally and made changes to it)

<c-w>_
maximize size of window split

:retab
if expandtab is set, this will change all the tabs to spaces, expanding them as appropriate

:h c_CTRL-R
get help for how control r is used in command mode

:h i_CTRL-R
get help for how control r is used in insert mode

<c-f>
"命令行模式显示所有的输入的命令
when typing something into the #vim_command_line, switch to the editable command-line mode where the command line becomes a fully vim-compatible text area

<c-r>/
"应该是插入模式
in ex mode, insert the last search

<c-r>:
"应该是插入模式
in ex mode, insert the last command

/<c-r><c-w>
"<C-R>是插入值的意思,<C-W>就是当前光标下第一个单词
switch to search command mode, then copy in the word under the cursor

"+y
"系统自带的不行,需要macvim或者vimrc写入
"vmap "+y :w !pbcopy<CR><CR>  
"nmap "+p :r !pbpaste<CR><CR>
"第一个命令在visual模式下第二个在normal模式下,还可以继续定义
",缺点有屏幕闪烁现象
copy the current selection to a clipboard where other programs can use it

<c-v>jjjI//<esc>
"visual block操作
block comment the next three JavaScript lines

<c-x><c-s>
"在输入模式驶入insret后点击c-x后松开c点击s,会出现选择提示,
"如果出现错误'spell checking is not enable.'输入':set spell'
in insert mode correct the spelling of the current word

<c-v>
"一般是将数字转化为符号字符,如点击快捷键后输入11点回车或输入一个字母,11将变为一个符号
in insert or the #vim_command_line this turns the next thing typed into a literal

:%s/forward//gn
"计算当前文件forward的个数,只报告匹配的数目，并不真正进行替换(:help :s_flags)
count the number of occurrences of "forward" in a file

<c-x><c-l>
"插入模式下补全整行,比如现在插入模式一行第一个为l然后点击快捷键,
"将会出现可选的补全行,c-p或c-n进行选择
line completion

`a
mark: return to the 'a' mark in the current buffer

ma
mark: set a mark in the 'a' register in the current buffer

A
append at the end of the line

C
change to the end of the line

D
delete to the end of the line

ZZ
same as :wq

I
insert at the beginning of the line

:s/\%V //g
"s替换 \%V选择的内容'/ //'替换空格为空
remove all the spaces from the current visual selection, which is only a partial line, not a full line

o
"visual模式下移动光标在选择区域的两端
when in a visual selection, which key will toggle to the other end of the selection?

<c-a>
"插入模式,插入前一段插入的内容
In insert mode, re-insert the text inserted in the previous insert session

&
"如同执行:s,执行最后一次替换命令
repeat last substitution

:r file
insert content of file below cursor

:r !ls
"将读取内容插入当前光标所在行的下面,:2r 表示插入文件第2行后面
insert results of ls external command below cursor

:map ,, :w\|:!ruby %
"将对应的命令写入,,
how would you map ,, to writing the current buffer, then running it with ruby

20!!wc<enter>
"!!表示当前行执行命令,注意命令行模式表示执行前一个命令,20表示20次
"!20!wc结果一样
filter the next 20 lines through an external command (in this case wc)

!10jwc<enter>
" !表示使用filter,! 把后面的文本送给命令, 取代输出,
" 10j表示filter的对象是从当前行开始向下10行
" 其实你一旦输入 !10j，vim就自动计算当前段落应该到那一行(eg.+10)，然后生成
" :.,.+10! 等待之后输入wc，回车，完成操作
" .表示当前行，.+10当然就是当前行向后数10行
" 10!jwc 结果一样
filter the next 10+1 lines through an external command (in this case wc)

<c-u>
"插入模式删除此行开头到光标位置所有字符
In insert mode, delete the current line from the cursor position to the beginning of the line

<c-y>
"插入模式下,插入光标上面的字符
In insert mode, insert the character right above the cursor

:10,30w>>foo.txt
append lines 10-30 to a file named foo.txt

:10,30w foo.txt
write lines 10-30 to a file named foo.txt

i<c-r>/
"插入最后一个搜索命令
insert last search command

i<c-r>:
"插入最后一个命令行命令
insert last #vim_command_line command

ci"
change all the words in between two quotes

:set spell
"拼写检查
Switch on spell checking

b
move the cursor backward by a word

w
move the cursor forward by a word

ea
append at end of word

e
move to the end of the word

xp
transpose two letters (delete and paste, technically)

gq
reformat the selected text

J
join two lines

%
find matching parenthesis

)
forward a sentence

(
back a sentence

}
forward a paragraph

{
back a paragraph

q/
see previous searches

qQ ... added commands ... q
"录制宏
append more commands to a pre-existing @q register macro

q:
"查看命令行的前一个指令
see previous commands in a "command-line window"

<c-f>
"显示全部搜索命令
(while searching or ex mode) see previous searches or commands

<c-n>
(while searching or ex mode) do next search or command

<c-p>
"MD意思是搜索模式或命令模式里翻滚以前的命令,和pgup,padn,方向箭头一个作用
(while searching or ex mode) do previous search or command

gj
move cursor one *screen* line down, regardless of line wrapping

gk
move cursor one *screen* line up, regardless of line wrapping

<c-r>=5*5
in the #vim_command_line and in insert mode, insert the result of a 5*5 calculation

:norm @x
Execute the macro recorded in register x on a visually selected set of lines

:%norm @x
"%代表整个文件,norm指出后面是normal模式的指令,@x执行寄存器的命令
:Execute the macro recorded in register x on all lines of the current file

[p
Paste above the current line, adjusting indentation to match current line

<c-r>a
"<c-r>就在命令行和insert像normal模式下的p操作,插入yank的内容
insert the content of register a while in insert mode

<c-r>"
"<c-r>就在命令行和insert像normal模式下的p操作,插入yank的内容
paste yanked text into the #vim_command_line

gp
paste register below current line, leaving cursor after new text

gP
paste register above current line, leaving cursor after new text

]p
Paste below the current line, adjusting indentation to match current line

gm
go to the center of the screen on the current line

<c-6>
toggle between last two buffers

zm
fold: increase the fold level by one

as
in visual mode, select a whole sentence

aw
in visual mode, select a whole word

zr
fold: decrease the fold level by one

:43,45 ce 80<enter>
center the lines from 43 to 45 within an 80 char width

:reg
show the content of all registers

:map
show all the mappings

:map <f6>
show what is currently mapped to <f6>

]z
fold: Move to end of current open fold

[z
fold: move to start of current open fold

zk
fold: moves the cursor to the previous fold

zj
fold: moves the cursor to the next fold

:set foldenable
fold: turn on folding (if it has been turned off)

:set nofoldenable
fold: turn off folding

:set fdm=syntax
fold: make folding use syntax

"ayy
yank the current line into register "a"

g,
go forward in the change list in a file

g;
go backward in the change list in a file

:h slash<c-d>
list all help topics containing the word "slash"

`.
jumps to exact position of last modification

'.
jumps to last modified line

ggg?G
rot13 whole file

g8
display hex value of utf-8 character under cursor

ga
display hex and ASCII value of character under cursor

gUU
upper case the whole line

gf
open file under the cursor

guu
lower case the whole line

:history
list your recent commands

:jumps
list your movements

gqap
format the current paragraph

<c-o>
in insert mode switch to normal mode for one command

==
autoindent current line

=
autoindent lines already selected in visual mode

:%s/\r//g
remove all those nasty ^M characters from the end of each line in a file

<c-o>
move backward in the jump list

<c-i>
move forward in the jump list

'A
mark: return to a globally set mark, even if in another buffer

gU
make the selected text upper case

gu
make the selected text lower case

mA
mark: set a mark in the 'A' register (globally)

yy@"
"例如(! echo "abc:")这样的一行,在normal模式下输入上面的命令将替换为shell执行的结果.yy的操作将会把结果写入无名寄存器'"',@“则是执行寄存器中的命令
execute the vim code in the current line.  To execute it in the shell, type :! at the beginning of the line

<esc>v
if you're using vim as your line editor, how can you turn it in to a full vim session

daw
change the phrase "foo hello" to just "hello" (with cursor located at f*oo hello)

ciw
change a word without necessarily being selected on the first letter of the word

bindkey -v
in zsh, how can you use #readline_vi_mode?

g_
move to the last non-whitespace character on a line

v
how do you open an editor while the shell is in #readline_vi_mode

readline vi mode (tagged as #readline_vi_mode)
what's it called when you use vim as your line editor in the shell?

text objects
"就是<action>i<object>i作用于对象内部(i: inner), a作用于整个对象(a: an)
what do you call the higher level contexts than editing character by character?

:set colorcolumn=78
in vim 703 and above, how do you specify that you'd like column 78 to be colored, so that you can see whether you are passing an ideal width

:!!
repeat the last :! command

/usr/share/vim
in Ubuntu, which folder has the default, system-wide vim files

Q
when in normal mode, how do you enter into Ex mode (to do extended work in the #vim_command_line)

:set cursorline
highlight the entire line the cursor is on

some_command | vim -R -
"比如终端输入echo "abc" | vim -R - 将打开vim并输入abc,但是是只读模式,可用:w filename保存后进行修改
when in the shell, you can use vim as a pager by piping STDIN to it and putting it in readonly mode

#
Backward find word under cursor

g#
Backward find word under cursor (fuzzy)

g*
Forward find word under cursor (fuzzy)

:set relativenumber
show the line numbers relative to the current cursor position

U
restore last changed line

ge
Go to end of previous word

e
Go to end of (next) word

:w filename
write the visually selected text to a file

R
enter replace mode to repeatedly replace the character under the cursor

:set ignorecase (or :set ic)
ignore case when searching

<c-g>
see location in file and file status

<c-g>
see location in file and file status

0
move to the start of the line (before whitespace)

<c-u>
Go up half a screen

<c-d>
Go down half a screen

`a
go to the exact position of mark a (not just the beginning of the line like 'a)

20%
go to the line that is 20% of the way down in the file

10L
go to the tenth line from the bottom of the window

L
go to the bottom of the window

M
go to the middle of the window

20H
"移动光标到显示顶部行下面20行处,如果超过当前显示屏最多移动行,则移动到最后一行
go to the line that is 20 lines below the line that is currently the top of the window

o
in visual mode, exchange cursor position with the start/end of highlighting

g~(some movement)
"gUw与guw效果相同
switch case for movement command

"a20yy
add the next 20 lines to the 'a' register

H
go to the top of the screen

:43,45d<enter>
delete lines 43-45 (can specify any range before the d)

<c-v>8
"在insert模式输入字符的数字代号后在点击一个字母则会显示
insert the character represented by the ASCII value 8

:10,30!wc<enter>
"10到30行作为wc命令的输入参数并把10到30行替换为输出,注意和:2,5 w !sh(2到5行作为shell执行)的不同,还有2,5w !xargs command(2,5行作为command命令的参数)
filter lines 10-30 through an external command (in this case wc)

:reg a<enter>
show the contents of register a

:tj<enter>
"top-jump是吗?
jump to tag on top of tag stack

:reg<enter>
show the contents of all registers

:args
display the argument list

:all
open in window for each file in the arguments list

g?(some movement)
"visual模式下选择一行然后执行g?进行rot13编码,rot13的编码解码算法相同
rot13 the text selected by some movement

:w !sh
run the visually selected lines in the shell (not run as a filter)

:tag save
if you want to look up the definition of save using ctags

gi
"返回到上一次退出插入模式的位置,并且进入插入模式
if you left insert mode to go look at something elsewhere in the file, how can you get back to where you were and also back into insert mode?

<c-t>
if you've made a ctag jump, how can you jump back other than <c-o>?

<c-]>
if you have ctags working correctly, how do you jump to the definition of a function?

:.,. w !sh
"当前行的内容作为shell运行,也可以2,5 w !sh第2行到第5行
execute the contents of the current line in the current file in sh

:argdo norm @q
run your last macro against all files in the args

norm
what's a good shorthand for "normal" on the #vim_command_line

:let @q="2dw"
easily fill the q register with a macro that deletes two words

:'<,'>normal @q
"在所有选择的行上执行宏,先录制一个宏进寄存器q,然后visual模式选择行,按:,注意此时已经出现'<,'>,然后输入normal @q,所有选择行都执行完成
run the macro recorded into the q register on all selected lines (the '<,'> is automatically added)

:s/\%V\v_([a-z])/\u\1/g
turn snake_case into camelCase (in only the visually selected part of line)

:s/\v_([a-z])/\u\1/g
turn snake_case into camelCase

:s/\%V\v([a-z])([A-Z])/\1_\L\2/g
"进visual模式选择执行部分后,再执行替换才有效果,如果选择部分大于一行每次只处理一行,可移动行继续执行,不需要在进行visual选择
turn camelCase into snake_case (in only the visually selected part of the line)

:s/\v([a-z])([A-Z])/\1_\L\2/处理g
"把驼峰拼写法修改为蛇底式拼写法.\v表示正则表达式的任何元字符都不用加反斜杠,/g(loabl)表示所有匹配项全部执行,\L(U)大小写处理,如果转换的行为abcEDF,转换的结果为abc_eDF,因为\1\2只匹配到cE,可尝试s/\v([a-z]+)([A-Z]+)/_\U\1_\L\2/g将变为_ABC_edf
turn camelCase into snake_case

:set textwidth=78
"遇到空白才会换行,如果一句话超过指定值不会中间换行的,与lbr和brk有关
how do you make vim hard wrap at 78 chars?

:!mkdir -p %:h
:"!通过一个shell执行命令
if you have a file that you can't save because its directory doesn't exist, how can you create that directory from the path component of the file?

:help shell<TAB>
how can you see what *all* the commands starting with 'shell' when considering getting help

g`"
"与`"相同,跳转到上次退出时编辑此文件的位置
how do you nondestructively move back to the last position when the buffer was closed

+
"普通模式下移动到下一行第一个非空白字符处
in normal mode, how do you move to the first non-whitespace character of the next line

-
"普通模式下移动到上一行的第一个非空白字符处 
in normal mode, how do you move to the first non-whitespace character of the previous line

:wq
write the file and quit.  This is basically here just so that there's something in the "Known" queue.
