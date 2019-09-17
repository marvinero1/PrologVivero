
/*Generalmente, la temperatura mínima requerida para las plantas de invernadero es de 0-10°C, mientras que 30°C podría ser la temperatura máxima.*/

planta(lechugas, zanahorias, repollos).

/*FUNCION VENTILADOR
 * VENTILADOR SOLO FUNCIONA SI LA TEMPERATURA ES ALTA SI LA TEMPERATURA
 * ES BAJA NO VENTILA.
 */


temperaturaMaxima(25,26,27,28,29,30).
temperaturaMinima(5,6,7,8,9,10).

consejoMax("La temperatura es demasiado alta se procedera a prender los ventiladores.").
consejoMin("La temperatura es demasiado baja no se procedera a prender los ventiladores.").

puedeVentilar(25,26,27,28,29,30):-(temperaturaMaxima(T1,T2,T3,T4,T5,T6), temperaturaMinima(M1,M2,M3,M4,M5,M6),consejoMax(X)).
noVentilar(5,6,7,8,9,10):-(temperaturaMinima(T1,T2,T3,T4,T5,T6),consejoMin(X)).


/*FUNCION HUMEDECER %
 * VENTILADOR SOLO FUNCIONA SI LA TEMPRATURA ES ALTA, SI LA TEMPERATURA
 * ES BAJA NO ENCIENDE.
 */

humedad(10,20,30,40).
noHumedad(70,80,90,100).


consejoHMax("La humedades demasiado alta se procedera a prender los ventiladores.").
consejoHMin("La humedad es demasiado baja se procedera a prender los humedificadores.").

puedoHumedecer(10,20,30,40):-(humedad(H1,H2,H3,H4),consejoHMax(X)).
noHumedecer(70,80,90,100):-(noHumedad(H1,H2,H3,H4),consejoHMin(X)).

/*FUNCION REGAR
 * RIEGA SOLO SI LA TEMPERATURA ES ALTA SI LA TEMPERATURA ES BAJA NO
 * RIEGA.
 */

consejoMax("La temperatura es demasiado alta se procedera adecuada para regar.").
consejoMin("La temperatura es demasiado baja no se abrirar aspersores.").


puedeRegar(25,26,27,28,29,30):-(temperaturaMaxima(T1,T2,T3,T4,T5,T6), temperaturaMinima(M1,M2,M3,M4,M5,M6)).
noRegar(5,6,7,8,9,10):-(temperaturaMinima(T1,T2,T3,T4,T5,T6),consejoMin(X)).
