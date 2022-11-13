
1)ctrl+alt v toggles VIM mode from VS code.....
1)pDot as here macro* ONE KEY TO mOVE - ONE KEY TO EXQ!!!!!
2)yfs (etIfcib you wanc)
3)ctrl V + ascii code in insert mode!!!! or CTRL K for diagraphs
4)viw(think in terms of visual yy-ing!!!!
5)gv re-highlights last highlighted-block
6)Visual block cursor trick only effects top line while in insert mode
7)gj and gk are your friend!!!!
8)remember marks can do lines ie 'a
9)Here is the magic formula :0 norm "aP (amen!!!!)
10)/choice\|end\zs === the magic mapper
11)shift + arrowkeys in insert mode to move by word!!!
12)Vim remembers last search and can be reactivated with just a press of /!!!
13)Number in front of search term jumps to the x-th hit!!!!
14)note 6* takes you to the x-th occurence of x!!!!
15) ea ====> lat ====> mdh i
16):.,4y etc etc etc!!!!!
17):1,$ etc etc etc!!!!
18):.+1,+3y
19):1,10y a (how to yank to particular register)
20)Using a capital letter appends - rather than replaces to a register is "Ayy = prev yank + new yank as bloody big string!!!
21)Using the p?/{ to get function definition from inside {}!!!!!!
22)g/dog/ s/dog/cat/g - replace dog with cat on every line with dog on it
23)gM - moves to the center of a line!!!!
24):5,$-1d  from five to less than one...
25):g/dog/d d - delete dog and stick doggy in register d
24):5,$-1d  from five to less than one...
26) :g/^#/t0 - move all lines starting with hash to the top of the file
:s/pattern/replacement/ 10 - repeat ten times... from current line
:1,10s/pattern/rep/ 10 - that'll be the first 15 lines then..
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
39: [{ prev unmatched  {        }] } -----as above!!!:w
40: :g/^/,/./-j reduces multiple line breaks to a single line break. VIM complains but it works!!!
41: Remember g!/salsa/d === :v/salsa/d !!!!!w
42: "1p---->returns last delete, "2p ---->the second to last delete - all the way up to 9 special delete registers...(seems to work with lines rather than words!!!!)
43:1pu.u.u.u.u. (etc) scrolls thru delete buffers!!!!!! it works!!!!
44: gd === n to defintion (local) gD go to global definition
45: /line/3 or (-3) also /line/b3 or (b-3) to move cursor.  Note possible use to change contiguous words during jumps!!!! and this works with the dot operator
46: "-p is the SMALL Items delete hole!!!!
47: Blank 0's in column can be incremented by v-highlighting - and then pressing g+ ctrl A spherical 48: :%/n.*/\0\r - puts a line underneath ever line containing wood.
49: :10d | 11d -----> we can run more than one ex-comm this way
50: :put =range(1,0) - draws 1-10 list over ten lines.'?A
51: :terminal opens terminal in VIM mode:0!!!!
52:it's the U that governs the case in - cos g does other things! guaw!
53: Adding + or minus to a number in normal makes you jump or up or down that many lines, to the start of the text.  No motions.  No colon
54: :%s/match/!!/n - counts how many occurences!!!
55: :g/nolongeradog/ s/animal/manimal/g - on the lines containing x - change y!!!!
56:use viw as a mark and hit with gv and got to proper mark.....
57:gM calculates it's median in characters!!!
58:HLM - move cursor in present viewport!
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
73:ci" and ci( always get their man (pair!!O!!!)
74:ctrl t in terminal gives a scrollable cli list of abailable files!!!!
75:Ctrl+K on nvim tree gives files size and full path!!!
76:Highlight using vi[ etc and breaking out with esc takes you to the end of the block!!!:w
77: YIB YAB YI< YA> YI{ etc are psychic :) - but not in VS code :(
78: :20 norm Vp - how to paste a line to a line!
79:shift l/h jumps between buffers!!!!
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
93: ctrl + {} jumps to next blank line in one or other direction!!!
94: '. takes you to last edit line but doesn't jump into insert mode
95: g; takes you to last edit  but doesn't jump into insert mode
(also think comma!!!!!)
96: vit/dit/cit work on html
97: :r!echo %:p:h - get  active directory path
98: r!echo %:p - get file
99: cat/dat/vat highlight tags and everythin in between....
100:gd is like f12 in vscode......
101:gD opens refs in vscode.....
102: cE cuts until blank space hit....also see dE.....yE
103: O goes to left/right in vblock - but not in Vline....
104: g; leaps can be numbered ie 2g; so we can go back in time....
105: ``jumps to last jump, '' is similar....`0/`1 etc goes to jump position in sequence...
106: Jumps can be toggled with g;/g,!!!!:w
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
124:alt p-alt n move to next instance in auto highlight. Doesn't work in vscode!!!
(however - the * locks and loads!!!!)
125:v% starting at { takes in whole block!!!! (also see d/y etc)
126:yap - yanks all paragraph!!!!
(note that VAP will take on a whole function block!!!!)
127:+/- moves to first non-whitespace on next line!!!
128: use gu and gU with text objects!!!!
129: `[  `] are markers for last lanked text!!!!
130: di" only works on same lines....
131:shift L(ow) takes cursor down to bottom line in viewport(shift H(igh) does opposite)
132: shift ( goes to top line of current para - if all ()pairs match!!!
133: shift { goes a line above that!!!!
134:xx% moves you to that point in the file!:w
135: 25| etc in terms of line movement!!!
136: ctrl-] is the same gd ie go to definition!!!
137:last positon of cursor in insert mode
138: [p same as P!!!
139: '['] work on most recently changed text as well as yank!
140: the /pattern -V-line nN combo is special....esp with columns of identi-text! 
eymap search via telescope in LVIM = ctrl s + k
141:v selcted areas hit with * or / search for the whole highlighted area...
142: g_lD is the cure for trailing whitespace!!!!:w
143:  gcc triggers comment.  also gca for block and gco gcO
144:space+3 sets off terminal!!!!
145: :wqa  Save changes for all files and quit (also wa and qa do what they say on the tin)
