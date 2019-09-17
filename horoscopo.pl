/* horoscopo(Signo,DiaIni,MesIni,DiaFin,MesFin,Compatibilidad,Incompatible)
 <- son del signo Signo los nacidos entre el DiaIni/MesIni y el DiaFin/MesFin */

horoscopo(aries,22,3,31,3,1,4,21,4).
horoscopo(tauro,22,4,31,4,1,5,21,5).
horoscopo(geminis,22,5,31,5,1,6,21,6).
horoscopo(cancer,22,6,31,6,1,7,21,7).
horoscopo(leo,22,7,31,7,1,8,21,8).
horoscopo(virgo,22,8,31,8,1,9,21,9).
horoscopo(libra,22,9,31,9,1,10,21,10).
horoscopo(escorpio,22,10,1,10,1,11,21,11).
horoscopo(sagitario,22,11,31,11,1,12,21,12).
horoscopo(capricornio,22,12,31,10,1,1,21,1).
horoscopo(acuario,22,1,31,1,1,2,21,2).
horoscopo(piscis,22,2,29,2,1,3,21,3).

signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D11,M11,D2,M2,D22,M22),
    ((Mes=M1,Mes=M11,Dia>=D1,Dia=<D11) ;(Mes=M2,Mes=M22,Dia>=D2,Dia=<D22)).

prueba(X):-horoscopo2(X).

prueba2(X,Y):-horoscopo3(X,Y).

main(Dia,Mes,Signo,Y,A):-signo(Dia,Mes,Signo),prueba(Y),prueba2(Signo,A).
main2:-findall(X,Y,Z,horoscopo2(X,Y,Z)).
