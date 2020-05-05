% Denis Lazor - IS -> TicTacToe
%
% Updating board using unification
movex([-,B,C,D,E,F,G,H,I],1,[x,B,C,D,E,F,G,H,I]).
movex([A,-,C,D,E,F,G,H,I],2,[A,x,C,D,E,F,G,H,I]).
movex([A,B,-,D,E,F,G,H,I],3,[A,B,x,D,E,F,G,H,I]).
movex([A,B,C,-,E,F,G,H,I],4,[A,B,C,x,E,F,G,H,I]).
movex([A,B,C,D,-,F,G,H,I],5,[A,B,C,D,x,F,G,H,I]).
movex([A,B,C,D,E,-,G,H,I],6,[A,B,C,D,E,x,G,H,I]).
movex([A,B,C,D,E,F,-,H,I],7,[A,B,C,D,E,F,x,H,I]).
movex([A,B,C,D,E,F,G,-,I],8,[A,B,C,D,E,F,G,x,I]).
movex([A,B,C,D,E,F,G,H,-],9,[A,B,C,D,E,F,G,H,x]).

moveo([-,B,C,D,E,F,G,H,I],1,[o,B,C,D,E,F,G,H,I]).
moveo([A,-,C,D,E,F,G,H,I],2,[A,o,C,D,E,F,G,H,I]).
moveo([A,B,-,D,E,F,G,H,I],3,[A,B,o,D,E,F,G,H,I]).
moveo([A,B,C,-,E,F,G,H,I],4,[A,B,C,o,E,F,G,H,I]).
moveo([A,B,C,D,-,F,G,H,I],5,[A,B,C,D,o,F,G,H,I]).
moveo([A,B,C,D,E,-,G,H,I],6,[A,B,C,D,E,o,G,H,I]).
moveo([A,B,C,D,E,F,-,H,I],7,[A,B,C,D,E,F,o,H,I]).
moveo([A,B,C,D,E,F,G,-,I],8,[A,B,C,D,E,F,G,o,I]).
moveo([A,B,C,D,E,F,G,H,-],9,[A,B,C,D,E,F,G,H,o]).


% Cheking board and making win move if possible
goWin(Moves_,Moves,Move):-
    containElements_2(Moves,1,2),containElements_1(Moves_,3),Move=3;
    containElements_2(Moves,1,3),containElements_1(Moves_,2),Move=2;
    containElements_2(Moves,2,3),containElements_1(Moves_,1),Move=1;
    containElements_2(Moves,4,5),containElements_1(Moves_,6),Move=6;
    containElements_2(Moves,4,6),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,6),containElements_1(Moves_,4),Move=4;
    containElements_2(Moves,7,8),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,8,9),containElements_1(Moves_,7),Move=7;
    containElements_2(Moves,7,9),containElements_1(Moves_,8),Move=8;
    containElements_2(Moves,1,4),containElements_1(Moves_,7),Move=7;
    containElements_2(Moves,4,7),containElements_1(Moves_,1),Move=1;
    containElements_2(Moves,1,7),containElements_1(Moves_,4),Move=4;
    containElements_2(Moves,2,5),containElements_1(Moves_,8),Move=8;
    containElements_2(Moves,2,8),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,8),containElements_1(Moves_,2),Move=2;
    containElements_2(Moves,3,6),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,3,9),containElements_1(Moves_,6),Move=6;
    containElements_2(Moves,6,9),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,1,5),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,1,9),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,9),containElements_1(Moves_,1),Move=1;
    containElements_2(Moves,3,5),containElements_1(Moves_,7),Move=7;
    containElements_2(Moves,3,7),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,7),containElements_1(Moves_,3),Move=3.

% Cheking board and making move to stop player win
stopWin(Moves_,Moves,Move):-
    containElements_2(Moves,1,2),containElements_1(Moves_,3),Move=3;
    containElements_2(Moves,1,3),containElements_1(Moves_,2),Move=2;
    containElements_2(Moves,2,3),containElements_1(Moves_,1),Move=1;
    containElements_2(Moves,4,5),containElements_1(Moves_,6),Move=6;
    containElements_2(Moves,4,6),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,6),containElements_1(Moves_,4),Move=4;
    containElements_2(Moves,7,8),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,8,9),containElements_1(Moves_,7),Move=7;
    containElements_2(Moves,7,9),containElements_1(Moves_,8),Move=8;
    containElements_2(Moves,1,4),containElements_1(Moves_,7),Move=7;
    containElements_2(Moves,4,7),containElements_1(Moves_,1),Move=1;
    containElements_2(Moves,1,7),containElements_1(Moves_,4),Move=4;
    containElements_2(Moves,2,5),containElements_1(Moves_,8),Move=8;
    containElements_2(Moves,2,8),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,8),containElements_1(Moves_,2),Move=2;
    containElements_2(Moves,3,6),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,3,9),containElements_1(Moves_,6),Move=6;
    containElements_2(Moves,6,9),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,1,5),containElements_1(Moves_,9),Move=9;
    containElements_2(Moves,1,9),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,9),containElements_1(Moves_,1),Move=1;
    containElements_2(Moves,3,5),containElements_1(Moves_,7),Move=7;
    containElements_2(Moves,3,7),containElements_1(Moves_,5),Move=5;
    containElements_2(Moves,5,7),containElements_1(Moves_,3),Move=3.

% Cheking and playing possible forking
goFork(Moves,PlayerMoves,CompMoves,Move):-
    containElements_2(CompMoves,3,9), not(containElements_1(PlayerMoves,2)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,1),Move=1;
    containElements_2(CompMoves,3,9), not(containElements_1(PlayerMoves,8)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,7),Move=7;
    containElements_2(CompMoves,1,3), not(containElements_1(PlayerMoves,4)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,7),Move=7;
    containElements_2(CompMoves,1,3), not(containElements_1(PlayerMoves,6)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,9),Move=9;
    containElements_2(CompMoves,7,9), not(containElements_1(PlayerMoves,4)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,1),Move=1;
    containElements_2(CompMoves,7,9), not(containElements_1(PlayerMoves,6)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,3),Move=3;
    containElements_2(CompMoves,1,7), not(containElements_1(PlayerMoves,2)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,3),Move=3;
    containElements_2(CompMoves,1,7), not(containElements_1(PlayerMoves,8)),not(containElements_1(PlayerMoves,5)),containElements_1(Moves,9),Move=9;
    containElements_2(CompMoves,3,7), not(containElements_1(PlayerMoves,2)),not(containElements_1(PlayerMoves,4)),containElements_1(Moves,1),Move=1;
    containElements_2(CompMoves,3,7), not(containElements_1(PlayerMoves,6)),not(containElements_1(PlayerMoves,8)),containElements_1(Moves,9),Move=9;
    containElements_2(CompMoves,1,9), not(containElements_1(PlayerMoves,2)),not(containElements_1(PlayerMoves,6)),containElements_1(Moves,3),Move=3;
    containElements_2(CompMoves,1,9), not(containElements_1(PlayerMoves,4)),not(containElements_1(PlayerMoves,8)),containElements_1(Moves,7),Move=7;
    containElements_2(CompMoves,3,4), containElements_1(Moves,1),containElements_1(Moves,2),containElements_1(Moves,7),Move=1;
    containElements_2(CompMoves,1,6), containElements_1(Moves,2),containElements_1(Moves,3),containElements_1(Moves,9),Move=3;
    containElements_2(CompMoves,6,7), containElements_1(Moves,8),containElements_1(Moves,9),containElements_1(Moves,3),Move=9;
    containElements_2(CompMoves,4,9), containElements_1(Moves,1),containElements_1(Moves,7),containElements_1(Moves,8),Move=7.

% Cheking and stopping possible player forking
stopFork(Moves,PlayerMoves,CompMoves,Move):-
    containElements_2(PlayerMoves,3,9), not(containElements_1(CompMoves,2)),not(containElements_1(CompMoves,5)),containElements_1(Moves,1),Move=1;
    containElements_2(PlayerMoves,3,9), not(containElements_1(CompMoves,8)),not(containElements_1(CompMoves,5)),containElements_1(Moves,7),Move=7;
    containElements_2(PlayerMoves,1,3), not(containElements_1(CompMoves,4)),not(containElements_1(CompMoves,5)),containElements_1(Moves,7),Move=7;
    containElements_2(PlayerMoves,1,3), not(containElements_1(CompMoves,6)),not(containElements_1(CompMoves,5)),containElements_1(Moves,9),Move=9;
    containElements_2(PlayerMoves,7,9), not(containElements_1(CompMoves,4)),not(containElements_1(CompMoves,5)),containElements_1(Moves,1),Move=1;
    containElements_2(PlayerMoves,7,9), not(containElements_1(CompMoves,6)),not(containElements_1(CompMoves,5)),containElements_1(Moves,3),Move=3;
    containElements_2(PlayerMoves,1,7), not(containElements_1(CompMoves,2)),not(containElements_1(CompMoves,5)),containElements_1(Moves,3),Move=3;
    containElements_2(PlayerMoves,1,7), not(containElements_1(CompMoves,8)),not(containElements_1(CompMoves,5)),containElements_1(Moves,9),Move=9;
    containElements_2(PlayerMoves,3,4), containElements_1(Moves,1),containElements_1(Moves,2),containElements_1(Moves,7),Move=1;
    containElements_2(PlayerMoves,1,6), containElements_1(Moves,2),containElements_1(Moves,3),containElements_1(Moves,9),Move=3;
    containElements_2(PlayerMoves,6,7), containElements_1(Moves,8),containElements_1(Moves,9),containElements_1(Moves,3),Move=9;
    containElements_2(PlayerMoves,4,9), containElements_1(Moves,1),containElements_1(Moves,7),containElements_1(Moves,8),Move=7;
    containElements_2(PlayerMoves,3,7), not(containsElements_4(CompMoves,2,4,6,8)),random_member(Move,[2,4,6,8]);
    containElements_2(PlayerMoves,1,9), not(containsElements_4(CompMoves,2,4,6,8)),random_member(Move,[2,4,6,8]).
    

% Playing mid if possible
playingMid(Moves,Move):-memberchk(5,Moves),Move=5.

% Countering player corner play
playingOppositeCorner(Moves,PlayerMoves,Move):-
    containElements_1(PlayerMoves,1), containElements_1(Moves,9),Move=9;
    containElements_1(PlayerMoves,3), containElements_1(Moves,7),Move=7;
    containElements_1(PlayerMoves,7), containElements_1(Moves,3),Move=3;
    containElements_1(PlayerMoves,9), containElements_1(Moves,1),Move=1.

% Playing corner if nothing else possible
playCorner(Moves,Move):-
    random_member(Move,[1,3,7,9]),containElements_1(Moves,Move);containsElements_4(Moves,1,3,7,9),playCorner(Moves,Move).

% Playing edfe if nothing else possible
playEdge(Moves,Move):-
    random_member(Move,[2,4,6,8]),containElements_1(Moves,Move);containsElements_4(Moves,2,4,6,8),playEdge(Moves,Move).

% Displaying board status on screen
display([A,B,C,D,E,F,G,H,I]) :- write("\n"),nl,write([A,B,C]),nl,write("\n"),write([D,E,F]),nl,write("\n"),
write([G,H,I]),write("\n"),nl.

% Enabling dynamic asserting and retracting of 'turn' fact
:- dynamic turn/1.

% Displaying start instructions
message :- write('\nYou are "x", pc is "o". Choose the field by entering intiger from 1 to 9 followed by dot:\n_ _ _\n_ _ _\n_ _ _\n'),write('\n[1 2 3\n 4 5 6\n 7 8 9] \n').


%
%
%
% Play mode recursion
%
%
%
play(Board,Moves_,PlayerMoves_,CompMoves_):-
    movePlay(Moves_,CompMoves_,PlayerMoves_,Move), % 1.                          % 1. Computer playing move, or asking player for move, depending on 'turn' fact
    filterList(Move,Moves_,Moves), % 2.                                          % 2. Removing played move from list of available moves
    addMove(Move,PlayerMoves_,PlayerMoves,CompMoves_,CompMoves), % 3.            % 3. Adding move to player or computer list
    updateBoard(Board,Board2,Move), % 4.                                         % 4. Updating and displaying board
    not(contains(PlayerMoves,CompMoves)), % 5.                                   % 5. Cheking if someone won // True until someone win, so that recursion dont end early
    drawCheck(Moves), % 6.                                                       % 6. Cheking if it's a draw game
    changePlayer(), % 7.                                                         % 7. Changing player using dynamic assertning and retracting
    turnPlay(Board2,Moves,PlayerMoves,CompMoves,CompMoves_,PlayerMoves_). % 8.   % 8. Calling 'play' predicate recursively with certain arguments
                                                                                 %    --> Added beacuse 2nd player move list was undefined for first move which
                                                                                 %        caused problems trough whole program
%
%
%
%
%
%



% Choosing first player
chooseFirst():-nl,write("\nFirst player?['p.'-player|'c.'-comp]: "),read(First),makeFirst(First),play([-,-,-,-,-,-,-,-,-],[1,2,3,4,5,6,7,8,9],[],[]).


% Asserting 'turn' fact depending on choosed player and last player from
% previous game
makeFirst(First):-
    First==p,turn(o),assertz(turn(x)),retract(turn(o)),write("\nEnter desired position followed by dot: ");  %If 'p' first but turn(o) reamined in facts
    First==p,turn(x),write("\nEnter desired position followed by dot: ");                                    %If 'p' and turn(x) already asserted
    First==p,assertz(turn(x)),write("\nEnter desired position followed by dot: ");                           %If 'p' but no asserted 'turn' facts //Maybe redundant
    First==c,turn(x),assertz(turn(o)),retract(turn(x));                                                      %...
    First==c,turn(o);                                                                                        %...
    First==c,assertz(turn(o)).                                                                               %...



% 1.// Explained
movePlay(Moves,CompMoves,PlayerMoves,Move):-
    turn(o),goWin(Moves,CompMoves,Move);
    turn(o),stopWin(Moves,PlayerMoves,Move);
    turn(o),goFork(Moves,PlayerMoves,CompMoves,Move);
    turn(o),stopFork(Moves,PlayerMoves,CompMoves,Move);
    turn(o),playingMid(Moves,Move);
    turn(o),playingOppositeCorner(Moves,PlayerMoves,Move);
    turn(o),playCorner(Moves,Move);
    turn(o),playEdge(Moves,Move);

    turn(x),read(Move),Move>0,Move<10,checkMove(Move,Moves);
    write("Invalid input,try again: "),movePlay(Moves,CompMoves,PlayerMoves,Move).

% 2.// Explained
filterList(X,In,Out):-exclude(=(X),In,Out).

% 3.// Explained
addMove(Element,List1x,List2x,List1o,List2o):-
    turn(x),append([Element],List1x,List2x);
    turn(o),append([Element],List1o,List2o).

% 4.// Explained
updateBoard(Board,Board2,Move):-
    turn(x),movex(Board,Move,Board2),display(Board2);
    turn(o),moveo(Board,Move,Board2),display(Board2).

% 5.// Explained
contains(Movesx,Moveso):-
    turn(x),
    (containsElements_3(Movesx,1,2,3);
    containsElements_3(Movesx,4,5,6);
    containsElements_3(Movesx,7,8,9);
    containsElements_3(Movesx,1,4,7);
    containsElements_3(Movesx,2,5,8);
    containsElements_3(Movesx,3,6,9);
    containsElements_3(Movesx,1,5,9);
    containsElements_3(Movesx,3,5,7)),
    write("\nWon!\n"),nl,write("Wanna play again?[y./n.]: "),read(Answer),playAgain(Answer);

    turn(o),
    (containsElements_3(Moveso,1,2,3);
    containsElements_3(Moveso,4,5,6);
    containsElements_3(Moveso,7,8,9);
    containsElements_3(Moveso,1,4,7);
    containsElements_3(Moveso,2,5,8);
    containsElements_3(Moveso,3,6,9);
    containsElements_3(Moveso,1,5,9);
    containsElements_3(Moveso,3,5,7)),
    write("\nLost!\n"),nl,write("Wanna play again?[y./n.]: "),read(Answer),playAgain(Answer).

% 6.// Explained
drawCheck(Moves):-
    Moves==[],write("\nIt's a draw!\n"),nl,write("Wanna play again?[y./n.]: "),read(Answer),playAgain(Answer);
    1==1.
% 7.// Explained
changePlayer():-
    turn(x),retract(turn(x)),assertz(turn(o));
    turn(o),retract(turn(o)),assertz(turn(x)),write("\nYour turn : ").

% 8.//Explained
turnPlay(Board2,MovesPlayed,PlayerMoves,CompMoves,CompMoves_,PlayerMoves_) :-
    turn(o), play(Board2,MovesPlayed,PlayerMoves,CompMoves_);
    turn(x), play(Board2,MovesPlayed,PlayerMoves_,CompMoves).


% Help functions for cheking if some variable is in a list
containElements_1(List,N1):-
    memberchk(N1,List).

containElements_2(List,N1,N2):-
    memberchk(N1,List),
    memberchk(N2,List).

containsElements_3(List,N1,N2,N3):-
    memberchk(N1,List),
    memberchk(N2,List),
    memberchk(N3,List).

containsElements_4(List,N1,N2,N3,N4):-
    memberchk(N1,List);
    memberchk(N2,List);
    memberchk(N3,List);
    memberchk(N4,List).

% Cheking if player move is valid // Computer moves are cheked inside
%                                    movePlay predicates, also if update
%                                    board fails, computer move fails
%                                    and it will continue to look for a
%                                    valid move.
checkMove(Move,Moves):-memberchk(Move,Moves).

% Enabling choosing if player want to play again
playAgain(Answer):-
    Answer==y,message,chooseFirst();
    Answer==n,write("\nBye :D"),break .

% Start the game by typing "start." without qoutes.
start :- message,chooseFirst().


