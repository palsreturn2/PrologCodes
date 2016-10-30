food(pizza).
food(apple).
eat(john,chicken).
likes(mary,X):-food(X).
food(X):-eat(_,X).
eat(ana,X):-eat(mary,X).
