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
20 MODE 1: REM MODO GRÁFICO CON 4 COLORES
21 BORDER 14: PAPER 0: INK 14,4,4: CLS
22 PRINT "La caverna"
23 PRINT "by Antonio Nu"chr$(213)"o - RetroFuturo"
24 PRINT "----------------------------------------"
25 PRINT "Un recorrido por la filosof"chr$(203)"a"
26 PRINT "----------------------------------------"
27 PRINT "Te toca elegir tu propio camino"
28 PRINT "----------------------------------------"
29 INPUT "Pulsa ENTER para comenzar: ", A$
30 REM === CONFIGURACION INICIAL ===
31 LIMIT = 60: REM TIEMPO LÍMITE EN SEGUNDOS (1 MINUTOS)
32 T0 = TIME: REM TIEMPO INICIAL EN MILISEGUNDOS
33 GOSUB 100

100 REM === INICIO DEL JUEGO ===
120 BORDER 14: PAPER 0: INK 14,4,4: CLS
470 REM EMPIEZA LA AVENTURA
490 PRINT "Te encuentras en una caverna oscura,"
491 print "ENCADENADO."
500 PRINT "Un prisionero escapa y te quiere liberar."
510 PRINT chr$(211)"Aceptas su ayuda"
511 PRINT "y sales de la caverna? (S/N)"
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

1220 PRINT "Sales de la caverna."
1223 PRINT "Ves un largo camino y personas"
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
1330 IF UPPER$(R$) = "N" THEN GOTO 50140
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
1420 IF UPPER$(R$) = "N" THEN END
1430 PRINT "Respuesta incorrecta. Escribe S o N."
1440 GOTO 1400

1450 REM === SELECCIÓN DE FILÓSOFOS ===
1460 CLS
1470 PRINT "En este momento quiero hablar con..."
1480 PRINT "1 - San Agust"chr$(203)"n"
1490 PRINT "2 - Santo Tom"chr$(201)"s"
1500 PRINT "3 - Descartes"
1510 PRINT "4 - Locke"
1520 PRINT "5 - Kant"
1530 PRINT "6 - Spinoza"
1540 PRINT "7 - Hegel"
1550 PRINT "8 - Marx"
1560 PRINT "9 - Sartre"
1570 PRINT "10- Epicuro
1580 PRINT "11- Ortega y Gasset"
1590 PRINT "12- Nietzsche"
1600 PRINT "13- Plat"chr$(204)"n"
1610 PRINT "14- Arist"chr$(204)"teles"
1620 PRINT "15- Hypatia
1621 PRINT "16- M. Wollstonecraft"
1622 PRINT "17- Simone Beauvoir"
1623 PRINT "18- M. Zambrano"
1624 PRINT "19- Lo que quiero es volver a la cueva"
 1640 INPUT F$
1650 IF F$ = "1" THEN GOTO 2000
1660 IF F$ = "2" THEN GOTO 3000
1670 IF F$ = "3" THEN GOTO 4000
1680 IF F$ = "4" THEN GOTO 5000
1690 IF F$ = "5" THEN GOTO 6000
1700 IF F$ = "6" THEN GOTO 7000
1710 IF F$ = "7" THEN GOTO 8000
1720 IF F$ = "8" THEN GOTO 9000
1730 IF F$ = "9" THEN GOTO 10000
1740 IF F$ = "10" THEN GOTO 12000
1750 IF F$ = "11" THEN GOTO 13000
1760 IF F$ = "12" THEN GOTO 14000
1770 IF F$ = "13" THEN GOTO 15000
1780 IF F$ = "14" THEN GOTO 16000
1790 IF F$ = "15" THEN GOTO 17000
1791 IF F$ = "16" THEN GOTO 18000
1792 IF F$ = "17" THEN GOTO 19000
1793 IF F$ = "18" THEN GOTO 20000
1794 IF F$ = "19" THEN GOTO 1270
1810 PRINT "No es correcto. Escribe un n"chr$(205);"mero v"chr$(201);"lido."
1820 GOTO 1640

2000 REM SAN AGUSTIN
2010 CLS
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
3010 CLS
3020 PRINT "SANTO TOM"chr$(206)"S:"
3030 PRINT "Hola, soy Santo Tsom"chr$(201)"s de Aquino."
3031 PRINT "Creo que la fe y la raz"chr$(204)"n"
3040 PRINT "no est"chr$(201)"n en conflicto,
3041 PRINT "sino que juntas revelan"
3042 PRINT "el prop"chr$(204)"sito divino."
3050 PRINT "Dios nos ha dado la raz"chr$(204)"n"
3051 PRINT "como herramienta para explorar el mundo,"
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
3241 PRINT "es un regalo divino que nos permite"
3250 PRINT "comprender el mundo natural "
3251 PRINT "y prepararnos para aceptar las verdades"
3260 PRINT "sobrenaturales reveladas por Dios."
3270 PRINT "Por ejemplo, en mi obra" 
3271 print "'Suma Teol"chr$(204)"gica',"
3271 PRINT "explico c"chr$(204)"mo los argumentos racionales"
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
4010 CLS
4020 PRINT "DESCARTES:"
4030 PRINT "Hola, soy Ren"chr$(202)" Descartes."
4031 PRINT "Mi filosof"chr$(203)"a se basa en"
4032 PRINT "la duda met"chr$(204)"dica:"
4040 PRINT "'Pienso, luego existo'."
4041 PRINT "-----------------------"
4050 PRINT "Creo que cuestionarlo todo"
4051 PRINT "es la "chr$(205)"nica forma"
4052 PRINT "de alcanzar la certeza."
4060 PRINT ""chr$(211);"Aceptas cuestionarlo todo"
4061 PRINT "como m"chr$(202)"todo "
4062 PRINT "para encontrar la verdad? (S/N)"
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

5000 REM LOCKE
5010 CLS
5020 PRINT "LOCKE:"
5030 PRINT "Hola, soy John Locke"
5031 PRINT "Creo que el conocimiento proviene de la experiencia."
5040 PRINT "Nacemos como una 'tabula rasa',"
5041 PRINT "una hoja en blanco,"
5042 PRINT "y todo lo que sabemos"
5050 PRINT "lo obtenemos a trav"chr$(202)"s de los sentidos"
5051 PRINT "y la reflexi"chr$(204)"n."
5060 PRINT ""chr$(211)"Conf"chr$(203)"as en tu experiencia"
5061 PRINT "para construir tu conocimiento? (S/N)"
5070 INPUT R$
5080 IF UPPER$(R$) = "S" THEN GOTO 5200
5090 IF UPPER$(R$) = "N" THEN GOTO 5400
5100 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
5110 GOTO 5070
5200 REM RESPUESTA AFIRMATIVA
5210 CLS
5220 PRINT "LOCKE:"
5230 PRINT "Eres el arquitecto de tu conocimiento."
5231 PRINT "Cada experiencia es una"
5240 PRINT "pieza en el gran mosaico"
5241 print "de tu entendimiento."
5250 PRINT "En mi obra"
5251 PRINT "'Ensayo sobre el entendimiento humano', "
5252 PRINT "explico c"chr$(204)"mo el conocimiento "
5260 PRINT "se forma a partir de"
5261 PRINT "dos fuentes principales:"
5270 PRINT "1. La sensaci"chr$(204)"n."
5271 PRINT "Es decir, lo que percibimos"
5272 PRINT "del mundo exterior"
5273 PRINT "a trav"chr$(202)"s de los sentidos."
5280 PRINT "2. La reflexi"chr$(204)"n:"
5281 PRINT "Es decir, c"chr$(204)"mo procesamos"
5281 PRINT "esas percepciones en nuestra mente."
5290 PRINT "Todo conocimiento complejo"
5291 PRINT "se construye combinando ideas simples."
5300 PRINT "Pulsa ENTER para continuar..."
5310 INPUT A$
5320 GOSUB 50000
5400 REM RESPUESTA NEGATIVA
5410 CLS
5420 PRINT "LOCKE:"
5430 PRINT "Entiendo tu desconfianza,"
5431 PRINT "pero reflexiona sobre esto:"
5440 PRINT "Nada hay en el intelecto que "
5441 PRINT "no haya estado antes en los sentidos."
5450 PRINT "Sin experiencia, nuestras mentes ser"chr$(203)"an"
5451 PRINT "como una hoja en blanco"
5452 PRINT "que nunca se llena."
5460 PRINT "Los sentidos nos conectan con el mundo"
5461 PRINT "y nos permiten aprender."
5470 PRINT "Pulsa ENTER para regresar al camino."
5471 PRINT "Siempre puedes volver a verme..."
5480 INPUT A$
5490 GOTO 1450

6000 REM KANT
6010 CLS
6020 PRINT "KANT:"
6030 PRINT "Hola, soy Immanuel Kant."
6031 PRINT "Mi filosof"chr$(203)"a se centra"
3032 PRINT "en la c"chr$(202)"tica y la raz"chr$(204)"n."
6040 PRINT "Creo que debes 'actuar solo seg"chr$(205)"n"
6041 PRINT "una m"chr$(201)"xima tal"
6042 PRINT "que puedas querer"
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
6231 PRINT "Esto demuestra un gran compromiso con la moralidad."
6240 PRINT "En mi obra"
6241 PRINT "Fundamentaci"chr$(204)"n de la "
6242 PRINT "metaf"chr$(203)"sica de las costumbres', "
6250 PRINT "hablo del imperativo categ"chr$(204)"rico,"
6251 PRINT "la regla que gu"chr$(203)"a la "chr$(202)"tica universal."
6260 PRINT "Tus acciones deben ser universales:"
6261 PRINT "Es decir, desear que todos act"chr$(205)"en de esa forma."
6270 PRINT "La moralidad no debe depender"
6271 PRINT "de recompensas o castigos."
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

7000 REM SPINOZA
7010 CLS
7020 PRINT "SPINOZA:"
7030 PRINT "Hola, soy Baruch Spinoza."
7031 PRINT "Creo que Dios y la naturaleza"
7032 PRINT "son una misma cosa."
7040 PRINT "Todo lo que existe es una manifestaci"chr$(204)"n"
7041 PRINT "de una "chr$(205)"nica sustancia infinita:"
7050 PRINT "Dios o la Naturaleza"
7051 PRINT "('Deus sive Natura')."
7060 PRINT chr$(211)"Aceptas contemplar"
7061 PRINT "la unidad del universo? (S/N)"
7070 INPUT R$
7080 IF UPPER$(R$) = "S" THEN GOTO 7200
7090 IF UPPER$(R$) = "N" THEN GOTO 7400
7100 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
7110 GOTO 70700
7200 REM RESPUESTA AFIRMATIVA
7210 CLS
7220 PRINT "SPINOZA:"
7230 PRINT "Eres parte del todo"
7231 PRINT "La armon"chr$(203)"a del universo"
7232 PRINT "reside en comprender "
7240 PRINT "que todo est"chr$(201)" interconectado."
7241 PRINT "Esto nos libera de temores irracionales."
7250 PRINT "Pulsa ENTER para continuar..."
7260 INPUT A$
7270 GOSUB 50000  
7400 REM RESPUESTA NEGATIVA
7410 CLS
7420 PRINT "SPINOZA:"
7430 PRINT "Entender la unidad del universo"
7431 PRINT "puede ser un desaf"chr$(203)"o"
7440 PRINT "Recuerda: 'La libertad no es"
7441 PRINT "actuar seg"chr$(205)"n el capricho,"
7442 PRINT "sino vivir seg"chr$(205)"n "
7443 PRINT "nuestra verdadera naturaleza.'"
7450 PRINT "Pulsa ENTER para regresar al camino."
7460 INPUT A$
7470 GOTO 1450

8000 REM HEGEL
8010 CLS
8020 PRINT "HEGEL:"
8030 PRINT "Hola, soy Georg Wilhelm Friedrich Hegel."
8031 PRINT "Mi filosof"chr$(203)"a se basa en la idea"
8040 PRINT "de que la historia y la realidad son"
8041 PRINT "un proceso dial"chr$(202)"ctico. Esto significa"
8050 PRINT "que el cambio constante, a trav"chr$(202)"s de la tensi"chr$(204)"n "
8051 PRINT "y resoluci"chr$(204)"n de opuestos,"
8060 PRINT "es lo que impulsa el progreso."
8070 PRINT chr$(211)"Aceptas que el cambio constante"
8071 PRINT "conduce al progreso? (S/N)"
8080 INPUT R$
8090 IF UPPER$ (R$) = "S" THEN GOTO 8200
8100 IF UPPER$ (R$) = "N" THEN GOTO 8400
8110 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
8120 GOTO 8080
8200 REM RESPUESTA AFIRMATIVA
8210 CLS
8220 PRINT "HEGEL:"
8230 PRINT "Has aceptado el poder de la dial"chr$(202)"ctica"
8231 PRINT "Para m"chr$(203)", la realidad no es algo fijo,"
8240 PRINT "sino un proceso din"chr$(201)"mico."
8241 PRINT "Cada idea (tesis)"
8242 PRINT "encuentra su contradicci"chr$(204)"n (ant"chr$(203)"tesis),"
8250 PRINT " y de esa tensi"chr$(204)"n surge una nueva verdad (s"chr$(203)"ntesis)."
8260 PRINT "Este proceso"
8261 PRINT "no solo ocurre en la historia,"
8262 PRINT "sino tambi"chr$(202)"n en la vida humana,"
8270 PRINT "donde enfrentamos desaf"chr$(203)"os "
8271 PRINT "y aprendemos de ellos para alcanzar algo mayor."
8280 PRINT "En mi obra"
8281 PRINT "'Fenomenolog"chr$(203)"a del Esp"chr$(203)"ritu',"
8282 PRINT "exploro c"chr$(204)"mo la conciencia humana"
8290 PRINT "evoluciona a trav"chr$(202)"s de este proceso,"
8291 PRINT "hasta alcanzar la libertad"
8292 PRINT "y la comprensi"chr$(204)"n."
8300 PRINT "Has elegido, pero siempre puedes"
8301 PRINT "continuar haciendo s"chr$(203)"ntesis..."
8310 INPUT A$
8320 GOSUB 50000
8330 END
8400 REM RESPUESTA NEGATIVA
8410 CLS
8420 PRINT "HEGEL:"
8430 PRINT "Negar el cambio es negar"
8431 PRINT "la realidad misma."
8432 PRINT "Sin conflicto, no hay avance,"
8440 PRINT "y sin avance, no hay libertad."
8441 PRINT "Reflexiona sobre esta idea:"
8442 PRINT "'La contradicci"chr$(204)"n"
8450 PRINT "es el motor de todo desarrollo'."
8460 PRINT "Aunque ahora dudes, recuerda:"
8461 PRINT "incluso el rechazo puede ser parte"
8470 PRINT "de un proceso dial"chr$(202)"ctico mayor."
8471 PRINT "Vuelve cuando est"chr$(202)"s listo para el progreso"
8480 PRINT "Pulsa ENTER para regresar al camino"
8481 PRINT "y conversar con otro fil"chr$(204)"sofo..."
8490 INPUT A$
8500 GOTO 1450

9000 REM MARX
9010 CLS
9020 PRINT "MARX:"
9030 PRINT "Hola, soy Karl Marx."
9031 PRINT "Creo que la historia de la humanidad es una lucha"
9040 PRINT "constante entre opresores y oprimidos."
9041 PRINT "La lucha de clases" 
9042 PRINT "es el motor del cambio."
9050 PRINT chr$(211)"Crees que la igualdad"
9051 PRINT "puede lograrse con lucha colectiva? (S/N)"
9060 INPUT R$
9070 IF UPPER$ (R$) = "S" THEN GOTO 9200
9080 IF UPPER$ (R$) = "N" THEN GOTO 9400
9090 PRINT "Respuesta no v"chr$(201)"lida. Escribe S o N."
9100 GOTO 9060
9200 REM RESPUESTA AFIRMATIVA
9210 CLS
9220 PRINT "MARX:"
9230 PRINT "Tu decisi"chr$(204)"n apoya" 
9231 PRINT "la emancipaci"chr$(204)"n del proletariado"
9232 PRINT "Para m"chr$(203)", el sistema"
9240 PRINT "capitalista est"chr$(201)" lleno de desigualdades"
9241 PRINT "que benefician a unos pocos y oprimen"
9250 PRINT "a la mayor"chr$(203)"a."
9251 PRINT "La clave est"chr$(201)" en que la clase trabajadora,"
9251 PRINT "el proletariado,"
9260 PRINT "se una y luche por sus derechos."
9270 PRINT "En mi obra 'El Capital',"
9271 PRINT "analizo c"chr$(204)"mo el sistema econ"chr$(204)"mico"
9272 PRINT "crea estas desigualdades."
9280 PRINT "La acci"chr$(204)"n colectiva es el medio"
9281 PRINT "para acabar con"
9282 PRINT "la explotaci"chr$(204)"n y construir"
9290 PRINT "una sociedad m"chr$(201)"s justa y equitativa,"
9291 PRINT "donde los medios de producci"chr$(204)"n"
9300 PRINT "pertenezcan al pueblo."
9310 PRINT "Has elegido, pero"
9311 PRINT "contin"chr$(205)"a en la lucha..."
9320 INPUT A$
9330 GOSUB 50000
9340 END
9400 REM RESPUESTA NEGATIVA
9410 CLS
9420 PRINT "MARX:"
9430 PRINT "Si no hay acci"chr$(204)"n colectiva,"
9431 PRINT "el cambio ser"chr$(201)" imposible."
9432 PRINT "Los opresores continuar"chr$(201)"n"
9440 PRINT "dominando y las desigualdades permanecer"chr$(201)"n."
9441 PRINT "Reflexiona sobre esta idea:"
9450 PRINT "'Los fil"chr$(204)"sofos han interpretado el mundo"
9451 PRINT "de diversas maneras; "
9452 PRINT "pero de lo que se trata"
9460 PRINT "es de transformarlo.'"
9470 PRINT "Cuando est"chr$(202)"s listo" 
9471 PRINT "para considerar la lucha,"
9472 PRINT "vuelve a buscarme."
9480 PRINT "Pulsa ENTER para regresar al camino"
9481 PRINT "y conversar con otro fil"chr$(204)"sofo..."
9490 INPUT A$
9400 GOTO 1450

10000 REM JEAN-PAUL SARTRE
10010 CLS
10020 PRINT "JEAN-PAUL SARTRE:"
10030 PRINT "Hola, soy Jean-Paul Sartre."
10031 PRINT "Creo que la existencia"
10032 PRINT "precede a la esencia,"
10040 PRINT "lo que significa que somos responsables"
10041 PRINT "de definirnos a nosotros mismos."
10050 PRINT "No hay una naturaleza humana"
10051 PRINT "dada por Dios;"
10051 PRINT "somos lo que elegimos ser."
10060 PRINT "La libertad absoluta conlleva"
10061 PRINT "una gran responsabilidad"
10062 PRINT "sobre nuestras acciones."
10070 PRINT CHR$(211)"Aceptar"CHR$(224)"s la carga "
10071 PRINT "de la libertad y la responsabilidad? (S/N)"
10080 INPUT R$
10090 IF UPPER$(R$) = "S" THEN GOTO 10200
10100 IF UPPER$(R$) = "N" THEN GOTO 10400
10110 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
10120 GOTO 10080

10200 REM RESPUESTA AFIRMATIVA
10210 CLS
10220 PRINT "JEAN-PAUL SARTRE:"
10230 PRINT "Has aceptado la libertad"
10231 PRINT "y la responsabilidad de tus actos."
10240 PRINT "Para m"CHR$(203)", no hay destino prefijado"
10241 PRINT "ni esencia que nos defina."
10250 PRINT "Somos condenados a ser libres,"
10251 PRINT "y cada elecci"CHR$(204)"n nos define."
10260 PRINT "En mi obra 'El ser y la nada',"
10261 PRINt "expongo c"CHR$(204)"mo nuestra conciencia"
10270 PRINT "nos enfrenta con la angustia"
10271 PRINT "de la elecci"CHR$(204)"n constante."
10280 PRINT "No hay valores absolutos, solo aquellos que decidimos adoptar."
10290 PRINT "Continuar tu camino es la clave." 
10291 PRINt "Pulsa ENTER."
10300 INPUT A$
10310 GOSUB 50000

10400 REM RESPUESTA NEGATIVA
10410 CLS
10420 PRINT "JEAN-PAUL SARTRE:"
10430 PRINT "Rechazar la libertad tambi"CHR$(202)"n"
10431 PRINT "es una elecci"CHR$(204)"n."
10440 PRINT "Pero recuerda, 'No hay necesidad de que existas'."
10450 PRINT "Evitar la responsabilidad"
10451 PRINT "es una forma de mala fe,"
10451 PRINT "un autoenga"CHR$(213)"o."
10460 PRINT "Tarde o temprano, enfrentar"CHR$(201)"s "
10461 PRINT "el peso de la libertad."
10470 PRINT "Pulsa ENTER para regresar al camino."
10480 INPUT A$
10490 GOTO 1450

12000 REM EPICURO
12010 CLS
12020 PRINT "EPICURO:"
12030 PRINT "Hola, soy Epicuro."
12301 PRINT "Creo que el objetivo de la vida"
12302 PRINT "es alcanzar la ataraxia,"
12040 PRINT "un estado de tranquilidad"
12041 PRINT "y ausencia de sufrimiento."
12050 PRINT "El placer es el principio y el fin"
12051 PRINT "de una vida feliz,"
12051 PRINT "pero debe ser moderado."
12060 PRINT "No debemos temer a los dioses ni a la muerte,"
12061 PRINT "pues el temor es el origen del sufrimiento."
12070 PRINT CHR$(211)"Buscar"CHR$(201)"s la felicidad
12071 PRINT "a trav"CHR$(202)"s del placer racional? (S/N)"
12080 INPUT R$
12090 IF UPPER$(R$) = "S" THEN GOTO 12200
12100 IF UPPER$(R$) = "N" THEN GOTO 12400
12110 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
12120 GOTO 12080

12200 REM RESPUESTA AFIRMATIVA
12210 CLS
12220 PRINT "EPICURO:"
12230 PRINT "Has elegido el camino"
12231 PRINT "del placer racional y la tranquilidad."
12240 PRINT "Para m"CHR$(203)", la felicidad se alcanza"
12241 PRINT "evitando el dolor innecesario."
12250 PRINT "En mi filosof"CHR$(203)"a, "
12251 PRINT "el placer no es excesivo,"
12252 PRINT "sino moderado y natural."
12260 PRINT "El temor a la muerte es irracional,"
12261 PRINT "pues cuando ella llega, ya no existimos."
12270 PRINT "No dependas de riquezas ni de lujos,"
12271 PRINT "sino de la amistad y la serenidad."
12280 PRINT "Pulsa ENTER para continuar..."
12290 INPUT A$
12300 GOSUB 50000

12400 REM RESPUESTA NEGATIVA
12410 CLS
12420 PRINT "EPICURO:"
12430 PRINT "Entiendo que no todos"
12431 PRINT "buscan la felicidad"
12431 PRINT "a trav"CHR$(202)"s del placer racional."
12440 PRINT "Pero recuerda,"
12441 PRINT "De nada sirve la filosof"CHR$(203)"a"
12441 PRINT "si no alivia el sufrimiento humano."
12450 PRINT "El miedo y los deseos sin control"
12451 PRINT "llevan a la angustia, no a la felicidad."
12460 PRINT "Quiz"CHR$(202)" alg"CHR$(205)"n d"CHR$(203)"a descubrir"CHR$(201)"s"
12461 PRINT "que la clave est"CHR$(201)" en la tranquilidad."
12470 PRINT "Pulsa ENTER para regresar al camino."
12480 INPUT A$
12490 GOTO 1450

13000 REM ORTEGA Y GASSET
13010 CLS
13020 PRINT "ORTEGA Y GASSET:"
13030 PRINT "Hola, soy Jos"CHR$(202)" Ortega y Gasset."
13031 PRINT "Creo que 'Yo soy yo y mi circunstancia',"
13040 PRINT "lo que significa que"
13041 PRINT "no podemos entendernos"
13042 PRINT "fuera de nuestro contexto."
13050 PRINT "La raz"CHR$(204)"n vital nos permite"
13051 PRINT "comprender el mundo "
13052 PRINT "desde nuestra experiencia personal."
13060 PRINT "La historia es fundamental," 
13061 PRINT "pues somos producto"
13061 PRINT "de nuestro tiempo y nuestras elecciones."
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
13230 PRINT "Has elegido asumir la responsabilidad"
13231 PRINT "de tu vida y tu circunstancia."
13240 PRINT "Para m"CHR$(203)", la raz"CHR$(204)"n vital"
13241 PRINT "es clave para"
13242 PRINT "comprender nuestra realidad."
13250 PRINT "No vivimos en el aire, sino "
13251 PRINT "en una situaci"CHR$(204)"n concreta"
13252 PRINT "que nos define."
13260 PRINT "Comprender nuestra historia y contexto "
13261 PRINT "nos permite actuar"
13262 PRINT "con sentido y direcci"CHR$(204)"n."
13270 PRINT "No hay destino fijado,"
13271 PRINT "sino la construcci"CHR$(204)"n"
13271 PRINT "de nuestra propia vida."
13280 PRINT "Pulsa para continuar..."
13281 PRINT "con tus circunstancias..."
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
13461 PRINT "la acci"CHR$(204)"n"
13462 PRINT "es inevitable."
13470 PRINT "Pulsar ENTER para regresar al camino"
13471 PRINT "de la filosof"CHR$(203)"a esa es "
13472 PRINT "tu acci"chr$(204)"n inevitable ahora"
13480 INPUT A$
13490 GOTO 1450

14000 REM NIETZSCHE
14010 CLS
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
14061 PRINT "que aceptar"chr$(203)"amos "
14062 PRINT "repetir nuestra vida eternamente."
14070 PRINT CHR$(211)"Aceptar"CHR$(201)"s el reto "
14071 PRINT "de crear tu propio camino? (S/N)"
14080 INPUT R$
14090 IF UPPER$(R$) = "S" THEN GOTO 14200
14100 IF UPPER$(R$) = "N" THEN GOTO 14400
14110 PRINT "Respuesta no v"CHR$(225)"lida. Escribe S o N."
14120 GOTO 14080

14200 REM RESPUESTA AFIRMATIVA
14210 CLS
14220 PRINT "NIETZSCHE:"
14230 PRINT "Has elegido desafiar las normas"
14231 PRINT "y crear tu propia moral."
14240 PRINT "Para m"CHR$(203)", la voluntad de poder"
14241 PRINT "impulsa a los individuos"
14242 PRINT "a superar sus l"chr$(203)"mites."
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
14470 PRINT "Pulsa ENTER para regresar al camino."
14480 INPUT A$
14490 GOTO 1450

15000 REM PLATON
15010 CLS
15020 PRINT "PLAT"chr$(204)"N:"
15030 PRINT "Saludos, soy Plat"CHR$(204)"n."
15031 PRINT "Creo que el mundo sensible"
15032 PRINT "que ves es solo una"
15040 PRINT "sombra de la realidad verdadera,"
15041 PRINT "que reside en el mundo de las Ideas."
15050 PRINT "Solo a trav"CHR$(203)"s de la filosof"CHR$(204)"a "
15051 PRINT "y el conocimiento podemos alcanzar"
15060 PRINT "la verdad y escapar de la caverna de las apariencias."
15070 PRINT "La justicia, la belleza y el bien no son meras opiniones, sino"
15080 PRINT "conceptos eternos"
15081 PRINT "que el alma puede conocer."
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
15230 PRINT "Has abandonado la caverna y buscas la verdad."
15240 PRINT "S"CHR$(204)"crates ense"CHR$(213)"aba que el "
15241 PRINT "conocimiento verdadero proviene"
15250 PRINT "del di"CHR$(201)"logo y la reflexi"CHR$(204)"n."
15251 PRINT "No te conformes con lo"
15260 PRINT "que los sentidos te muestran,"
15261 PRINT "sino busca la esencia de las cosas."
15270 PRINT "En mi obra 'La Rep"CHR$(205)"blica',"
15271 PRINT "describo un estado ideal donde los"
15280 PRINT "fil"CHR$(204)"sofos gobiernan, pues son los "CHR$(205)"nicos capaces"
15281 PRINT "de ver el bien en s"CHR$(203)" mismo."
15290 PRINT "El alma humana, seg"CHR$(205)"n creo, se divide en tres partes:"
15291 PRINT "racional, irascible y apetitiva."
15300 PRINT "Solo cuando la raz"CHR$(204)"n gobierna, "
15301 PRINT "individuo y la sociedad pueden ser justos."
15310 PRINT "La filosof"CHR$(203)"a es la gu"CHR$(203)"a"
15311 PRINT "hacia una vida mejor."
15320 PRINT "Pulsa ENTER para continuar..."
15330 INPUT A$
15340 GOSUB 50000

15400 REM RESPUESTA NEGATIVA
15410 CLS
15420 PRINT "PLAT"chr$(209)"N:"
15430 PRINT "Entiendo que prefieras quedarte"
15431 PRINT "en la caverna, pero recuerda:"
15440 PRINT "El precio de desentenderse"
15441 PRINT "de la pol"CHR$(203)"tica"
15442 PRINT "es ser gobernado por los peores'."
15450 PRINT "El conocimiento es"
15451 PRINT "lo "CHR$(205)"nico que nos libera"
15452 PRINT "de la ignorancia y la injusticia."
15460 PRINT "Si solo conf"CHR$(203)"as en lo que ves,"
15461 PRINT "te perder"CHR$(201)"s la verdadera realidad."
15470 PRINT "Quiz"CHR$(201)" alg"CHR$(205)"n d"CHR$(203)"a 
15471 PRINT "decidas salir de la caverna"
15471 PRINT "y enfrentar la luz del conocimiento."
15480 PRINT "Pulsa ENTER para regresar al camino."
15490 INPUT A$
15500 GOTO 1450

16000 REM ARISTOTELES
16010 CLS
16020 PRINT "ARIST"chr$(204)"TELES:"
16030 PRINT "Saludos, soy Arist"CHR$(204)"teles."
16031 PRINT "Creo que el conocimiento"
16032 PRINT "se obtiene a trav"CHR$(202)"s"
16040 PRINT "de la experiencia"
16041 PRINT "y la observaci"CHR$(204)"n del mundo natural."
16050 PRINT "La realidad no est"CHR$(201)" separada en dos mundos,"
16051 PRINT "como pensaba mi maestro Plat"CHR$(204)"n,"
16060 PRINT "sino que todo ser tiene una esencia y una forma"
16061 PRINT "que podemos comprender."
16070 PRINT "La felicidad se alcanza"
16071 PRINT "cultivando la virtud"
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
16230 PRINT "Has elegido el camino"
16231 PRINT "de la observaci"CHR$(204)"n y la l"CHR$(204)"gica."
16240 PRINT "Para comprender el mundo,"
16241 PRINT "debemos analizar" 
16424 PRINT "sus causas y principios."
16250 PRINT "En mi obra 'Metaf"CHR$(203)"sica',"
16251 PRINT "explico la distinci"CHR$(204)"n entre acto y potencia:"
16260 PRINT "todo ser tiene"
16261 PRINT "el potencial de convertirse"
16262 PRINT "en algo m"CHR$(201)"s pleno."
16270 PRINT "El conocimiento se basa en categorizar"
16271 PRINT "y clasificar la naturaleza."
16280 PRINT "La virtud es un h"CHR$(201)"bito que se desarrolla"
16281 PRINT "con la pr"CHR$(201)"ctica y la moderaci"CHR$(204)"n."
16290 PRINT "Recuerda que la excelencia"
16291 PRINT "no es un acto,"
16291 PRINT "sino un h"CHR$(201)"bito constante."
16300 PRINT "Pulsa ENTER para continuar..."
16310 INPUT A$
16320 GOSUB 50000

16400 REM RESPUESTA NEGATIVA
16410 CLS
16420 PRINT "ARIST"chr$(204)"TELES:"
16430 PRINT "Entiendo que no todos buscan la verdad"
16431 PRINT "mediante la raz"CHR$(204)"n y la experiencia."
16440 PRINT "Pero recuerda, 'El ignorante afirma,"
16441 PRINT  "el sabio duda y reflexiona'."
16450 PRINT "La b"CHR$(205)"squeda del conocimiento"
16451 PRINT "es el camino hacia la plenitud humana."
16460 PRINT "Si ignoras la naturaleza de las cosas,"
16461 PRINT "nunca alcanzar"CHR$(201)"s la sabidur"CHR$(203)"a."
16470 PRINT "Quiz"CHR$(201)" alg"CHR$(205)"n d"CHR$(201)"a reconozcas"
16471 PRINT "la importancia de la observaci"CHR$(204)"n"
16472 PRINT "y el pensamiento cr"CHR$(203)"tico."
16480 PRINT "Pulsa ENTER para regresar al camino."
16490 INPUT A$
16500 GOTO 1450


17000 REM HYPATIA DE ALEJANDRIA
17010 CLS
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
17071 PRINT "y la superstici"CHR$(204)"n."
17080 PRINT CHR$(211)"Seguir"CHR$(201)"s el camino de la raz"CHR$(204)"n"
17081 PRINT "y el aprendizaje? (S/N)"
17090 INPUT R$
17100 IF UPPER$(R$) = "S" THEN GOTO 17200
17110 IF UPPER$(R$) = "N" THEN GOTO 17400
17120 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
17130 GOTO 17100

17200 REM RESPUESTA AFIRMATIVA
17210 CLS
17220 PRINT "HYPATIA:"
17230 PRINT "Has elegido la b"CHR$(205)"squeda del conocimiento"
17231 PRINT "a trav"CHR$(202)"s de la raz"CHR$(204)"n."
17240 PRINT "Mi vida ha estado dedicada"
17241 PRINT "a la ense"CHR$(213)"anza"
17242 PRINT "y la investigaci"CHR$(204)"n."
17250 PRINT "La l"CHR$(204)"gica y "
17251 PRINT "las matem"CHR$(201)"ticas son herramientas
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
17430 PRINT "Es triste ver a alguien"
17431 PRINT "rechazar el poder"
17431 PRINT "de la raz"CHR$(204)"n y el conocimiento."
17440 PRINT "Sin embargo, recuerda que la ignorancia"
17441 PRINT "no es una condena permanente."
17450 PRINT "Siempre podr"CHR$(201)"s volver a la senda"
17451 PRINT "del aprendizaje y la investigaci"CHR$(204)"n."
17460 PRINT "Pulsa ENTER para regresar al camino."
17470 INPUT A$
17480 GOTO 1450


18000 REM MARY WOLLSTONECRAFT
18010 CLS
18020 PRINT "MARY WOLLSTONECRAFT:"
18030 PRINT "Soy Mary Wollstonecraft, escritora y "
18031 PRINT "defensora de los derechos"
18032 PRINT "de las mujeres."
18040 PRINT "Creo firmemente que la raz"CHR$(204)"n"
18041 PRINT "y la educaci"CHR$(204)"n "
18042 PRINT "son esenciales para la libertad."
18050 PRINT "La mujer debe ser vista"
18051 PRINT "como un ser racional,"
18052 PRINT "capaz de contribuir a la sociedad"
18060 PRINT "igual que los hombres."
18061 PRINT "La ignorancia impuesta a las mujeres"
18062 PRINT "es un obst"CHR$(201)"culo"
18070 PRINT "para el progreso de toda la humanidad."
18080 PRINT CHR$(211)"Defender"CHR$(201)"s la igualdad"
18081 PRINT "y el derecho a la educaci"CHR$(204)"n? (S/N)"
18090 INPUT R$
18100 IF UPPER$(R$) = "S" THEN GOTO 18200
18110 IF UPPER$(R$) = "N" THEN GOTO 18400

18200 REM RESPUESTA AFIRMATIVA
18210 CLS
18220 PRINT "MARY WOLLSTONECRAFT:"
18230 PRINT "Has elegido la raz"CHR$(204)"n y la justicia."
18240 PRINT "La educaci"CHR$(204)"n es la clave"
18241 PRINT "para una sociedad m"CHR$(201)"s justa."
18250 PRINT "La igualdad es el fundamento"
18251 PRINT "del progreso humano."
18260 PRINT "Pulsa ENTER para continuar..."
18270 INPUT A$
18280 GOSUB 50000

18400 REM RESPUESTA NEGATIVA
18410 CLS
18420 PRINT "MARY WOLLSTONECRAFT:"
18430 PRINT "Es lamentable rechazar la igualdad,"
18431 PRINT "pero la raz"CHR$(204)"n siempre"
18432 PRINT "puede abrir caminos."
18440 PRINT "Pulsa ENTER para abrir otro camino ."
18450 INPUT A$
18460 GOTO 1450

19000 REM SIMONE DE BEAUVOIR
19010 CLS
19020 PRINT "SIMONE DE BEAUVOIR:"
19030 PRINT "Soy Simone de Beauvoir,"
19031 PRINT " escritora, fil"chr$(204)"sofa"
19032 PRINT "y defensora del existencialismo."
19040 PRINT "Creo que 'No se nace mujer:"
19041 PRINT "se llega a serlo'."
19050 PRINT "La sociedad impone roles"
19051 PRINT "que debemos cuestionar y transformar."
19060 PRINT "La libertad es la base"
19061 PRINT "de nuestra existencia"
19062 PRINT "y debemos asumir la responsabilidad"
19070 PRINT "de nuestras elecciones sin excusas"
19071 PRINT "ni justificaciones en lo divino"
19072 PRINT "o lo natural."
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
19231 PRINT y desafiar los sistemas"
19232 PRINT "que limitan la libertad humana."
19240 PRINT "En mi libro 'El segundo sexo',"
19241 PRINT "analic"CHR$(202)" c"CHR$(204)"mo la cultura"
19242 PRINT "y la educaci"CHR$(204)"n construyen"
19243 PRINT "la diferencia de g"CHR$(202)"nero."
19250 PRINT "Ser libre no significa hacer lo que uno quiere"
19251 PRINT "sin consecuencias, sino"
19260 PRINT "asumir con responsabilidad"
19261 PRINT "las decisiones que tomamos."
19270 PRINT "La verdadera revoluci"CHR$(204)"n"
19271 PRINT "es la de la conciencia, "
19272 PRITN "que es la que nos permite"
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
19470 PRINT "Pulsa ENTER para regresar al camino."
19480 INPUT A$
19490 GOTO 1450

20000 REM MARIA ZAMBRANO
20010 CLS
20020 PRINT "MAR"chr$(203)"A ZAMBRANO:"
20030 PRINT "Soy Mar"chr$(203)"a Zambrano, fil"chr$(204)"sofa espa"chr$(213)"ola,"
20031 print "y creo en la raz"chr$(204)"n po"chr$(202)"tica."
20040 PRINT "La filosof"chr$(203)"a no debe limitarse"
20041 PRINT "a la raz"chr$(204)"n pura,"
20042 PRINT "sino abrirse a la intuici"chr$(204)"n"
20043 PRINT "y la emoci"chr$(204)"n."
20050 PRINT "La poes"chr$(203)"a nos permite llegar a verdades"
20051 PRINT "que la l"chr$(204)"gica no puede alcanzar."
20060 PRINT "En un mundo dominado por el pensamiento"
20061 PRINT "r"chr$(203)"gido, necesitamos recuperar"
20070 PRINT "una visi"chr$(204)"n del conocimiento que abarque"
20071 PRINT "lo humano en su totalidad."
20080 PRINT CHR$(211)"Aceptar"CHR$(201)"s la raz"CHR$(204)"n po"CHR$(202)"tica"
20081 PRINT "como v"CHR$(203)"a de conocimiento? (S/N)"
20090 INPUT R$
20100 IF UPPER$(R$) = "S" THEN GOTO 20200
20110 IF UPPER$(R$) = "N" THEN GOTO 20400
20120 PRINT "Respuesta no v"CHR$(201)"lida. Escribe S o N."
20130 GOTO 20090

20200 REM RESPUESTA AFIRMATIVA
20210 CLS
20220 PRINT "MAR"chr$(203)"A ZAMBRANO:"
20230 PRINT "Has elegido explorar la raz"chr$(204)"n po"chr$(202)"tica, "
20231 PRINT "un camino hacia la verdad"
20232 PRINT "a trav"chr$(202)"s de la intuici"chr$(204)"n."
20240 PRINT "En mi obra 'Claros del bosque', hablo"
20241 PRINT "de la revelaci"chr$(204)"n del ser"
20242 PRINT "mediante la contemplaci"chr$(204)"n."
20250 PRINT "El pensamiento filos"chr$(204)"fico no debe ser"
20251 PRINT "un mon"chr$(204)"logo racional, sino"
20260 PRINT "una apertura al misterio y a la belleza de lo inefable."
20270 PRINT "La verdadera sabidur"chr$(203)"a no solo se piensa,
20270 PRINT "sino que tambi"chr$(202)"n se siente y se vive."
20280 PRINT "Pulsa ENTER para continuar..."
20290 INPUT A$
20300 GOSUB 50000

20400 REM RESPUESTA NEGATIVA
20410 CLS
20420 PRINT "MAR"chr$(203)"A ZAMBRANO:"
20430 PRINT "Es comprensible que la raz"chr$(204)"n"
20431 Print "po"chr$(202)"tica parezca extra"chr$(213)"a"
20432 PRINT "en un mundo dominado por la l"chr$(204)"gica."
20440 PRINT "Pero te invito a reflexionar: "
20441 PRINT CHR$(211)"No has sentido alguna vez"
20442 PRINT "que hay verdades"
20450 PRINT "que la raz"chr$(204)"n sola no puede explicar?"
20460 PRINT "La filosof"chr$(203)"a tambi"chr$(202)"n
20461 PRINT "es un acto de creaci"chr$(204)"n,"
20462 PRINT "de apertura al asombro."
20470 PRINT "Pulsa ENTER para regresar al camino."
20480 INPUT A$
20490 GOTO 1450

50000 REM MENSAJE FINAL
50010 CLS
50020 PRINT "Gracias por participar en esta aventura filos"chr$(204)"fica"
50030 PRINT "Tu viaje espiritual y personal"
50031 PRINT "HA COMENZADO."
50032 PRINT "Recuerda aplicar las ideas aprendidas en tu vida."
50040 PRINT "Pulsa una tecla para terminar el juego. Y ya sabes:"
50040 PRINT "El juego termina, pero la vida no es un juego;"
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
50143 print "La ignorancia"
50144 print "es muy"
50145 print "ATREVIDA"
50146 input A$: mode 1
50147 load "collage.scr"
50148 input A$
50149 run"disk

