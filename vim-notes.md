1)pDot as here macro* ONE KEY TO mOVE - ONE KEY TO EXQ!!!!!
1)ctrl+alt v toggles VIM mode from VS code.....
2)yfs (etIfcib you wanc)
3)ctrl V + ascii code in insert mode!!!! or CTRL K for diagraphs
4)viw(think in terms of visual yy-ing!!!!
5)gv re-highlights last highlighted-block
think how this can be used more marking purposes!!!!
6)Visual block cursor trick only effects top line while in insert mode
7)gj and gk are your friend!!!!
8)remember marks can do lines ie 'a
9)Here is the magic formula :0 norm "aP (amen!!!!)
10)/choice\|end\zs === the magic mapper
best use for let/const. don't need the zs!!!
11)shift + arrowkeys in insert mode to move by word!!!
12)Vim remembers last search and can be reactivated with just a press of /!!!
13)Number in front of search term jumps to the x-th hit!!!!
14)note 6* takes you to the x-th occurence of x!!!! 15) ea ====> lat ====> mdh i
16):.,4y etc etc etc!!!!!
17):1,$ etc etc etc!!!!
18):.+1,+3y
19):1,10y a (how to yank to particular register)
20)Using a capital letter appends - rather than replaces to a register is "Ayy = prev yank + new yank as bloody big string!!!
21)Using the p?/{ to get function definition from inside {}!!!!!!
23)gM - moves to the center of a line!!!!
22)g/dog/ s/dog/cat/g - replace dog with cat on every line with dog on it
24):5,$-1d  from five to less than one...
25):g/dog/d d - delete dog and stick doggy in register d
24):5,$-1d from five to less than one... 26) :g/^#/t0 - move all lines starting with hash to the top of the file
:1,10s/pattern/rep/ 10 - that'll be the first 15 lines then..
:s/pattern/replacement/ 10 - repeat ten times... from current line
27)norm 3wdaw - the holy grail patten!!!!
28):15 norm 3wdaw
29)Lower case every line with "useless" - :g/useless/norm gu$
30)remember that # is the inverse *
31) :g/mouse/y (yank line with mouse in it!!!!)
32: :g/G/ norm 13i woo
31: d^ === whitespace killer!!!!!
34: The dollar sign following a n takes you down and to the end - but you might need to add an extra number to it n exactly where you wanna gow
35: control up and control down - think "CUD"
36: y'm ======> ie yank now nes multiline!!! (works above and below)
37:D deletes even a part highlighted line in visual mode
38: [( prev unmatched (        )] ) ----- all nod for debugging - matches unmatched bracket
i.e. function jumping use
39: [{ prev unmatched  {        }] } -----as above!!!
40: :g/^/,/./-j reduces multiple line breaks to a single line break. VIM complains but it works!!!
41: Remember g!/salsa/d === :v/salsa/d !!!!!w
42: "1p---->returns last delete, "2p ---->the second to last delete - all the way up to 9 special delete registers...(seems to work with lines rather than words!!!!)
43:1pu.u.u.u.u. (etc) scrolls thru delete buffers!!!!!! it works!!!!
45: /line/3 or (-3) also /line/b3 or (b-3) to move cursor.  Note possible use to change contiguous words during jumps!!!! and this works with the dot operator
44: gd === n to defintion (local) gD go to global definition
46: "_p is the SMALL Items delete hole!!!!
47: Blank 0's in row can be incremented by v-highlighting - and then pressing g+ ctrl A spherical
48: :%/n.*/\0\r - puts a line underneath ever line containing wood.
49: :10d | 11d -----> we can run more than one ex-comm this way
50: :put =range(1,0) - draws 1-10 list over ten li
51: :terminal opens terminal in VIM mode:0!!!!
52:it's the U that governs the case in - cos g does other things! guaw!
53: Adding + or minus to a number in normal makes you jump or up or down that many lines, to the start of the text.  No motions.  No colon
54: :%s/match/!!/n - counts how many occurences!!!
55: :g/nolongeradog/ s/animal/manimal/g - on the lines containing x - change y!!!!
56:use viw as a mark and hit with gv and got to proper mark.....
also `< and `>!!!!!
57:gM calculates it's median in characters!!!
58:HLM - move cursor in present viewport!
think yH or yL --- these have uses!!!
59: :.,+3y - current line  3 yank from cmd mode!
61: yank work, viw, paste ----> easiest word make byeee!!!!
62: :g/snood/-1 - delete line above match
63:  :put =range(1,100)
64: +- allow for relative number use in ex mode
65: :30,60w tofu.js
66: :61w>>tofu.js ======> The stupendous appender!!!!
67: w: %.redtofu =======>copy file!!!!
68:    :e! ======> returns to last save point
69: 138;141y - yanks the range - and moves cursor to 138!!
70: /[^t]hoice/
71:0put_ --- puts line at top - has to be long form...
72: :.-5 -alternative form of relative syntax
73:ci" and ci( always get their man (pair!!O!!!))
74:ctrl t in terminal gives a scrollable cli list of available files!!!!
75:Ctrl+K on nvim tree gives files size and full path!!!
76:Highlight using vi[ etc and breaking out with esc takes you to the end of the block!!!
77: YIB YAB YI< YA> YI( etc are psychic :) - but not in VS code :(
78: :20 norm Vp - how to paste a line to a line!
79:shift l/h jumps between buffers!!!!
not it doesn't!!!! ctrl-i/o???
80: q: in normal mode or ctrl-r in command gives  used command list!!!
81: :30t. - paste line 30 under present line
82: /\%Vfoobar - how to search in visual selection only!!!
83: ctrl w + n = new window at bottom
84: ctrl -w s  open second window on present file
85: ctrl + alt + y deletes lines in vscode!!!
86: ctrl-V + J joins lines en mass!!!!
87: DAP and CAP etc follow a similar pattern to shift - {} jumps!!
88:shift A and shift I are easily forgotten....
89: [[ and ]]  are alternatives for the gg/G commands!
90: gp --- pastes item and puts cursor on line underneath....
91: :sp and :vsp are the shortcuts for split!!!and work in VSCode too!
92: ctrl e + y (move by line cursorless)
93: shift + {} jumps to next blank line in one or other direction!!!
94: '. takes you to last edit line but doesn't jump into insert mode
95: g; takes you to last edit  but doesn't jump into insert mode
(also think comma!!!!!)
also takes count correspanding to the table at :changes
96: vit/dit/cit work on html
97: :r!echo %:p:h - get  active directory path
or indded ctrl-r + % in ex/insert mode!!!
oo98: r!echo %:p - get file
99: cat/dat/vat highlight tags and everythin in between....
100:gd is like f12 in vscode......
101:gD opens refs in vscode.....
102: cE cuts until blank space hit....also see dE.....yE
103: O(o not 0) goes to left/right in vblock - but not in Vline....
104: g; leaps can be numbered ie 2g; so we can go back in time....
105: ``jumps to last jump, '' is similar....`0/`1 etc goes to jump position in sequence...
106: jumps can be toggled with g;/g,!!!!:w
107:ctrl-l clears terminal!!!!!
108:you can use counts with shift+{!!!!!
109:the shift ()jumps from white space to para to white space!!!!
110: :norm m' logs location on jump list!!!!
111: vab ca(y are legitimate norm comands!!!
112: U and u do the ~ work as well as ~ in visual mode!
113:subs can be done in higlighted area..... V + :s/ etc
(note this works in visual block mode too!!!!)
114: v3j does three lines - and then norm command can be used to paste to range ie :norm I// etc
115: '< and '> hit the beginning and end of a visual selection.
116:ctrl o+v enters visual inside insert mode
117: bi and ea move to ins/app at end of the word....
118:control T indents in insert mode and ctrl-D does the opposite.
119:Also H/W (think hannah!!!!)to kill words and characters in insert mode!!!
120:ctrl+r opens paste registers in insert mode
121:3- or 3+ is the vway of using rel numbers
122: shift+J unites line.  Keep cursor on upper line!!!
123:In ? or / mode - just entered up/down arrows scroll thru prev searches
124:alt p-alt n move to next instance in auto highlight(illuminate!!!). Doesn't work in vscode!!!
(however - the * locks and loads!!!!)
125:v% starting at { takes in whole block!!!! (also see d/y etc)
126:yap - yanks all paragraph!!!!
(note that VAP will take on a whole function block!!!!)
127:+/- moves to first non-whitespace on next line!!!
128: use gu and gU with text objects!!!!
129: `[  `] are markers for last yanked text!!!!
130: di" only works on same lines....
131:shift L(ow) takes cursor down to bottom line in viewport(shift H(igh) does opposite)
132: shift ( goes to top line of current para - if all ()pairs match!!!
133: shift { goes a line above that!!!!
134:xx% mos you to that point in the file!:w
135: 25| etc in terms of line movement!!!
136: ctrl-] is the same gd ie go to definition!!!
137:last positon of cursor in insert mode (gi????)
138: [p same as P!!!
139: '['] work on most recently changed text as well as yank!
140: he /pattern -V-line nN combo is special....esp with columns of identi-text! 
keymap search via telescope in LVIM = ctrl s + k
141:v selcted areas hit with * or / search for the whole highlighted area...
142: g_lD is the cure for trailing whitespace!!!!
143:  gcc triggers comment.  also gca for block and gco gcO
144:space+3 sets off terminal!!!!
145: ce chops words cleanly!!!!!!!
146: YAS and VAS target better than YAP/VAP!!!
147: Yank all takes cursor to top of block - disrupted visual fill takes to the bottom
149: ctrl a/e takes cursor from end of text to other end on command line.
149: V+r turns every non-blank character to the replacement char!!!!
150:W and B jump between key value pairs!!!!2 sends you underneath 4 2 under etc....
(think JSON)
151:vas-as-as-as-as highlights additional paragraphs!
152: old: gives us a sequential list of files I just worked on!
153:remap ctrl-c better than esc to escape insert mode!
154:Macros are nothing to be scared of.  q+any-letter+key-strokes+q leaves us trigger with @+letter
155: !!date inserts date in normal mode!
156:   q: gives us navagatable used command list
157:50iabc gives abc 50 times!(on one line!!!!) in NORMAL mode!
158: gn......goes back to searching last search
(even with nohl off!!!!!)
and gN matches last match.....goes straight into visual mode....
159: gE follows the reverse pattern - think "backend versio of B"
156:insert mode needs ctrl-o to use zz....
157:ctrl+r+0 to paste in insert mode!
158: :90t90 ===== move a copy of line 90 BELOW line 90.
159: :t$ --- moves current line to the bottom (argument after motion is the move to - argument before is they payload!!!!)
160:the same can be done again from entering :ex from visual mode!!!(but not block)
161: :%norm I// =======> every line in file hit!!!!!! :)
162: :%norm D is the great file nuker!!!!!!
163: if you use a non specific norm command... ie :.,+2 norm A **...
@: repeats the command.... like the dot-operator would do a normal one!!!!
164:ctrl-r + ctrl-w posts word under the cursor...(or ctrl-a to move W(ord))
(imagine the above technique with a :%s command!!!!!!)
165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all165: :%s/pumps//g is the correct technique for "kill all"
166: q/ brings up search history!!!!
167:move and copy command in :ex work perfectly from visual mode!
168:control-f opens up recently used command window in :ex mode!!!!
169: :ls + ctrl^ gives us fast buffer navigation - use buffer number in front!
170: :b + buffer list number is instant jump.....yay!!!!!
171: :ju gives us jumplist 10+ctrl-0 (or whatever number)....acts as a portal
172: Macros.....unlike the dot can take counts BUT you need to bake in a motion!!!!
173: /[0-9]/ search any number. /[A-Z]/ search any upper-case number
174: . is a universal wildcard in regex
175: the ^$ modifiers in regex come at the end of the statement!
176:nvim -p s.js s.css s.html opens everything in tabs!!!
177:ctrl-K gives full path data in nvim-tree!!!
178: :w ~/Desktop/poo.js is the model of none project directory saving!!!
179:browse old[files] is another
180: :pwd gives working directory :cd does what it says on the Tin.
181:insert mode + ctrl-o + /poopy takes you to next instance of. In insert mode.
182:ctrl-x + ctrl-e or ctrl-y allows us to scroll in insert mode.
183: >4j indents next four lines!!!
184:v-mode allows for multiple line indentation using >
185:A macro is a "executed register!!!!"
186:row of 000000s, vis-block + g + ctrl-a === sequntial increment
187: :%s/^\n removes all empty lines in a buffer.
Run :g/^$/d to delete all empty  elines.
• Run :g/^\s*$/d to delete all blank lines.
188: r: 999.txt is how to insert text!!!!
189: :put =range(1,10) gives us quick multt-line range!!!
190: gn - go to last search term
191: :goto25.......takes you to the 25th char - in file!!!!
192:shift + arrows jumps from word to word in insert mode!!!!
193: :/poo finds the first poo from the top of the file!
:?/poo finds the last one....
194: :r! date is an example of how to insert command output into file!
195: :reg shows us the contents of the delete register!
:?/poo finds the last one....
194: :r! date is an example of how to insert command output into file!
195: :%d ---- + ---- :y% (doesn't work with vis)
196: :g/^$/d is the universal blank line nuker!!!!
197: :abbr x xmen ---- is how abbreviations work!!!! - also note :ab works!!!
198:visual selection + sort sorts linewise - sort !does it reverse sort i is case insenesitive. sort u removes duplicates!!!!
199: gD targets global declaration
200: ctrl-0 allows one norm mode hit in insert!!!
201: g~~ does whole line case flip!!!
202: in fact gU or gu and the usual text object gang!!!
203: :bufdo! applies subsequent command to all open buffers - esp useful in search/rep!
ie :bufdo %/sausage/snake/g
204: :tabdo does something similar - but doesn't like the !bang!!!!!
205: "%p gives us file name! "/p is the last search term!!!! ""p is last used register!!!
206: ctrl-X on nvim-tree opens file in split window!!!
207: // + ?? repeat last search!!!!
208 ]i gives list of all instances ]of the word under the cursor!!!
209: :vimgrep sausage \*.js finds all sneks in current directory... :cn moves to next match!!!
and :clist gives us the list and :cc 12(etc) allows us to jump direct!!!
210: to recursively do the same in subfolders :vimgrep sausage **/\*.js
211: :match ErrorMsg /the/ turns every "the" match red!!!

ErrorMsg: Red (for error messages)
Search: Yellow (for search results)
IncSearch: Yellow (for incremental search matches)
Visual: Blue (for visually selected text)
CursorLine: Gray (for the current line)
the pre-defined color schemes are • ErrorMsg(red) • WarningMsg(Mustard) •
ModeMsg(bold) • MoreMsg

(there will be a way to edit color scheme color in the lua!!! )
:help highlight
212:Toggle fold with za!!!!!
213:3rx === xxx!
214:ctrl-l gets rid of annoying pop up boxes!
215: nvim -c 150 bagels.rtf --- open file ----at line 150!!!!
216: nvim -c /poo bagels.rtf ----opens up on first instance of "poo"
217: nvim + bagels.rtf ---- open file on last line!!!
218: nvim -R bagels.rtf === open in read only mode!!!!
219:On command line set ups - search line patterns can be used as arg ie 1,/poo!!!
220: 1,13w >> 999.txt pipes selected content into a new file!!!!
221: e 999.txt ---- opens file in buffer!!!!
222: 10,15d x ======>deleting to reg-x in ex mode!!!!
223:pu x -- is the same as "xp
224: :s//~/ repeats last search!!!!(on line!!!)
225: :setlocal spell --turns on spellchecker!!!!!
226: [[]] [( ]) [{ ]{ etc all work with ydv etc!!!!
227:3H is 3 down from top of viewport...3L is 3 up!!!!
<<doesn't work with M!!!!>>
228: :/pete/+3d deletes line 3 lines after pete match!!!
229: v/om d/om c/om etc etc etc......
230: :e # go back to previous file!!!
231: 23;35y ======> this formulation yanks like 23,55 and moves cursor to 23!!!
232:saveas ~/some/path/: save your file to that locationvim
233:gx opens web-links in browser!!!!!
but gf goes there in VIM!!!!
234: args a.txt b.txt c.txt creates list to operate on....then use argdo! :)
235: :'<,'>s/\%Vfoo\%V/bar/g --- this is the pattern for replace in vis-block mode
236: :sba turns all buffers into windows!!!!
238: :bd 3 ----- closes buffer numero 3!!!! or :bd 35 or :bd 3,5
237:buffer delete trick :bd _.js ctrl-a + ctrl-a and all the js is gone!
239: :bufdo bd ------ nukes all buffers!!!
240: :tabonly closes all tabs except present one!!!!
241: :bufdo normal @a --- fire macros over multiple buffers
242: nvimtree y+x yank, t jumps to, f filters m marks
243: S in surround - in visual mode.....does the buisness!!!
the S bomb in vb mode puts whatever on every line!!!! - in tag mode gives emmet a money run!!!!
244: :m+2 :t-3 etc!!!! THE BEST WAY OF USING THIS!!!!
245: sort rationalises properties in css with laser precision!!!
246: :spellr places z= change on all remaining instances during spellcheck!!!
247:ga gives you data about char under cursor....
248: :%norm applies norm command to every line
also works with "surround"!!!
249: :g/cup/m$ --- move all matches with cup to the bottom :)!!!!
250: highlight TrailingWhitespace ctermbg=red guibg=red
call matchadd("TrailingWhitespace", '\v\s+$')
251::e +10 some_file.py - open at specific line inside vim!!!
252:how to use macros like smart-bombs-examples to follow....
:'<,'>normal! @a
10,15normal! @a
:g/pattern/normal! @a
253: yl ---> yank char!!!
254:Xp (reverse backwards rather than forward)
255: ctrl-a/k take counts...255: ctrl-a/k take counts...
256:  ctrl-r + % gives us file name!!!
257: in] il< move to next one using "targets"
258: H + L take counts....
259: :1,$......the whole bloody file.....!  
260: ctrl page up/down trick works in VIM
261: 50GV100G - highlights like command mode!!!
262: :tab ball - opens all open buffers into tabs
263: e: poopy.js - another way of creating new file
e: classiclyh short nhand for open another file!
264: a on file tree creates new file - as well!!!!
265: g+ctrlA increments colu,m of zeros to 12345678910
266:put=range(10,0-1) === gives us reverse range 10,9,8 etc
267:put=range(5)=0-4.....
68:put=range(0,10,2) ===> 3rd argument gives increments of two
269: t and m can be used with visual mode and marks!!!!!
270: :g/bagel/ normal gcc --- the great comment out technique!!!!!
271: d/poo === dtp d/poo/e === dtf
272: :$r job.txt ----- r art bottom.....also see line numbers and 0!!!!
272: :/penis/ r job.rtf ----> in the line under penis!!!
273: 1,10y b ---- this is the methodology to yanking to reg b!!!
274:"c60yy - copy the next 60 lines to c reg!!!
275: :-6,:5y is the backwards pattern!!!!
276:-5,:y is the way of going to line
277: mksession session can be recalled be using source <name>.....(seems to work only in local dir!!!)
278: alt-n and alt-p toggle between highlighted word matches using "illuminate" plug in!!!
279: ctrl-w + = equalises splits!!!!!
280: ctrl-w + c closes present split!!!
281: :vsp ==== ctrl -w v, :sp=== ctrl-w s
282:y/v/d can all take (num)dir ie 5Vj etc!!!!!
283: :ju list item number + ctrl I(or O depending) takes you to buffer in list!!!!
(also ctrl-o stands for "old")
284: changelist + count + num +g+; jumps tp change list item eg 2g;
285: -2/+2 go to starts of line, J/K go above/below directly.....
286:note that :-5,:y and :,+4y are quite different!!!  
287: 1+ , 1- are nice analogues to O and ^!!!!!
288:v === v34|-till-word 34 etc
289: ctrl^ === alternated buffers....
290: `(  etc goes to top pf sentence....
291: `{ goes to start of paragraph
(note last two hacks the equivalent of shift + (){}....)
292:remember that "o" flips from top to bottom in V mode!!!
293: 2gt etc tabs take motions....
294: :tabnew - opens a clean tab!!!!
295:tabs lists all extant tabs!!!!(also buffers)
296:num + ctrl^ jumps tp specific buffer from buffers
297: arge booger.html adds booger to argument list....
(works with multiple arguments on an empty list!!!!)
298:first/last/next/previous are the :ex commands for args!!!
299: :grep "willies" _.js ====> adds every instance of js to qf list!!!
300: grep -r makes search recursive in directories. _ is a wildcard on it's very own!!!
ie grep -r "fist" _
301: Telescope ctrl-q sends telescope results to qf list!!!!
but alt-q sends individul items!!!!
302: :cc60 - jump to the entry |60| on list....
303: :cdo s/foo/bar/g ----> global change command!!!!
note | update would ususally write changes after regex but vim broked!!!
304: :vim opens vimgrep -----> % is the modifier to search present buffer
305: ## is the grep ending for arglist!!!!
306: lvim is the locallist populator!!!!!
307 s) or s" is the line operator in "surround"!!! 308) ysiw<p> is the targets tag grammar!!!
309)'m-3y etc.........:w
310):'m+1 311) /whoops ======> y//e is the code to yank nohl areas!!!! 312) :ab ww ()=>{} works at session level!!!!!
and :una ww reverses it!!!!
313):.! date --- shoots output inyo file from ex 314) bye yanks word.... 315) g:/biff/# ==== gives local location list of search pattern
316)It's not well documented - but the line operator is _ ie d_ takes a line out!
317)gc\*\_\_ is am operator on text objects (like gu/gU!!!)

<!-- 318)you can have more than qf list :chi lists... :col/cnew allow jumping! -->
<!-- 319)Recursive search using VIM grep... :vimgrep TODO \**/*
320) ctrl-l is better than "clear" in terminal..... -->

321)""p liberates text selexted with telescope clipboars chooser 322) `^ makes up for the missing "gi" capability on my present rig!
but jumps in normal, rather than insert mode!!!!
also note....can be used as mark without changing text!!!!! 333) %!uniq removes duplicates (my god AI found this one!!!) -->
334)Use :g/^/m$ to reverse the order of lines in a buffer.
335)use abs+10 or -10 to strike particular lines from present location!
336)ctrl-w + r rotates windows :0!!!!
337)Ctrl-w+ = equlaises all windows!!! 338) :g/toot/d =====> note that toot here is a regex!!!!!
339)! sort -u also removes duplicates in a selection
340)2dk - deletes upwards....obvious but useful 341) :g/tabs/norm A// ----> gives us comments on all lines with "tabs"!!!! 342) + and minus are like zero for the lines above/beneath!!!!!
343)Easilt forgot d/regex y/regex ----also works for v mode!!!
(don't forget the magic on the n-key but only in "V" mode!!!!)
344)^$ is the regex for "blankline" ie
:g/^%/norm A bunny gives us bunny on every blankline 345) :g/app/norm O ========= puts equals line above every instance of app
346)similar tactic for comments :g/app/norm O //this is an app
347)Indent all lines that contain "for" with two spaces: :g/for/norm >>
348)Remove all instances of "this" on lines that contain "class": :g/class/s/this//g
349)Add a blank line above every line that contains "import": :g/import/norm O
350)Remove all text after the word "stop" in all lines containing the word "go": :g/go/s/stop.*//
351)Remove all lines containing both the words "red" and "green": :g/red/&&/green/d
352)Remove all lines containing either the words "blue" or "yellow": :g/blue\|yellow/d
353)Remove all lines not containing the word "hello": :g!/hello/d
also remeber :v mode!!!!
354)Move all lines containing the word "example" to the line before the last line: :g/example/m-2
355)Remove all text before the word "stop" in all lines containing the word "go": :g/go/s/.*stop/stop/
356)Remove all lines containing a number: :g/\d/d
357)Move all lines containing the word "banana" to the end of the file: :g/banana/m$
358)Sort all lines that contain "list" alphabetically: :g/list/sort
359)Insert a new line after each line: :%g/.*/norm o
360)Insert a new line before each line: :%g/.*/norm O
361) :g/)/norm f)cib ===== this empties all curly brackets!!!  
362) :%norm is a global file operator!!!
363)Use :g/<pattern>/s/<search>/<replace>/g to replace <search> with <replace> on every line that matches <pattern>. 364) ctrl x/a + number inc/decs by that much!!!! 365) va} followed by :sort ----->sorts css rules!!!! 366) g:/\/\\d is the comment destroyer royale!!!!! 367) g:/^/ m '< ----will reverse every line of a section but the note one!!!
368: "%p gives us the filename!!!! :0!!!
369: :%ri align all text to right :%ce && :%le ar the others!
370: ":p - prints last inserted text
371: "*"d sends the fuckers to oblivion!!!!(black hole register)
372: :%norm csw"A: "", is MAGIC." "preps strings into objects "
373: :let @+=expand("%:p") puts canonical filepath in reg!
("%#p") =====> gives us name
374:or just use :r realpath % !!!!!
375: ge is like "b" but always jumps to previous word!
what i do is use Telescope live"\_grep to search for the particular thing i want to replaced then press <C-q> which adds all those files in quick-fix list then :cdo s/<find>/<replace>/g here <find> is the word you want to find and <replace> is which you want to replace with.
cfdo is even better than cdo
cdo will run a set of commands over each element in the quickfix list, while, :cfdo will run it over each file in the quickfix list. Therefore, we will not run the same command twice."
:cfdo %s/ugly/funny-looking/g | update
376: :-2t. ======== copy line -2 below present line!!!
378: :.m$ --------move present line to bottom!!!
379: y[[y]] work as commands!!! (as does ygg yG)
380: y-5 is like 5yy in reverse!!!
381: ctrl o + ctrl o opens last edited file
382: ctrl-p gives us autocomplete in insert mode
383: ctrl[ is same as esc (for insert mode)
383: :1 put b ========> posts reg b after line one
383: in ex mode ctrl-w, ctrl-r posts word under cursor
or ctrl-a if we want the WORD!!!!
384:u+ctrl-r takes us to lat change
385: :colder and cnewer allow us to have multiple change lists!!!
388: ctrl-n in insert mode gives use alternative options for a word!!!
389: whole word search is /\<word + \>
ie pyramid+bracket+word+slash+closing bracket (got that???)
400: ctrl-O+O i=s move to next line in insert mode...and "o"
386: ctrl-U is insert mode version of d0
387: ctrl-J gives us line insert!!!!
388: ctrl-H gives us insert mode delete!!!
389: ctrl-W gives us delete word backwards....
390: ctrl- arrow gives us word to word jump!!!!
391: fn+home/end does 0/$ in insert mode!!!
392: If you search using fi/fg/fh (etc), search can be fired elsewhere with ;/,!
393: 3yaw gets next three words, 3yiw doesn't...
(same with d verbs....v acts differently...)
394: yss" is the surround line operator!!!
395: ys2aw" is the magic code to tag two words!!! "hell yes"
(2ysaW" also works)
:396 :ls! gives us access to scratch buffers! changes persist!!!
:397 m' adds a location to the jumplist!!!!
it automatically becomes :ju0
:398: y2- yanks three lines up, y3- four etc
:399 :2s/foo/bar is fireable elsewhere using &
:400: 0000 + 3 + g + ctrl a === 3-6-9-12;
:401 /foo/2 ----this would take me two lines after foo. works neg!!!
:402 34z - makes 34 top line, also z+enter(top) and z-(bottom)!!!
:403 colorscheme gruvbox-baby .....changes colorscheme!!!
:403 90gM - goes to 90% of line - but gM is 50%!
:404: dV% - destroys code block on top line (or bottom bracket) of code block
:405 so $VIMRUNTIME/syntax/hitest.vim - gives us all in-built color groups!!!
:406 :ls lists buffers and :b34 (say) jumps to buffer 34!!!
:407 ]p === print under present indentation level
:408: & repeats last substitution
:409: g& applies last subsitution to every line
:410: command line trick for muiltiple files touch file-{1,2,3,4,5}.txt
411: y+ yanks line+ 1 y- yanks line-1, both take additional numbers ie y2+
412: In insert mode...alt+J moves line then reverts to normal mode
ctrl-0 + J retains insert mode.
413:normal mode ctrlx+ctrlf gives us auto complete filenames
414:ctrl-n gives us snippets.
415:ctrl-p gives us less impressive auto-complete.
416 5z. - centers on line 5
417: :$ === G \*it's not just divers that go down!!!!!!!
418: :-6y - yanks relative number
NOTE THAT THIS THE OPPOSITE TO THE Editor word order
:6-1y - yanks line 5!!!!
419:gc- is a nice addition to the arsenal!
420: _+# find exact matches. g_/# find partial matches
421: ZZ quites with saving ZQ quits without
422:ctrl+space+w gives us visual t-mux set up!!!
423:Ultimate function grabber /\{[/s/S]_?\} and |{[s/S/]_?\} as agglutinive
424: alt+pjkl etc breaks directly out of insert mode.
425:It eas too easy to forget g; +g, to navigate change list!
:426 :grep foo + cope to access quicklist
:427 :clist gives you the numbered version - which you can use :cc4 with
:428 :lgrep for local list
:429 :chistory gives us the search list.... :colder/:cnewer toggles
:430: grep poo % searches only present file
:432 :clist is global :llist is local
:433 1gt 2gt 3gt 4gt as shortcuts!!!!!
:434 llist/clist take up specific buffer space
:435 grep foo % | clist - is how to open up qfix window automatically
:436 :tab sbuffer69 takes Item from buffer list and opens in new tab!
:437 :tab sbuffer opens present buffer in new tab
:438: ctrl-t opens new file in tab in both NERDTREE and telescope!
:439: tab sball - opens all buffers as tabs
440: tabdo bdo ldo cdo etc.....
441: :tabe foo.js - is how we Ex mode open into a tab
442: sb 69 opens in split, but :vert sb69 does the verticle equivalent
443: but sp/vsp open regular files --- sb is buffer!!!
444: also tab sb15 will open buffer into tab
445: but it has to be tabe foo.js when opening files
446: to open two tabs at one :tabnew foo.js | bar.js
:447 args foo.js bar.css or \*.js but :argadd foo.js to add to list
then argdo can be used!!!!
:448: argdelete kills the args list
:449: argdel foo.txt removes item off the list
:450 bdel works similar ie bdel foo.js
:451: to keep quickfix on buffer list - move to other file then close split!!!
:452: This works for local list too!!!!
:453: argadd 69 (or whatever) adds to quickfix list to args!!!
:454 /[[:punct:]] - searches for symbols!!! It's POSIX
:456 ctrl-p posts telescope clipboard selection!!!
:457 /o\{2} would match "oo" ie o exactly twice!!!
:457 e\{3,\} ie 3 eees or more!!!
:458 /t[ao]t is perfectly acceptable
:459 /[A-Z] and /[0-9]
:460 however for both [A-Z0-9]
:461 in insert/ex mode ctrl+reg pastes in contents of reg
:462 the following allows me to add present file to the qf list
(in ex mode)
call setqflist([],'a',{'items' : [{'filename': 'distinct.js}]})
:463 - the locallist equiv is
call setloclist(0,[],'a',{'items':[{'filename':'date.js'}]})
:464: :$ norm "yp to copy from reg to bottom
:465 tiling mode in POP os gives you emacs .pdf capabilities!
:466 :tab split - opens present pane in new tab!!!!
:467 when using :argdo %w>>6.md - make sure that 6.md is not open on buffer
:468 :argdo %norm dd - is the command to clear
actually argdo %d works pretty well(ssss)
:469: argodo 2,$d kills everything on list but top line!!!
:470 :argo 0put a | update - the command for putting text at the top
:471 :argo $put a | update - the command for putting text at the top
note |update causes the file to autosave!!!
472: :%bd - kills all open buffers!!!
(however arg list buffers are not nuked!!!)
473: | update as end on :ex commands ensures writing to file!!!
474: "dd" removes harpoon entries!!!!!
475: X kills character to the left!
:476 yi) etc ie yi].... "i" always pertains to the char nearest the ({
but vi( is the same as vi) for the same reason...and pertains to last char
first and last char are often arguments!!!!!
:477 and I gives similar Capability upwards!!!
:478 ?foo is perfectly efficacious for jumping upwards.... q? is a list!!!!
:479 ctrl-w + f opens in buffer link in new window
:480: ctrl-w + T - turns window into tab!!!
:481 also...Ctrl-w \_: Maximize the height of the current window.
Ctrl-w |: Maximize the width of the current window.
:482 :only closes all windows bar present one.
:483 :winmd + hjkl rRx etc works in ex-mode!
:484 gn puts search into vis mode and gN....well guess
:484 insert mode + ctrl-o + n jumps to next occuence and stays in insert mode
and doing the above with gn, puts you in a nested visual mode with insert!
:485 "\*p pastes from browser/pdf etc!!!!!
