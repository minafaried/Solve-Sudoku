sudoku([
    x,2,6,x,x,x,8,1,x,
    3,x,x,7,x,8,x,x,6,
    4,x,x,x,5,x,x,x,7,
    x,5,x,1,x,7,x,9,x,
    x,x,3,9,x,5,1,x,x,
    x,4,x,3,x,2,x,5,x,
    1,x,x,x,3,x,x,x,2,
    5,x,x,2,x,4,x,x,9,
    x,3,8,x,x,x,4,6,x]).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).

squares([
          X11, X12, X13, _, _, _, _, _, _,
          X21, X22, X23, _, _, _, _, _, _,
          X31, X32, X33|_],
        I,
        [X11, X12, X13, X21, X22, X23, X31, X32, X33]):-
     I=0;I=1;I=2;
     I=9;I=10;I=11;
     I=18;I=19;I=20.
squares([
          _, _, _, X14, X15, X16, _, _, _,
          _, _, _, X24, X25, X26, _, _, _,
          _, _, _, X34, X35, X36|_],
        I,
     [ X14, X15, X16, X24, X25, X26, X34, X35, X36]):-
     I=3;I=4;I=5;
     I=12;I=13;I=14;
     I=21;I=22;I=23.
squares([
          _, _, _, _, _, _, X17, X18, X19,
          _, _, _, _, _, _, X27, X28, X29,
          _, _, _, _, _, _, X37, X38, X39|_],
        I,
        [ X17, X18, X19, X27, X28, X29, X37, X38, X39]):-
     I=6;I=7;I=8;
     I=15;I=16;I=17;
     I=24;I=25;I=26.

squares([
          _,_,_,_,_,_,_,_,_,
          _,_,_,_,_,_,_,_,_,
          _,_,_,_,_,_,_,_,_,
          X41, X42, X43, _, _, _, _, _, _,
          X51, X52, X53, _, _, _, _, _, _,
          X61, X62, X63|_],
        I,
        [ X41, X42, X43, X51, X52, X53, X61, X62, X63]):-
     I=27;I=28;I=29;
     I=36;I=37;I=38;
     I=45;I=46;I=47.
squares([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, X44, X45, X46, _, _, _,
          _, _, _, X54, X55, X56, _, _, _,
          _, _, _, X64, X65, X66|_],
        I,
        [X44, X45, X46, X54, X55, X56, X64, X65, X66]):-
     I=30;I=31;I=32;
     I=39;I=40;I=41;
     I=48;I=49;I=50.
squares([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, X47, X48, X49,
          _, _, _, _, _, _, X57, X58, X59,
          _, _, _, _, _, _, X67, X68, X69|_]
       ,I
       ,[ X47, X48, X49, X57, X58, X59, X67, X68, X69]):-
     I=33;I=34;I=35;
     I=42;I=43;I=44;
     I=51;I=52;I=53.
squares([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          X71, X72, X73, _, _, _, _, _, _,
          X81, X82, X83, _, _, _, _, _, _,
          X91, X92, X93|_]
       ,I
       ,[X71, X72, X73, X81, X82, X83, X91, X92, X93]):-
     I=54;I=55;I=56;
     I=63;I=64;I=65;
     I=72;I=73;I=74.
squares([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, X74, X75, X76, _, _, _,
          _, _, _, X84, X85, X86, _, _, _,
          _, _, _, X94, X95, X96|_]
       ,I
       ,[X74, X75, X76, X84, X85, X86, X94, X95, X96]):-
     I=57;I=58;I=59;
     I=66;I=67;I=68;
     I=75;I=76;I=77.

squares([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, X77, X78, X79,
          _, _, _, _, _, _, X87, X88, X89,
          _, _, _, _, _, _, X97, X98, X99]  ,I
       ,[X77, X78, X79, X87, X88, X89, X97, X98, X99]):-
     I=60;I=61;I=62;
     I=69;I=70;I=71;
     I=78;I=79;I=80,!.


%////////////////////////////////////////////
getrow([
          X11, X12, X13, X14, X15, X16, X17, X18, X19|_],
        I,
     [X11, X12, X13, X14, X15, X16, X17, X18, X19]):-
      0=<I,
     I<9,!.
getrow([
           _, _, _, _, _, _, _, _, _,
          X21, X22, X23, X24, X25, X26, X27, X28, X29|_],
        I,
     [ X21, X22, X23, X24, X25, X26, X27, X28, X29]):-
      9=<I,
     I<18,!.
getrow([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          X31, X32, X33, X34, X35, X36, X37, X38, X39|_],
        I,
     [ X31, X32, X33, X34, X35, X36, X37, X38, X39]):-
      18=<I,
     I<27,!.
getrow([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          X41, X42, X43, X44, X45, X46, X47, X48, X49|_],
        I,
     [ X41, X42, X43, X44, X45, X46, X47, X48, X49]):-
      27=<I,
     I<36,!.
getrow([
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          _, _, _, _, _, _, _, _, _,
          X51, X52, X53, X54, X55, X56, X57, X58, X59|_],
        I,
     [ X51, X52, X53, X54, X55, X56, X57, X58, X59]):-
      36=<I,
     I<45,!.
getrow([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99],
        I,
     [ X61, X62, X63, X64, X65, X66, X67, X68, X69]):-
      45=<I,
     I<54,!.

getrow([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99],
        I,
     [X71, X72, X73, X74, X75, X76, X77, X78, X79]):-
      54=<I,
     I<63,!.
getrow([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99],
        I,
     [X81, X82, X83, X84, X85, X86, X87, X88, X89]):-
      63=<I,
     I<72,!.
getrow([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99],
        I,
     [X91, X92, X93, X94, X95, X96, X97, X98, X99]):-
      72=<I,
     I<81,!.
%///////////////
gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X11, X21, X31, X41, X51, X61, X71, X81, X91]):-
     I is 9*0;I is 9*1;I is 9*2;I is 9*3;I is 9*4;
     I is 9*5;I is 9*6 ;I is 9*7;I is 9*8.

gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X12, X22, X32, X42, X52, X62, X72, X82, X92]):-
     I is 9*0+1;I is 9*1+1;I is 9*2+1;I is 9*3+1;I is 9*4+1;
     I is 9*5+1;I is 9*6+1 ;I is 9*7+1;I is 9*8+1.

gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X13, X23, X33, X43, X53, X63, X73, X83, X93]):-
     I is 9*0+2;I is 9*1+2;I is 9*2+2;I is 9*3+2;I is 9*4+2;
     I is 9*5+2;I is 9*6+2 ;I is 9*7+2;I is 9*8+2.

gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X14, X24, X34, X44, X54, X64, X74, X84, X94]):-
     I is 9*0+3;I is 9*1+3;I is 9*2+3;I is 9*3+3;I is 9*4+3;
     I is 9*5+3;I is 9*6+3 ;I is 9*7+3;I is 9*8+3.

gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X15, X25, X35, X45, X55, X65, X75, X85, X95]):-
     I is 9*0+4;I is 9*1+4;I is 9*2+4;I is 9*3+4;I is 9*4+4;
     I is 9*5+4;I is 9*6+4 ;I is 9*7+4;I is 9*8+4.


gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I, [X16, X26, X36, X46, X56, X66, X76, X86, X96]):-
     I is 9*0+5;I is 9*1+5;I is 9*2+5;I is 9*3+5;I is 9*4+5;
     I is 9*5+5;I is 9*6+5 ;I is 9*7+5;I is 9*8+5.


gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X17, X27, X37, X47, X57, X67, X77, X87, X97]):-
     I is 9*0+6;I is 9*1+6;I is 9*2+6;I is 9*3+6;I is 9*4+6;
     I is 9*5+6;I is 9*6+6 ;I is 9*7+6;I is 9*8+6.

gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X18, X28, X38, X48, X58, X68, X78, X88, X98]):-
     I is 9*0+7;I is 9*1+7;I is 9*2+7;I is 9*3+7;I is 9*4+7;
     I is 9*5+7;I is 9*6+7 ;I is 9*7+7;I is 9*8+7.

gettranspose([
          X11, X12, X13, X14, X15, X16, X17, X18, X19,
          X21, X22, X23, X24, X25, X26, X27, X28, X29,
          X31, X32, X33, X34, X35, X36, X37, X38, X39,
          X41, X42, X43, X44, X45, X46, X47, X48, X49,
          X51, X52, X53, X54, X55, X56, X57, X58, X59,
          X61, X62, X63, X64, X65, X66, X67, X68, X69,
          X71, X72, X73, X74, X75, X76, X77, X78, X79,
          X81, X82, X83, X84, X85, X86, X87, X88, X89,
          X91, X92, X93, X94, X95, X96, X97, X98, X99
        ],I,[X18, X28, X38, X48, X58, X68, X78, X88, X98]):-
     I is 9*0+8;I is 9*1+8;I is 9*2+8;I is 9*3+8;I is 9*4+8;
     I is 9*5+8;I is 9*6+8 ;I is 9*7+8;I is 9*8+8.





%//////////////////////
getfirstx([H|_],C,C):-
     H = x,!.
getfirstx([_|T],C,R):-
    C1 is C+1,
    getfirstx(T,C1,R).

ins_tail([], N, [N]).
ins_tail([H|T], N, [H|R]) :- ins_tail(T, N, R).

replace([],_,_,_,R,R).
replace([H|T],X,Index,C,Temp,R):-
     (Index=C->M is X;M=H),
     C1 is C+1,
     ins_tail(Temp,M,Temp1),
     replace(T,X,Index,C1,Temp1,R).


fillcell(State,Next,R):-
    getfirstx(State,0,R),
    num(N),
    replace(State,N,R,0,[],Next).


save([]):-!.
save([x|T]):-
     save(T),!.
save([H|T]):-
     not(member(H,T)),
     save(T),!.

savesquares(Next,Index):-
     squares(Next,Index,R),
     save(R).
saverow(Next,Index):-
     getrow(Next,Index,R),
     save(R).
savetranspose(Next,Index):-
     gettranspose(Next,Index,R),
     save(R).


fillall(State,Opend,Closed,Next):-
     fillcell(State,Next,Index),
     not(member(Next,Opend)),
     not(member(Next,Closed)),
     savesquares(Next,Index),
     savetranspose(Next,Index),
     saverow(Next,Index).

getchildren(State, Opened,Closed , Children):-
     bagof(X,fillall(State,Opened,Closed,X) , Children),!.
getchildren(_,_,_,[]).

addListToOpen(Children, [], Children).
addListToOpen(Children, [H|Open], [H|NewOpen]):-
		addListToOpen(Children, Open, NewOpen).

solve([],_,[noresult]).
solve([R|_],_,R):-
     not(member(x,R)),!.
solve([H|T],Closed,R):-

     getchildren(H,[H|T],Closed,Children),
     addListToOpen(Children,T,NewOpen),
     solve(NewOpen,[H|Closed],R).

printsudoku([],_):-write("\n").
printsudoku([H|T],C):-
     (0 is C mod 9->write("\n"),C1 is C+1;C1 is C+1),
     write(H),
     write(","),
     printsudoku(T,C1).

game():-
     sudoku(M),
    solve([M],[],R),
 printsudoku(R,0).
