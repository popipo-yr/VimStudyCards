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

!10jwc<enter>
filter the next 10 lines through an external command (in this case wc)

20!!wc<enter>
filter the next 20 lines through an external command (in this case wc)

:map ,, :w\|:!ruby %
how would you map ,, to writing the current buffer, then running it with ruby

<c-x><c-l>
line completion

qQ ... added commands ... q
append more commands to a pre-existing @q register macro

:Rextract _partial_name.erb
rails.vim: extract some functionality into a partial

:Rintegrationtest
open the cucumber feature with that name [tag:setup_specific:gem]

<c-p>
(while searching or ex mode) do previous search or command

<c-n>
(while searching or ex mode) do next search or command

<c-f>
(while searching or ex mode) see previous searches or commands

:%s/forward//gn
count the number of occurrences of "forward" in a file

q:
see previous commands in a "command-line window"

q/
see previous searches

{
back a paragraph

}
forward a paragraph

(
back a sentence

)
forward a sentence

%
find matching parenthesis

J
join two lines

gq
reformat the selected text

xp
transpose two letters (delete and paste, technically)

e
move to the end of the word

ea
append at end of word

w
move the cursor forward by a word

b
move the cursor backward by a word

<c-v>
in insert or the #vim_command_line this turns the next thing typed into a literal

:set spell
Switch on spell checking

<c-x><c-s>
in insert mode correct the spelling of the current word

<c-v>jjjI//<esc>
block comment the next three JavaScript lines

"+y
copy the current selection to a clipboard where other programs can use it

ci"
change all the words in between two quotes

/<c-r><c-w>
switch to search command mode, then copy in the word under the cursor

:cn
Go to the next item in the quickfix list

:cp
Go to the previous item in the quickfix list

i<c-r>:
insert last #vim_command_line command

i<c-r>/
insert last search command

:10,30w foo.txt
write lines 10-30 to a file named foo.txt

:10,30w>>foo.txt
append lines 10-30 to a file named foo.txt

:r !ls
insert results of ls external command below cursor

:r file
insert content of file below cursor

&
repeat last substitution

:bm
go to next modified buffer

:w !sudo tee %
save the current file as root (in case you opened it up without sudo accidentally and made changes to it)

<c-r>:
in Ex mode, insert the last command

<c-y>
In insert mode, insert the character right above the cursor

<c-u>
In insert mode, delete the current line from the cursor position to the beginning of the line

<c-a>
In insert mode, re-insert the text inserted in the previous insert session

<c-r>/
in Ex mode, insert the last search

<c-f>
When typing something into the #vim_command_line, switch to the editable command-line mode where the command line becomes a fully vim-compatible text area

o
when in a visual selection, which key will toggle to the other end of the selection?

:h i_CTRL-R
get help for how control r is used in insert mode

:h c_CTRL-R
get help for how control r is used in command mode

:s/\%V //g
remove all the spaces from the current visual selection, which is only a partial line, not a full line

:retab
if expandtab is set, this will change all the tabs to spaces, expanding them as appropriate

<c-w>_
maximize size of window split

I
insert at the beginning of the line

gv
remark area that was just marked

ZZ
same as :wq

<c-l>
redraw the screen

<c-x><c-f>
completes using filenames from the current directory.

<c-v>
block selection (column editing)

zo
fold: open a fold at the cursor

D
delete to the end of the line

C
change to the end of the line

:so $MYVIMRC
reload the vimrc file (or ":so %" if you happen to be editing the file)

A
append at the end of the line

<c-x>
decrement a number on the same line when in normal mode (can be used with n before it)

<c-a>
increment a number on the same line when in normal mode (can be used with n before it)

m
NERDTree: opens the filesystem menu for a file, allowing you to remove, rename, etc

ma
mark: set a mark in the 'a' register in the current buffer

`a
mark: return to the 'a' mark in the current buffer

<c-i>
next

<c-o>
old

~
uppercase or lowercase the character under the cursor

.
repeat the last command

<c-w><c-w>
switch between windows

[I
show lines containing the word under the cursor

redir @a
redirect the output of an Ex command into buffer a

g?
reverse the characters in a visual selection

:gui
switch to the gui version

:g/foo/p
list all the matches with prepended line numbers in ex command output

<c-a>
insert previously inserted text (in insert mode)

<c-w>
delete word before cursor in insert mode

<c-u>
delete all inserted text on the line (in insert mode)

:echo line('.')
in the #vim_command_line, echo the current line number

va(
visually select *around* a set of parentheses.  Try it by moving the cursor (somewhere in here) and trying it

redir @a | :g/someregex/
Capture the lines that match a certain regex into the @a register for pasting

rm /tmp/clip.txt ; vim -c "normal \"+p" -c "wq" /tmp/clip.txt
Save the contents of the clipboard to a file by opening, pasting into, and closing vim.

gD
go to the first occurrence in the file of the word under the cursor

gj
go to next visual line, even if text wrapped

%s/\v(.*\n){5}/&\r
insert a blank line every 5 lines

''
go to the position before the latest jump

Fx
move the cursor backward to the previous occurrence of the character x on the current line.

<c-b>
scroll back one page

:undolist
list the leaves in the tree of the undo changes

g+
go to a newer text state (like <c-r>, but will move forward through all text states on multiple undo branches)

g-
go to an older text state (like <c-r>, but will move backwards through all text states on multiple undo branches)

fx
move the cursor forward to the next occurrence of the character x on the current line

Tx
move the cursor backward to right before the previous occurrence of the character x on the current line.

<c-w>x
exchange the window with the next window (like if you split a new buffer into the wrong window location)

M
move the cursor to the middle of the screen

zt
scroll current line to top of page

tx
same as fx, but moves the cursor to right before the character, not all the way to it.

<c-f>
scroll forward one page

zz
move current line to middle of page

;
repeat the last f/F/t/T command you gave

<c-e>
scroll one line up

<c-y>
scroll one line down

]m
forward to start of next method

[m
backward to start of previous method

zh
scroll one character to the right

zl
scroll one character to the left

zH
scroll half a screen to the right

zL
scroll half a screen to the left

zb
scroll current line to bottom of page

set -o vi
in a the bash shell, how can you use #readline_vi_mode?

<c-t>
return from tag jump.  For example, in help, if you've followed a link, how do you go back?

<c-]>
jump to tag under cursort (for example, following a link in help)

K
look up the word under the cursor in man

tabularize
What's the name of a plugin that will help you align stuff

VG:norm @x
replay a vim macro recorded into register x on all lines between the current line and the bottom of the buffer

%g/foo/s/bar/xxx/g
On every line containing foo *anywhere* in the line (before or after the bar), replace every occurrence of bar with xxx

:'<,'>!uniq | sort
With some lines selected, how can I run them through external commands, substituting the result?

:put =@%
insert the file directory/filename for the current file into the buffer

"Ayy
Append the yank of the current line into the 'a' buffer

%v/bar/m$
move every line that *does not* contain bar to the end of the file

:verb set ballooneval?
how can you check who last set ballooneval

%s/\v("[a-z_]+"): /\1 => /g
replace "foo": with "foo" => (to turn JSON into acceptable Ruby)

%s/\v +$//g 
remove trailing spaces from all lines

cs"'
how would you change the text "foo hello there" to 'foo hello there' using vim-surround?

:cold
show the older error list in the quickfix window (error lists are referred to as being in the quickfix stack)

:cnew
show the newer error list in the quickfix window (error lists are referred to as being in the quickfix stack)

@:
repeat the last command-line

"_dd ("_ is the black hole buffer)
delete a line without overriding the buffer

<c-w><enter>
how would you change the text "foo hello there" to 'foo hello there' using vim-surround?

:cold
show the older error list in the quickfix window (error lists are referred to as being in the quickfix stack)

:cnew
show the newer error list in the quickfix window (error lists are referred to as being in the quickfix stack)

@:
repeat the last command-line

"_dd ("_ is the black hole buffer)
delete a line without overriding the buffer

<c-w><enter>
open the file listed in quickfix in a horizontal split

:g/^/m0
reverse the vertical order of all the lines

:only
if you have a bunch of windows open, close all the other windows, making the current window the only window

vim +NERDTree
From the shell command line (not vim's command line) how can you easily run a vim command?

:AS
with rails.vim, how do you open the rspec tests when you are in a model?

&
repeat last substitution

ds"
if you have the surround plugin, how would you remove the double quotes from "hello" when inside it?

vim filename -c 'execute "normal \<C-x>"'
how can you decrement the first number on the first line of the file? (how would you property escape the <c-x>?)

/\cruby
do a case-insensitive search for ruby (the \c can be anywhere, including at the end)

= Known

gj
move cursor one *screen* line down, regardless of line wrapping

gk
move cursor one *screen* line up, regardless of line wrapping

<c-r>=5*5
in the #vim_command_line and in insert mode, insert the result of a 5*5 calculation

:norm @x
Execute the macro recorded in register x on a visually selected set of lines

:%norm @x
%代表整个文件,norm指出后面是normal模式的指令,@x执行寄存器的命令
:Execute the macro recorded in register x on all lines of the current file

[p
Paste above the current line, adjusting indentation to match current line

<c-r>a
<c-r>就在命令行和insert像normal模式下的p操作,插入yank的内容
insert the content of register a while in insert mode

<c-r>"
<c-r>就在命令行和insert像normal模式下的p操作,插入yank的内容
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
例如(! echo "abc:")这样的一行,在normal模式下输入上面的命令将替换为shell执行的结果
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
就是<action>i<object>i作用于对象内部(i: inner), a作用于整个对象(a: an)
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
比如终端输入echo "abc" | vim -R - 将打开vim并输入abc,但是是只读模式,可用:w filename保存后进行修改
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
移动光标到显示顶部行下面20行处,如果超过当前显示屏最多移动行,则移动到最后一行
go to the line that is 20 lines below the line that is currently the top of the window

o
in visual mode, exchange cursor position with the start/end of highlighting

g~(some movement)
gUw与guw效果相同
switch case for movement command

"a20yy
add the next 20 lines to the 'a' register

H
go to the top of the screen

:43,45d<enter>
delete lines 43-45 (can specify any range before the d)

<c-v>8
在insert模式输入字符的数字代号后在点击一个字母则会显示
insert the character represented by the ASCII value 8

:10,30!wc<enter>
10到30行作为wc命令的输入参数并把10到30行替换为输出,注意和:2,5 w !sh(2到5行作为shell执行)的不同,还有2,5w !xargs command(2,5行作为command命令的参数)
filter lines 10-30 through an external command (in this case wc)

:reg a<enter>
show the contents of register a

:tj<enter>
top-jump是吗?
jump to tag on top of tag stack

:reg<enter>
show the contents of all registers

:args
display the argument list

:all
open in window for each file in the arguments list

g?(some movement)
visual模式下选择一行然后执行g?进行rot13编码,rot13的编码解码算法相同
rot13 the text selected by some movement

:w !sh
run the visually selected lines in the shell (not run as a filter)

:tag save
if you want to look up the definition of save using ctags

gi
返回到上一次退出插入模式的位置,并且进入插入模式
if you left insert mode to go look at something elsewhere in the file, how can you get back to where you were and also back into insert mode?

<c-t>
if you've made a ctag jump, how can you jump back other than <c-o>?

<c-]>
if you have ctags working correctly, how do you jump to the definition of a function?

:.,. w !sh
当前行的内容作为shell运行,也可以2,5 w !sh第2行到第5行
execute the contents of the current line in the current file in sh

:argdo norm @q
run your last macro against all files in the args

norm
what's a good shorthand for "normal" on the #vim_command_line

:let @q="2dw"
easily fill the q register with a macro that deletes two words

:'<,'>normal @q
在所有选择的行上执行宏,先录制一个宏进寄存器q,然后visual模式选择行,按:,注意此时已经出现'<,'>,然后输入normal @q,所有选择行都执行完成
run the macro recorded into the q register on all selected lines (the '<,'> is automatically added)

:s/\%V\v_([a-z])/\u\1/g
turn snake_case into camelCase (in only the visually selected part of line)

:s/\v_([a-z])/\u\1/g
turn snake_case into camelCase

:s/\%V\v([a-z])([A-Z])/\1_\L\2/g
进visual模式选择执行部分后,再执行替换才有效果,如果选择部分大于一行每次只处理一行,可移动行继续执行,不需要在进行visual选择
turn camelCase into snake_case (in only the visually selected part of the line)

:s/\v([a-z])([A-Z])/\1_\L\2/处理g
把驼峰拼写法修改为蛇底式拼写法.\v表示正则表达式的任何元字符都不用加反斜杠,/g(loabl)表示所有匹配项全部执行,\L(U)大小写处理,如果转换的行为abcEDF,转换的结果为abc_eDF,因为\1\2只匹配到cE,可尝试s/\v([a-z]+)([A-Z]+)/_\U\1_\L\2/g将变为_ABC_edf
turn camelCase into snake_case

:set textwidth=78
遇到空白才会换行,如果一句话超过指定值不会中间换行的,与lbr和brk有关
how do you make vim hard wrap at 78 chars?

:!mkdir -p %:h
:!通过一个shell执行命令
if you have a file that you can't save because its directory doesn't exist, how can you create that directory from the path component of the file?

:help shell<TAB>
how can you see what *all* the commands starting with 'shell' when considering getting help

g`"
与`"相同,跳转到上次退出时编辑此文件的位置
how do you nondestructively move back to the last position when the buffer was closed

+
普通模式下移动到下一行第一个非空白字符处
in normal mode, how do you move to the first non-whitespace character of the next line

-
普通模式下移动到上一行的第一个非空白字符处 
in normal mode, how do you move to the first non-whitespace character of the previous line

:wq
write the file and quit.  This is basically here just so that there's something in the "Known" queue.
