mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(diana).
mujer(vanessa).
mujer(martha).
mujer(olivia).

hombre(hugo).
:- discontiguous hombre/1. 
adulto(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan).
:- discontiguous hombre/1. 
ninio(juan).
hombre(pedro).
hombre(raul).
hombre(gabriel).
hombre(sergio).

madre(ana, sergio).
madre(ana, maria).
madre(ana, luis).
madre(martha, diana).
madre(olivia, raul).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gabriel).
padre(sergio, paco).
padre(hugo, sergio).

%hijos
%abuelos

%listado de PADRES y MADRES de familia con sus hijos
padres_familia(X, Y) :- padre(X, Y) ; madre(X, Y).

%listado de PADRES y MADRES de familia
padres(X) :- padre(X, _) ; madre(X, _).

%PAPAS
papa(X) :- padre(X, _). 
%MAMAS
mama(X) :- madre(X, _).

%HIJOS
hijo(Y) :- (padre(, Y) ; madre(, Y)) , hombre(Y). 

%HIJAS
hija(Y) :- (padre(, Y) ; madre(, Y)) , mujer(Y).


%ABUELOS
abuelos(Z, Y) :- padre(Z, X) , (padre(X, Y) ; madre(X, Y)), hombre(Z). 

%ABUELAS
abuelas(Z, Y) :- madre(Z, X) , (padre(X, Y) ; madre(X, Y)), mujer(Z).

%ESPOSOS
esposo(Z, Y) :- padre(Z, X) , madre(Y, X).

%NIETOS
nieto(Z, Y) :- (padre(X, Z) ; madre(X, Z)) , (padre(Y, X) ; madre(Y, X)) , hombre(Z).

%NIETAS
nieta(Z, Y) :- (padre(X, Z) ; madre(X, Z)) , (padre(Y, X) ; madre(Y, X)) , mujer(Z).

%HERMANOS
hermano(X, Y) :- (padre(Z, X) ; madre(Z, X)) , (padre(Z, Y) ; madre(Z, Y)) , hombre(X), not(X=Y).

%HERMANAS
hermana(X, Y) :- (padre(Z, X) ; madre(Z, X)) , (padre(Z, Y) ; madre(Z, Y)) , mujer(X), not(X=Y).

%PERSONA
persona(X) :- hombre(X) ; mujer(X).



% consultas
%abuelos(Z,Y).
%abuelas(Z,Y).
%persona(X).
%nieto(Z,Y).
%nieta(Z,Y).
%hermano(X,Y).
%hermana(X,Y).
%esposo(Z,Y).
mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(diana).
mujer(vanessa).
mujer(martha).
mujer(olivia).

hombre(hugo).
:- discontiguous hombre/1. 
adulto(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan).
:- discontiguous hombre/1. 
ninio(juan).
hombre(pedro).
hombre(raul).
hombre(gabriel).
hombre(sergio).

madre(ana, sergio).
madre(ana, maria).
madre(ana, luis).
madre(martha, diana).
madre(olivia, raul).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gabriel).
padre(sergio, paco).
padre(hugo, sergio).

%hijos
%abuelos

%listado de PADRES y MADRES de familia con sus hijos
padres_familia(X, Y) :- padre(X, Y) ; madre(X, Y).

%listado de PADRES y MADRES de familia
padres(X) :- padre(X, _) ; madre(X, _).

%PAPAS
papa(X) :- padre(X, _). 
%MAMAS
mama(X) :- madre(X, _).

%HIJOS
hijo(Y) :- (padre(, Y) ; madre(, Y)) , hombre(Y). 

%HIJAS
hija(Y) :- (padre(, Y) ; madre(, Y)) , mujer(Y).


%ABUELOS
abuelos(Z, Y) :- padre(Z, X) , (padre(X, Y) ; madre(X, Y)), hombre(Z). 

%ABUELAS
abuelas(Z, Y) :- madre(Z, X) , (padre(X, Y) ; madre(X, Y)), mujer(Z).

%ESPOSOS
esposo(Z, Y) :- padre(Z, X) , madre(Y, X).

%NIETOS
nieto(Z, Y) :- (padre(X, Z) ; madre(X, Z)) , (padre(Y, X) ; madre(Y, X)) , hombre(Z).

%NIETAS
nieta(Z, Y) :- (padre(X, Z) ; madre(X, Z)) , (padre(Y, X) ; madre(Y, X)) , mujer(Z).

%HERMANOS
hermano(X, Y) :- (padre(Z, X) ; madre(Z, X)) , (padre(Z, Y) ; madre(Z, Y)) , hombre(X), not(X=Y).

%HERMANAS
hermana(X, Y) :- (padre(Z, X) ; madre(Z, X)) , (padre(Z, Y) ; madre(Z, Y)) , mujer(X), not(X=Y).

%PERSONA
persona(X) :- hombre(X) ; mujer(X).



% consultas
%abuelos(Z,Y).
%abuelas(Z,Y).
%persona(X).
%nieto(Z,Y).
%nieta(Z,Y).
%hermano(X,Y).
%hermana(X,Y).
%esposo(Z,Y).