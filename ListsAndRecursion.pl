prepend(E,L,[E|L]).
addElement(E,[],[E]).
addElement(E,[Head|Tail],[Head,ExtendedTail],):- addElement(E,Tail,ExtendedTail).
hasLength([],0).
hasLength([Head|Tail]):- hasLength(Tail, Y), X is Y+1.
remove(E,[E|Tail],Tail).
remove(E,[Head|Tail],[Head|ReducedTail]):- remove(E,Tail,ReducedTail).

