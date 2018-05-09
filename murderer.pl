/*find the murdered prolog program by Volan Nnanpalle*/
murdered('Lord Hazelton').
weapon('Brass candlestick').
indr('Sara') :- outdr('Lady Hazelton').
indr('Lady Hazelton') :- outdr('Sara').
notinkt('Cook').
guilty('Butler'):- inkt('Cook'), weapon('Strychnine').
guilty('Chauffer'):- indr('Lady Hazelton').
guilty('Wine'):- indr('Sara').
guilty(X):- inkt('Cook')->guilty(X).
guilty(X):- indr('Lady Hazelton') -> guilty(X).
guilty(X):-indr('Sara')->guilty(X).
inkt('Cook').
outdr('Sara'):- notinkt('Cook').
outdr(X):- notinkt('Cook')-> outdr(X).