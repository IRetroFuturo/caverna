1 REM === LOCOMOTIVE BASIC - LA CAVERNA ===
2 SYMBOL AFTER 200
3 REM Vocales  minúsculas con tilde
4 SYMBOL 201, 8,16,120,12,124,204,118,0
5 SYMBOL 202, 4,8,60,102,126,96,62,0
6 SYMBOL 203, 4,8,56,24,24,24,60,0
7 SYMBOL 204, 4,8,60,102,102,102,60,0
8 SYMBOL 205, 8,16,102,102,102,102,62,0
9 REM MAYUSCULAS
10 SYMBOL 206, 4,24,60,102,102,126,102,102  
11 SYMBOL 207, 8,254,66,72,120,72,66,254
12 SYMBOL 208, 8,126,24,24,24,24,126,0
13 SYMBOL 209, 4,56,108,198,198,198,108,56
14 SYMBOL 210, 8,102,102,102,102,102,102,60
15 REM Signos especiales
16 SYMBOL 211, 8,0,8,16,32,32,16,12
17 SYMBOL 212, 16,0,16,16,16,16,16,16
18 SYMBOL 213, 60,0,88,70,68,68,68,68
19 cls:ink 0,0,0:border 0
20 PRINT "La caverna"
60 PRINT "by Antonio Nu"chr$(213)"o - RetroFuturo"
61 PRINT "----------------------------------------"
62 PRINT "Un recorrido por la filosof"chr$(203)"a"
63 PRINT "----------------------------------------"
64 PRINT "Te toca elegir tu propio camino"
65 PRINT "----------------------------------------"
66 INPUT "Pulsa ENTER para comenzar: ", A$
67 REM === CONFIGURACION INICIAL ===
68 LIMIT = 60: REM TIEMPO LÍMITE EN SEGUNDOS
69 T0 = TIME: REM TIEMPO INICIAL EN MILISEGUNDOS
70 GOSUB 100
100 rem preparndo modo grafico
110 CLS
120 MODE 1
122 CLS
470 REM EMPIEZA LA AVENTURA
490 PRINT "Te encuentras en una caverna oscura,"
491 print "ENCADENADO."
492 print "El mundo es un agujero oscuro."
500 PRINT "Un prisionero escapa y te quiere liberar."
510 PRINT chr$(211)"Aceptas su ayuda"
511 PRINT "para salir? (S/N)"
520 INPUT R$
530 IF UPPER$(R$) = "S" THEN GOTO 600
540 IF UPPER$(R$) = "N" THEN GOTO 1270
550 PRINT "Respuesta incorrecta. Escribe S o N."
560 GOTO 520

600 REM === SALIDA DE LA CAVERNA ===
610 CLS
620 T = (TIME - T0) / 100: REM TIEMPO TRANSCURRIDO EN SEGUNDOS
630 IF T > LIMIT THEN GOTO 50070
640 PRINT chr$(212)"Has escapado a tiempo! "
641 PRINT ""LIMIT - T"seg m"chr$(201)"s en salir..."
642 PRINT "y te hubieras quedado"
643 PRINT "para siempre en la cueva."
644 PRINT "--------------------------"
650 PRINT "Es lo que tiene no decidirte"
651 PRINT "y vivir en la ignorancia..."
652 PRINT "que el tiempo pasa y no vuelve."
653 PRINT "---------------------------------------"
660 PRINT "Pulsa ENTER para continuar..."
670 INPUT A$
680 CLS
1220 PRINT "Sales de la caverna. Hay montes."
1223 PRINT "Ves un "chr$(201)"rbol, un camino y personas"
1224 PRINT "a lo largo del mismo."
1240 PRINT "Pulsa ENTER para continuar...",
1250 INPUT A$
1260 GOTO 1450
1270 REM === FINAL EN LA CAVERNA ===
1280 CLS
1290 PRINT "Decides quedarte en la caverna."
1291 PRINT "Prefieres las sombras conocidas."
1300 PRINT "FIN. "chr$(211)"Quieres jugar de nuevo? (S/N)"
1310 INPUT R$
1320 IF UPPER$(R$) = "S" THEN RUN
1330 IF UPPER$(R$) = "N" THEN goto 50146
1340 PRINT "Respuesta incorrecta. Escribe S o N."
1350 GOTO 1310

1360 REM === TIEMPO AGOTADO ===
1370 PRINT "El tiempo se ha agotado. La caverna se oscurece."
1371 PRINT "NUNCA SALDR"chr$(206)"S."
1372 PRINT "La ignoracia es tu prisi"chr$(204)"n"
1372 PRINt "--------------------------------------"
1380 PRINT "FIN."
1390 PRINT ""chr$(211)"Quieres jugar de nuevo? (S/N)"
1400 INPUT R$
1410 IF UPPER$(R$) = "S" THEN RUN
1420 IF UPPER$(R$) = "N" THEN goto 50146
1430 PRINT "Respuesta incorrecta. Escribe S o N."
1440 GOTO 1400

1450 REM === SELECCIÓN DE FILÓSOFOS ===
1460 CLS
1470 PRINT "En este momento quiero hablar con..."
1480 PRINT "1 - San Agust"chr$(203)"n"
1490 PRINT "2 - Santo Tom"chr$(201)"s"
1500 PRINT "3 - Descartes"
1510 PRINT "4 - Kant"
1530 PRINT "5 - Marx
1550 PRINT "6 - Ortega y Gasset"
1560 PRINT "7 - Nietzsche"
1600 PRINT "8 - Plat"chr$(204)"n"
1610 PRINT "9 - Arist"chr$(204)"teles"
1620 PRINT "10- Hypatia
1622 PRINT "11- Simone Beauvoir"
1624 PRINT "12- Lo que quiero es volver a la cueva"
1640 INPUT F$
1650 IF F$ = "1" THEN GOTO 2000
1660 IF F$ = "2" THEN GOTO 3000
1670 IF F$ = "3" THEN GOTO 4000
1680 IF F$ = "4" THEN GOTO 6000
1690 IF F$ = "5" THEN GOTO 9000
1700 IF F$ = "6" THEN GOTO 13000
1730 IF F$ = "7" THEN GOTO 14000
1740 IF F$ = "8" THEN GOTO 15000
1750 IF F$ = "9" THEN GOTO 16000
1760 IF F$ = "10" THEN GOTO 17000
1770 IF F$ = "11" THEN GOTO 19000
1792 IF F$ = "12" THEN GOTO 1270
1810 PRINT "No es correcto. Escribe un n"chr$(205);"mero v"chr$(201);"lido."
1820 GOTO 1640

2000 REM SAN AGUSTIN
2010 CLS:mode 1
2011 load "agus.scr"
2012 INPUT A$
2013 CLS
2020 PRINT "SAN AGUST"CHR$(208)"N:"
2030 PRINT "Hola, soy San Agust"CHR$(203)"n de Hipona."
2031 PRINT "Creo que la fe y la raz"CHR$(204)"n"
2040 PRINT "son esenciales para alcanzar la verdad,"
2041 PRINT "pero la fe debe guiar a la raz"CHR$(204)"n."
2050 PRINT "Nuestro coraz"CHR$(204)"n est"CHR$(201)" inquieto"
2051 PRINT "hasta que descanse en Dios."
2060 PRINT "A trav"CHR$(202)"s de la introspecci"CHR$(204)"n"
2061 PRINT "y la reflexi"CHR$(204)"n, podemos comprender"
2061 PRINT "nuestra relaci"CHR$(204)"n con lo divino."
2070 PRINT ""CHR$(211)"Te unes a esta b"CHR$(205)"squeda"
2071 PRINT "de la verdad interior? (S/N)"
2080 INPUT R$
2090 IF UPPER$(R$) = "S" THEN GOTO 2200
2100 IF UPPER$(R$) = "N" THEN GOTO 2400
2110 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
2120 GOTO 2080

2200 REM RESPUESTA AFIRMATIVA
2210 CLS
2220 PRINT "SAN AGUST"CHR$(208)"N:"
2230 PRINT "Has elegido el camino"
2231 PRINT "de la introspecci"CHR$(204)"n y la fe."
2240 PRINT "Para m"CHR$(203)", la raz"CHR$(204)"n"
2241 PRINT "debe estar iluminada por la fe"
2242 PRINT "para encontrar la verdad."
2250 PRINT "En mi obra 'Confesiones',"
2251 PRINT "exploro la naturaleza del alma y"
2252 PRINT "nuestra relaci"CHR$(204)"n con Dios."
2260 PRINT "El mal no es una creaci"CHR$(204)"n de Dios,"
2261 PRINT "sino la ausencia del bien,"
2270 PRINT "y solo acerc"CHR$(201)"ndonos a Dios"
2271 PRINT "podemos hallar la verdadera felicidad."
2280 PRINT "Siempre sigue buscando, pues"
2281 PRINT "'Si comprendes, no es Dios'."
2290 PRINT "Pulsa ENTER para continuar..."
2300 INPUT A$
2310 GOSUB 50000

2400 REM RESPUESTA NEGATIVA
2410 CLS
2420 PRINT "SAN AGUST"CHR$(208)"N:"
2430 PRINT "Entiendo que cada alma"
2431 PRINT "tiene su propio viaje."
2440 PRINT "Tu decisi"chr$(204)"n me recuerda,"
2441 PRINT "la frase: Dame castidad y continencia,"
2442 PRINT "pero no todav"CHR$(203)"a."
2450 PRINT "A veces, la verdad llega cuando"
2451 PRINT "estamos listos para recibirla."
2460 PRINT "Espero que en el futuro puedas"
2461 PRINT "encontrar la paz en la fe."
2461 PRINT "Pero sea como sea..."
2462 PRINT "Nunca dejes de buscar la verdad"
2463 PRINT "--------------------------------------"
2470 PRINT "Pulsa ENTER para regresar al camino"
2471 PRINT "de la filosof"CHR$(203)"a..."
2480 INPUT A$
2490 GOTO 1450

3000 REM SANTO TOMÁS
3009 CLS:mode 1
3010 load "tomaso.scr"
3011 INPUT A$
3012 CLS
3020 PRINT "SANTO TOM"chr$(206)"S:"
3030 PRINT "Hola, soy Santo Tom"chr$(201)"s de Aquino."
3031 PRINT "Creo que la fe y la raz"chr$(204)"n"
3040 PRINT "no est"chr$(201)"n en conflicto,
3041 PRINT "sino que juntas revelan"
3042 PRINT "el prop"chr$(204)"sito divino."
3050 PRINT "Dios nos ha dado la raz"chr$(204)"n"
3051 PRINT "como herramienta para"
3052 print "explorar el mundo,"
3060 PRINT "y la fe como gu"chr$(203)"a hacia las verdades"
3061 PRINT "que trascienden lo natural."
3070 PRINT ""chr$(211)"Te unes a mi b"chr$(205)"squeda"
3071 PRINT "de sabidur"chr$(203)"a divina? (S/N)"
3080 INPUT R$
3090 IF UPPER$(R$) = "S" THEN GOTO 3200
3100 IF UPPER$(R$) = "N" THEN GOTO 3400
3110 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
3120 GOTO 3080
3200 REM RESPUESTA AFIRMATIVA
3210 CLS
3220 PRINT "SANTO TOM"chr$(206)"S:"
3230 PRINT "Has elegido abrazar la b"chr$(205)"squeda"
3231 PRINT "de la verdad a trav"chr$(202)"s"
3231 PRINT "de la fe y la raz"chr$(204)"n."
3240 PRINT "Para m"chr$(203)", la raz"chr$(204)"n humana"
3241 PRINT "es un regalo divino que"
3242 print "nos permite"
3250 PRINT "comprender el mundo natural "
3251 PRINT "y prepararnos para aceptar las verdades"
3260 PRINT "sobrenaturales reveladas por Dios."
3270 PRINT "Por ejemplo, en mi obra"
3271 print " 'Suma Teol"chr$(204)"gica',"
3272 PRINT "explico c"chr$(204)"mo los argumentos racionales"
3280 PRINT "pueden demostrar la existencia de Dios:"
3290 PRINT "1. El argumento del movimiento:"
3291 PRINT "Todo lo que se mueve tiene una causa."
3300 PRINT "2. El argumento de la causa eficiente:"
3301 PRINT "Nada puede ser su propia causa."
3310 PRINT "3. El argumento de la finalidad:"
3311 PRINT "Hay orden y prop"chr$(204)"sito en la naturaleza."
3320 PRINT "Recuerda que la fe complementa"
3321 PRINT "lo que la raz"chr$(204)"n no puede alcanzar."
3330 PRINT "Has elegido, pero debes"
3331 PRINT "continuar reflexionando siempre."
3340 PRINT "Pulsa ENTER para continuar..."
3350 INPUT A$
3360 GOSUB 50000
3400 REM RESPUESTA NEGATIVA
3410 CLS
3420 PRINT "SANTO TOM"chr$(201)"S:"
3430 PRINT "Entiendo que no todos est"chr$(201)"n"
3441 PRINT "preparados para esta b"chr$(205)"squeda."
3440 PRINT "Sin embargo, reflexiona en esto:"
3441 PRINT "La fe sin raz"chr$(204)"n puede caer"
3450 PRINT "en la superstici"chr$(204)"n,"
3451 PRINT "y la raz"chr$(204)"n sin fe"
3452 PRINT "puede perder su prop"chr$(204)"sito'."
3460 PRINT "El conocimiento no solo viene de "
3461 PRINT "la experiencia, sino tambi"chr$(202)"n"
3470 PRINT "de la contemplaci"chr$(204)"n de lo divino."
3471 PRINT "------------------------------------"
3480 PRINT "Pulsa ENTER para regresar al camino..."
3490 INPUT A$
3500 GOTO 1450


4000 REM DESCARTES
4010 CLS:mode 1
4011 load "decar.scr"
4012 INPUT A$
4013 CLS
4020 PRINT "DESCARTES:"
4030 PRINT "Hola, soy Ren"chr$(202)" Descartes."
4031 PRINT "Mi filosof"chr$(203)"a se basa en"
4032 PRINT "la duda met"chr$(204)"dica:"
4040 PRINT "'Pienso, luego existo'."
4041 PRINT "-----------------------"
4050 PRINT "Creo que cuestionarlo todo"
4051 PRINT "es la "chr$(205)"nica forma de alcanzar la certeza."
4060 PRINT ""chr$(211);"Aceptas cuestionarlo todo"
4061 PRINT "como m"chr$(202)"todo para encontrar la verdad? (S/N)"
4070 INPUT R$
4080 IF UPPER$(R$) = "S" THEN GOTO 4200
4090 IF UPPER$(R$) = "N" THEN GOTO 4400
4100 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
4110 GOTO 4070
4200 REM RESPUESTA AFIRMATIVA
4210 CLS
4220 PRINT "DESCARTES:"
4230 PRINT chr$(212)"Tu decisi"chr$(204)"n demuestra"
4231 PRINT "valent"chr$(203)"a intelectual!"
4240 PRINT "Recuerda que la duda met"chr$(204)"dica"
4241 PRINT "no es para dudar por dudar,"
4250 PRINT "sino para eliminar las creencias falsas"
4251 PRINT "y construir un conocimiento"
4260 PRINT "firme y seguro."
4270 PRINT "En mi obra 'Meditaciones Metaf"chr$(203)"sicas',"
4271 PRINT "defino el 'cogito ergo sum',"
4280 PRINT "es decir, 'Pienso, luego existo'."
4281 PRINT "Este es el primer principio"
4290 PRINT "indudable que encontramos"
4291 PRINT "al cuestionarlo todo."
4300 PRINT "A partir de este punto,"
4301 PRINT "la raz"chr$(204)"n puede demostrar:"
4310 PRINT "1. La existencia de Dios"
4311 PRINT "como ser perfecto."
4320 PRINT "2. La distinci"chr$(204)"n entre
4321 PRINT "el alma (mente) y el cuerpo."
4330 PRINT chr$(211)"La verdad se construye paso a paso"
4331 PRINT "con la claridad de la raz"chr$(204)"n!"
4340 PRINT "Pulsa ENTER para continuar..."
4350 INPUT A$
4360 GOSUB 50000
4400 REM RESPUESTA NEGATIVA
4410 CLS
4420 PRINT "DESCARTES:"
4430 PRINT "Entiendo tu decisi"chr$(204)"n,"
4431 PRINT "pero recuerda esto:"
4440 PRINT "'Es prudente no confiar jam"chr$(201)"s"
4441 PRINT "enteramente en quienes nos han"
4450 PRINT "enga"chr$(213)"ado una vez'."
4460 PRINT "Si no dudas de tus creencias,"
4461 PRINT chr$(211)"c"chr$(204)"mo sabr"chr$(201)"s cu"chr$(201)"les son ciertas?"
4470 PRINT "Pulsa ENTER para regresar al camino..."
4480 INPUT A$
4490 GOTO 1450


6000 REM KANT
6001 CLS:mode 1
6002 load "kant.scr"
6009 INPUT A$
6010 CLS
6020 PRINT "KANT:"
6030 PRINT "Hola, soy Immanuel Kant."
6031 PRINT "Mi filosof"chr$(203)"a se centra"
6032 PRINT "en la c"chr$(202)"tica y la raz"chr$(204)"n."
6040 PRINT "Creo que debes 'actuar solo seg"chr$(205)"n una m"chr$(201)"xima tal"
6041 PRINT "que puedas querer"
6050 PRINT "que se convierta en ley universal'."
6060 PRINT chr$(211)"Est"chr$(201)"s dispuesto a actuar por deber,"
6061 PRINT "y no por inter"chr$(202)"s? (S/N)"
6070 INPUT R$
6080 IF UPPER$(R$) = "S" THEN GOTO 6200
6090 IF UPPER$(R$) = "N" THEN GOTO 6400
6100 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
6110 GOTO 60700
6200 REM RESPUESTA AFIRMATIVA
6210 CLS
6220 PRINT "KANT:"
6230 PRINT "Has elegido el camino del deber. "
6231 PRINT "Esto demuestra un gran compromiso"
6232 print "con la moralidad."
6240 PRINT "En mi obra"
6241 PRINT "Fundamentaci"chr$(204)"n de la metaf"chr$(203)"sica" 
6242 print "de las costumbres', "
6250 PRINT "hablo del imperativo categ"chr$(204)"rico,"
6251 PRINT "la regla que gu"chr$(203)"a la "chr$(202)"tica universal."
6260 PRINT "Tus acciones deben ser universales:"
6261 PRINT "Es decir, desear que todos" 
6262 print "act"chr$(205)"en de esa forma."
6270 PRINT "La moralidad no debe depender" 
6271 print "de recompensas o castigos."
6280 PRINT "Pulsa ENTER para continuar..."
6290 INPUT A$
6300 GOSUB 50000
6400 REM RESPUESTA NEGATIVA
6410 CLS
6420 PRINT "KANT:"
6430 PRINT "Entiendo que actuar por deber"
6431 PRINT "puede parecer dif"chr$(203)"cil."
6440 PRINT "Recuerda: 'La moralidad es"
6441 PRINT "lo que nos hace verdaderamente libres.'"
6450 PRINT "Pulsa ENTER y regresa al camino...es tu deber"
6460 INPUT A$
6470 GOTO 1450

9000 REM MARX
9009 CLS:mode 1
9010 load "marx.scr"
9011 INPUT A$
9012 CLS
9020 PRINT "MARX:"
9030 PRINT "Hola, soy Karl Marx."
9031 PRINT "Creo que la historia "
9032 print "de la humanidad es una lucha"
9040 PRINT "constante entre opresores y oprimidos."
9041 PRINT "La lucha de clases" 
9042 PRINT "es el motor del cambio."
9050 PRINT chr$(211)"Crees que la igualdad"
9051 PRINT "puede lograrse" 
9052 print "con lucha colectiva? (S/N)"
9060 INPUT R$
9070 IF UPPER$ (R$) = "S" THEN GOTO 9200
9080 IF UPPER$ (R$) = "N" THEN GOTO 9410
9090 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
9100 GOTO 9060
9200 REM RESPUESTA AFIRMATIVA
9210 CLS
9220 PRINT "MARX:"
9230 PRINT "Tu decisi"chr$(204)"n apoya" 
9231 print "la emancipaci"chr$(204)"n del proletariado"
9232 PRINT "Para m"chr$(203)", el sistema"
9240 PRINT "capitalista est"chr$(201)" lleno de desigualdades"
9241 PRINT "que benefician a unos pocos y oprimen"
9250 PRINT "a la mayor"chr$(203)"a."
9251 PRINT "La clave est"chr$(201)" en que "
9252 print "la clase trabajadora,"
9253 PRINT "el proletariado,"
9260 PRINT "se una y luche por sus derechos."
9270 PRINT "En mi obra 'El Capital',"
9271 PRINT "analizo c"chr$(204)"mo el sistema econ"chr$(204)"mico"
9272 PRINT "crea estas desigualdades."
9280 PRINT "La acci"chr$(204)"n colectiva es el medio"
9281 PRINT "para acabar" 
9282 print "con la explotaci"chr$(204)"n y construir"
9290 PRINT "una sociedad m"chr$(201)"s justa y equitativa,"
9291 PRINT "donde los medios de producci"chr$(204)"n"
9300 PRINT "pertenezcan al pueblo."
9310 PRINT "Has elegido," 
9311 print "perola lucha no termina..."
9320 INPUT A$
9330 GOSUB 50000
9340 END
9400 REM RESPUESTA NEGATIVA
9410 CLS
9420 PRINT "MARX:"
9430 PRINT "Si no hay acci"chr$(204)"n colectiva,"
9431 PRINT "el cambio ser"chr$(201)" imposible."
9432 PRINT "Los opresores continuar"chr$(201)"n"
9440 PRINT "dominando y las desigualdades" 
9441 print "permanecer"chr$(201)"n."
9442 PRINT "Reflexiona sobre esta idea:"
9450 PRINT "'Los fil"chr$(204)"sofos han interpretado el mundo"
9451 PRINT "de diversas maneras; pero" 
9452 PRINT "de lo que se trata"
9460 PRINT "es de transformarlo.'"
9470 PRINT "Cuando te encuentres"
9471 PRINT "listo para considerar la lucha,"
9472 PRINT "vuelve a buscarme."
9480 PRINT "Pulsa ENTER para regresar"
9481 PRINT " al camino de la filosof"chr$(203)"a"
9482 PRINT "y conversar con otro fil"chr$(204)"sofo..."
9490 INPUT A$
9500 GOTO 1450

13000 REM ORTEGA Y GASSET
13009 CLS:mode 1
13010 load "orte.scr"
13011 INPUT A$
13012 CLS:mode 1
13020 PRINT "ORTEGA Y GASSET:"
13030 PRINT "Hola, soy Jos"CHR$(202)" Ortega y Gasset."
13031 PRINT "Creo que 'Yo soy yo y mi circunstancia',"
13040 PRINT "lo que significa"
13041 PRINT "que no podemos entendernos"
13042 PRINT "fuera de nuestro contexto."
13050 PRINT "La raz"CHR$(204)"n vital nos permite"
13051 PRINT "comprender el mundo"
13052 PRINT "desde nuestra experiencia personal."
13060 PRINT "La historia es fundamental," 
13061 print "pues somos producto"
13062 PRINT "de nuestro tiempo y nuestras elecciones."
13070 PRINT CHR$(211)"Aceptar"CHR$(201)"s la responsabilidad"
13071 PRINT "de forjar tu propio destino? (S/N)"
13080 INPUT R$
13090 IF UPPER$(R$) = "S" THEN GOTO 13200
13100 IF UPPER$(R$) = "N" THEN GOTO 13400
13110 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
13120 GOTO 13080

13200 REM RESPUESTA AFIRMATIVA
13210 CLS
13220 PRINT "ORTEGA Y GASSET:"
13230 PRINT "Has elegido asumir "
13231 print "la responsabilidad de tu vida" 
13232 print "y tu circunstancia."
13240 PRINT "Para m"CHR$(203)", la raz"CHR$(204)"n vital"
13241 PRINT "es clave para comprender" 
13242 print "nuestra realidad."
13250 PRINT "No vivimos en el aire," 
13251 print "sino en una situaci"CHR$(204)"n concreta"
13252 PRINT "que nos define."
13260 PRINT "Comprender nuestra historia y contexto "
13261 PRINT "nos permite actuar con sentido" 
13262 print "y direcci"CHR$(204)"n."
13270 PRINT "No hay destino fijado," 
13271 print "sino la construcci"CHR$(204)"n"
13272 PRINT "de nuestra propia vida."
13280 PRINT "Pulsa ENTER..."
13281 print "para continuar con tus circunstancias..."
13290 INPUT A$
13300 GOSUB 50000

13400 REM RESPUESTA NEGATIVA
13410 CLS
13420 PRINT "ORTEGA Y GASSET:"
13430 PRINT "Entiendo que no todos est"CHR$(202)"n listos"
13431 PRINT "para enfrentar su circunstancia."
13440 PRINT "Pero recuerda:"
13441 PRINT "'Vivir es sentirse fatalmente "
13442 PRINT "forzado a ejercitar la libertad'."
13450 PRINT "Negar la realidad de nuestra situaci"CHR$(204)"n "
13451 PRINT "es una forma de evasi"CHR$(204)"n."
13460 PRINT "Quiz"CHR$(201)" en el futuro comprendas que "
13461 PRINT "la acci"CHR$(204)"n es inevitable."
13470 PRINT "Pulsar ENTER para regresar al camino"
13471 PRINT "de la filosof"CHR$(203)"a" 
13472 PRINT "es tu acci"chr$(204)"n inevitable ahora"
13480 INPUT A$
13490 GOTO 1450

14000 REM NIETZSCHE
14009 CLS:mode 0
14010 load "niet.scr"
14011 INPUT A$
14012 CLS:mode 1
14020 PRINT "NIETZSCHE:"
14030 PRINT "Hola, soy Friedrich Nietzsche."
14031 PRINT "Dios ha muerto,"
14040 PRINT "y la humanidad debe crear"
14041 PRINT "sus propios valores."
14050 PRINT "El superhombre"
14051 PRINT "es aquel que se libera" 
14052 PRINT "de la moral impuesta"
14053 PRINT "y forja su propio destino."
14060 PRINT "El eterno retorno nos desaf"chr$(203)"a"
14061 PRINT "a vivir de tal manera"
14062 PRINT "que aceptar"chr$(203)"amos" 
14063 PRINT "repetir nuestra vida eternamente."
14070 PRINT CHR$(211)"Aceptar"CHR$(201)"s el reto de crear"
14071 PRINT "tu propio camino sin ataduras? (S/N)"
14080 INPUT R$
14090 IF UPPER$(R$) = "S" THEN GOTO 14200
14100 IF UPPER$(R$) = "N" THEN GOTO 14400
14110 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
14120 GOTO 14080

14200 REM RESPUESTA AFIRMATIVA
14210 CLS
14220 PRINT "NIETZSCHE:"
14230 PRINT "Has elegido desafiar las normas" 
14231 PRINT "y crear tu propia moral."
14240 PRINT "Para m"CHR$(203)", la voluntad de poder" 
14241 PRINT "impulsa a los individuos"
14241 PRINT "a superar sus l"chr$(203)"mites."
14250 PRINT "La compasi"CHR$(204)"n excesiva debilita;"
14251 PRINT "la afirmaci"CHR$(204)"n de la vida nos fortalece."
14260 PRINT "No sigas al reba"CHR$(213)"o,"
14261 PRINT "convi"CHR$(202)"rtete en el creador" 
14262 PRINT "de tu propio destino."
14270 PRINT "Solo aquel que supera el nihilismo"
14271 PRINT "puede alcanzar la verdadera grandeza."
14280 PRINT "Pulsa ENTER para continuar..."
14290 INPUT A$
14300 GOSUB 50000

14400 REM RESPUESTA NEGATIVA
14410 CLS
14420 PRINT "NIETZSCHE:"
14430 PRINT "Rechazar este camino es aferrarse"
14431 PRINT "a valores caducos y debilitantes." 
14432 PRINT "Es equivocarse."
14440 PRINT "Pero recuerda, 'El individuo"
14441 PRINT "ha de ser consumido en la llama"
14442 PRINT "de su propia voluntad'."
14450 PRINT "La vida no tiene sentido predefinido,"
14451 PRINT "y negarlo es refugiarse en la mentira."
14460 PRINT "Quiz"CHR$(201)" alg"CHR$(205)"n d"CHR$(203)"a"
14461 PRINT "te atrevas a mirar el abismo sin miedo."
14470 PRINT "Pulsa ENTER para regresar" 
14471 print "al camino de la filosof"CHR$(203)"a..."
14480 INPUT A$
14490 GOTO 1450

15000 REM PLATON
15009 CLS:mode 1
15010 load "platon.scr"
15011 INPUT A$
15012 CLS
15030 PRINT "Saludos, soy Plat"CHR$(204)"n."
15031 PRINT "Creo que el mundo sensible que ves" 
15302 print "es solo una"
15040 PRINT "sombra de la realidad verdadera,"
15041 PRINT "que reside"
15042 PRINT "en el mundo de las Ideas."
15050 PRINT "Solo a trav"CHR$(202)"s de la filosof"CHR$(203)"a "
15051 PRINT "y el conocimiento podemos alcanzar"
15060 PRINT "la verdad y escapar de la caverna"
15061 print "de las apariencias."
15070 PRINT "La justicia, la belleza"
15071 print "y el bien no son meras opiniones,"
15080 PRINT "sino conceptos eternos" 
15081 print "que el alma puede conocer."
15090 PRINT ""CHR$(211)"Est"CHR$(201)"s dispuesto a seguir el camino"
15091 PRINT "del conocimiento y la verdad? (S/N)"
15100 INPUT R$
15110 IF UPPER$(R$) = "S" THEN GOTO 15200
15120 IF UPPER$(R$) = "N" THEN GOTO 15400
15130 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
15140 GOTO 15100

15200 REM RESPUESTA AFIRMATIVA
15210 CLS
15220 PRINT "PLAT"chr$(204)"N:"
15230 PRINT "Sales de la caverna para buscar la verdad"
15240 PRINT "Mi maestro S"CHR$(204)"crates ense"CHR$(213)"aba"
15241 PRINT "que el conocimiento verdadero"
15250 PRINT "proviene del di"CHR$(201)"logo y la reflexi"CHR$(204)"n."
15251 PRINT "No te conformes con lo"
15260 PRINT "que los sentidos te muestran,"
15261 PRINT "sino busca la esencia de las cosas."
15270 PRINT "En mi obra 'La Rep"CHR$(205)"blica',"
15271 PRINT "describo un estado ideal donde los"
15280 PRINT "fil"CHR$(204)"sofos gobiernan, pues son" 
15281 PRINT "los "CHR$(205)"nicos capaces"
15282 PRINT "de ver el bien en s"CHR$(203)" mismo."
15290 PRINT "El alma humana, seg"CHR$(205)"n creo," 
15291 PRINT "se divide en tres partes:"
15292 PRINT "racional, irascible y apetitiva."
15300 PRINT "Solo cuando la raz"CHR$(204)"n gobierna, "
15301 PRINT "el individuo y la sociedad" 
15302 PRINT "pueden ser justos."
15310 PRINT "Reflexiona siempre," 
15311 PRINT "pues la filosof"CHR$(203)"a es la gu"CHR$(203)"a"
15312 PRINT "hacia una vida mejor."
15320 PRINT "Pulsa ENTER para continuar..."
15330 INPUT A$
15340 GOSUB 50000

15400 REM RESPUESTA NEGATIVA
15410 CLS
15420 PRINT "PLAT"chr$(209)"N:"
15430 PRINT "Entiendo que prefieras "
15431 print "quedarte en la caverna, pero recuerda:"
15440 PRINT "El precio de desentenderse"
15441 PRINT "de la pol"CHR$(203)"tica"
15442 PRINT "es ser gobernado por los peores'."
15450 PRINT "El conocimiento"
15451 PRINT "es lo "CHR$(205)"nico que nos libera"
15452 PRINT "de la ignorancia y la injusticia."
15460 PRINT "Si solo conf"CHR$(203)"as en lo que ves,"
15461 PRINT "te perder"CHR$(201)"s la verdadera realidad."
15470 PRINT "Quiz"CHR$(201)" alg"CHR$(205)"n d"CHR$(203)"a 
15471 print "decidas salir de la caverna"
15472 PRINT "y enfrentar la luz del conocimiento."
15480 PRINT "Pulsa ENTER para regresar" 
15481 PRINT "al camino de la filosof"CHR$(203)"a..."
15490 INPUT A$
15500 GOTO 1450

16000 REM ARISTOTELES
16010 CLS:mode 1
16011 load "aristo.scr"
16012 INPUT A$
16013 CLS
16020 PRINT "ARIST"chr$(204)"TELES:"
16030 PRINT "Saludos, soy Arist"CHR$(204)"teles."
16031 PRINT "Creo que el conocimiento"
16032 print " se obtiene a trav"CHR$(202)"s"
16040 PRINT "de la experiencia y la observaci"CHR$(204)"n" 
16041 PRINT "del mundo natural."
16050 PRINT "La realidad no est"CHR$(201)" separada en dos mundos,"
16051 PRINT "como pensaba mi maestro Plat"CHR$(204)"n,"
16060 PRINT "sino que todo ser tiene"
16061 print "una esencia y una forma"
16062 PRINT "que podemos comprender."
16070 PRINT "La felicidad se alcanza"
16071 print "cultivando la virtud"
16072 PRINT "y practicando la razonabilidad."
16080 PRINT "El ser humano es un animal pol"CHR$(203)"tico,"
16081 PRINT "destinado a vivir en sociedad."
16090 PRINT ""CHR$(211)"Est"CHR$(201)"s dispuesto a explorar la realidad"
16091 PRINT "con la raz"CHR$(204)"n y la experiencia? (S/N)"
16100 INPUT R$
16110 IF UPPER$(R$) = "S" THEN GOTO 16200
16120 IF UPPER$(R$) = "N" THEN GOTO 16400
16130 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
16140 GOTO 16100

16200 REM RESPUESTA AFIRMATIVA
16210 CLS
16220 PRINT "ARIST"chr$(204)"TELES:"
16230 PRINT "Has elegido el camino "
16231 print "de la observaci"CHR$(204)"n y la l"CHR$(204)"gica."
16240 PRINT "Para comprender el mundo,"
16241 PRINT "debemos analizar sus causas y principios"
16250 PRINT "En mi obra 'Metaf"CHR$(203)"sica',"
16251 PRINT "explico la distinci"CHR$(204)"n entre acto y potencia:"
16260 PRINT "todo ser tiene "
16261 print "el potencial de convertirse"
16262 PRINT "en algo m"CHR$(201)"s pleno."
16270 PRINT "El conocimiento se basa en categorizar"
16271 PRINT "y clasificar la naturaleza."
16280 PRINT "La virtud es un h"CHR$(201)"bito que se desarrolla"
16281 PRINT "con la pr"CHR$(201)"ctica y la moderaci"CHR$(204)"n."
16290 PRINT "Recuerda que la excelencia"
16291 print "no es un acto,"
16292 PRINT "sino un h"CHR$(201)"bito constante."
16300 PRINT "Pulsa ENTER para continuar..."
16310 INPUT A$
16320 GOSUB 50000

16400 REM RESPUESTA NEGATIVA
16410 CLS
16420 PRINT "ARIST"chr$(204)"TELES:"
16430 PRINT "Entiendo que no todos buscan la verdad"
16431 PRINT "mediante la raz"CHR$(243)"n y la experiencia."
16440 PRINT "Pero recuerda, 'El ignorante afirma,"
16441 PRINT  "el sabio duda y reflexiona'."
16450 PRINT "La b"CHR$(205)"squeda del conocimiento"
16451 PRINT "es el camino hacia la plenitud humana."
16460 PRINT "Si ignoras la naturaleza de las cosas,"
16461 PRINT "nunca alcanzar"CHR$(201)"s la sabidur"CHR$(203)"a."
16470 PRINT "Quiz"CHR$(201)" alg"CHR$(205)"n d"CHR$(201)"a reconozcas"
16471 PRINT "la importancia de la observaci"CHR$(204)"n"
16472 PRINT "y el pensamiento cr"CHR$(203)"tico."
16480 PRINT "Pulsa ENTER para regresar"
16481 print "al camino de la filosof"CHR$(203)"a..."
16490 INPUT A$
16500 GOTO 1450


17000 REM HYPATIA DE ALEJANDRIA
17009 CLS:mode 1
17010 load "hypatia.scr"
17011 input A$
17012 CLS
17020 PRINT "HYPATIA:"
17030 PRINT "Soy Hipatia de Alejandr"CHR$(203)"a, una amante"
17031 PRINT "del conocimiento y la raz"chr$(204)"n."
17040 PRINT "Ense"CHR$(213)"o matem"CHR$(201)"ticas, filosof"CHR$(203)"a"
17041 PRINT "y astronom"CHR$(203)"a, convencida de que la"
17050 PRINT "b"CHR$(205)"squeda de la verdad debe basarse"
17051 PRINT "en la l"CHR$(204)"gica y la evidencia."
17060 PRINT "Las ideas y el pensamiento cr"CHR$(203)"tico son"
17061 PRINT "nuestras mejores herramientas"
17070 PRINT "para combatir la ignorancia"
17071 print "y la superstici"CHR$(204)"n."
17080 PRINT ""CHR$(211)"Seguir"CHR$(201)"s el camino"
17081 print "de la raz"CHR$(204)"n y el aprendizaje? (S/N)"
17090 INPUT R$
17100 IF UPPER$(R$) = "S" THEN GOTO 17200
17110 IF UPPER$(R$) = "N" THEN GOTO 17400
17120 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
17130 GOTO 17090

17200 REM RESPUESTA AFIRMATIVA
17210 CLS
17220 PRINT "HYPATIA:"
17230 PRINT "Has elegido la b"CHR$(205)"squeda del conocimiento"
17231 PRINT "a trav"CHR$(202)"s de la raz"CHR$(204)"n."
17240 PRINT "Mi vida ha estado dedicada"
17241 print "a la ense"CHR$(213)"anza"
17242 PRINT "y la investigaci"CHR$(204)"n."
17250 PRINT "La l"CHR$(204)"gica y las matem"CHR$(201)"ticas
17251 print "son herramientas"
17252 PRINT "poderosas para entender"
17260 PRINT "el mundo y liberarnos de las cadenas de la ignorancia."
17270 PRINT "Recuerda siempre: dudar y cuestionar"
17271 PRINT "es el primer paso hacia la sabidur"CHR$(203)"a."
17280 PRINT "Pulsa ENTER para continuar..."
17290 INPUT A$
17300 GOSUB 50000

17400 REM RESPUESTA NEGATIVA
17410 CLS
17420 PRINT "HYPATIA:"
17430 PRINT "Es triste "
17431 PRINT "ver a alguien rechazar el poder"
17432 PRINT "de la raz"CHR$(204)"n y el conocimiento."
17440 PRINT "Sin embargo, recuerda que la ignorancia"
17441 PRINT "no es una condena permanente."
17450 PRINT "Siempre podr"CHR$(201)"s volver a la senda"
17451 PRINT "del aprendizaje y la investigaci"CHR$(204)"n."
17460 PRINT "Pulsa ENTER para regresar"
17461 print "al camino de la filosof"CHR$(203)"a..."
17470 INPUT A$
17480 GOTO 1450

19000 REM SIMONE DE BEAUVOIR
19010 CLS:mode 0
19011 load "beauvoir.scr"
19012 INPUT A$
19013 CLS:mode 1
19020 PRINT "SIMONE DE BEAUVOIR:"
19030 PRINT "Soy Simone de Beauvoir,"
19031 print "escritora, fil"chr$(204)"sofa"
19032 PRINT "y defensora del existencialismo."
19040 PRINT "Creo que 'No se nace mujer:"
19041 PRINT "se llega a serlo'."
19050 PRINT "La sociedad impone roles" 
19051 print "que debemos cuestionar y transformar."
19060 PRINT "La libertad es la base" 
19061 print "de nuestra existencia"
19062 PRINT "y debemos asumir la responsabilidad"
19070 PRINT "de nuestras elecciones sin excusas"
19071 PRINT "ni justificaciones" 
19072 print "en lo divino o lo natural."
19080 PRINT CHR$(211)"Cuestionar"CHR$(201)"s los roles impuestos
19081 PRINT "y luchar"CHR$(201)"s por la libertad? (S/N)"
19090 INPUT R$
19100 IF UPPER$(R$) = "S" THEN GOTO 19200
19110 IF UPPER$(R$) = "N" THEN GOTO 19400
19120 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
19130 GOTO 19090

19200 REM RESPUESTA AFIRMATIVA
19210 CLS
19220 PRINT "SIMONE DE BEAUVOIR:"
19230 PRINT "Has elegido cuestionar"
19231 print "y desafiar los sistemas"
19232 PRINT "que limitan la libertad humana."
19240 PRINT "En mi libro 'El segundo sexo',"
19241 print " analic"CHR$(202)" c"CHR$(204)"mo la cultura"
19241 PRINT "y la educaci"CHR$(204)"n construyen"
19242 PRINT "la diferencia de g"CHR$(202)"nero."
19250 PRINT "Ser libre no significa" 
19251 print "hacer lo que uno quiere"
19252 PRINT "sin consecuencias, sino"
19260 PRINT "asumir con responsabilidad "
19261 PRINT "las decisiones que tomamos."
19270 PRINT "La verdadera revoluci"CHR$(204)"n"
19271 PRINT "es la de la conciencia,"
19272 print "la que nos permite"
19280 PRINT "redefinir nuestro papel en el mundo."
19290 PRINT "Pulsa ENTER para continuar..."
19300 INPUT A$
19310 GOSUB 50000

19400 REM RESPUESTA NEGATIVA
19410 CLS
19420 PRINT "SIMONE DE BEAUVOIR:"
19430 PRINT "La libertad puede asustar, porque"
19431 PRINT "implica responsabilidad."
19440 PRINT "Pero ignorar las estructuras"
19441 PRINT "de opresi"CHR$(204)"n no las hace desaparecer."
19450 PRINT "Te invito a reflexionar: ""
19451 PRINT CHR$(211)"Eres realmente libre"
19452 PRINT "si nunca has cuestionado tu papel?"
19460 PRINT "La filosof"CHR$(203)"a est"CHR$(201)" para"
19461 PRINT "sacarnos de la comodidad de lo impuesto."
19470 PRINT "Pulsa ENTER para regresar"
19471 print "al camino de la filosof"CHR$(203)"a..."
19480 INPUT A$
19490 GOTO 1450


50000 REM MENSAJE FINAL
50010 CLS
50020 PRINT "Gracias por participar en esta aventura filos"chr$(204)"fica"
50030 PRINT "Tu viaje espiritual y personal"
50031 PRINT "HA COMENZADO."
50032 PRINT "Recuerda aplicar las ideas aprendidas."
50039 PRINT "Pulsa una tecla para terminar el juego. Y ya sabes:"
50040 PRINT "El juego termina, pero la vida no es un juego,"
50041 PRINT "enfr"chr$(202)"ntala con valent"chr$(203)"a."
50041 GOSUB 50080
50070 PRINT "El tiempo ha pasado."
50071 PRINT "Te has quedado en el mismo sitio."
50072 PRINT "Ha llegado la muerte y te sorprendes de tu ignorancia."
50080 PRINT ""chr$(211);"Quieres intentarlo de nuevo? (S/N)"
50090 INPUT R$
50100 IF R$ = "S" OR R$ = "s" THEN RUN
50110 IF R$ = "N" OR R$ = "n" THEN GOTO 50140
50120 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
50130 GOTO 50090
50140 CLS
50141 mode 0
50143 PRINT "La ignorancia"
50144 print "es muy"
50145 print "ATREVIDA"
50146 input A$: mode 1
50147 load "collage.scr"
50148 input A$
50149 run

