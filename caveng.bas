10 REM === LOCOMOTIVE BASIC - THE CAVE ===
20 MODE 1: REM GRAPHIC MODE WITH 4 COLORS
21 BORDER 14: PAPER 0: INK 14,4,4: CLS
22 PRINT "The Cave"
23 PRINT "by Antonio Nuno - RetroFuturo"
24 PRINT "----------------------------------------"
25 PRINT "A journey through philosophy" 
26 PRINT "----------------------------------------"
27 PRINT "It's time to choose your own path"
28 PRINT "----------------------------------------"
29 INPUT "Press ENTER to start: ", A$
30 REM === INITIAL CONFIGURATION ===
31 LIMIT = 60: REM TIME LIMIT IN SECONDS (1 MINUTE)
32 T0 = TIME: REM INITIAL TIME IN MILLISECONDS
33 GOSUB 100

100 REM === GAME START ===
120 BORDER 14: PAPER 0: INK 14,4,4: CLS
470 REM THE ADVENTURE BEGINS
490 PRINT "You are in a dark cave,"
491 PRINT "CHAINED."
500 PRINT "A prisoner escapes and wants to free you."
510 PRINT "Do you accept his help"
511 PRINT "and leave the cave? (Y/N)"
520 INPUT R$
530 IF UPPER$(R$) = "Y" THEN GOTO 600
540 IF UPPER$(R$) = "N" THEN GOTO 1270
550 PRINT "Invalid response. Type Y or N."
560 GOTO 520
600 REM === EXITING THE CAVE ===
610 CLS
620 T = (TIME - T0) / 100: REM TIME ELAPSED IN SECONDS
630 IF T > LIMIT THEN GOTO 50070
640 PRINT "You escaped in time! "
641 PRINT ""LIMIT - T" seconds more..."
642 PRINT "and you would have stayed"
643 PRINT "forever in the cave."
644 PRINT "--------------------------"
650 PRINT "That's what happens when you hesitate"
651 PRINT "and live in ignorance..."
652 PRINT "Time passes and never returns."
653 PRINT "---------------------------------------"
660 PRINT "Press ENTER to continue..."
670 INPUT A$

1220 PRINT "You leave the cave."
1223 PRINT "You see a long path and people"
1224 PRINT "along the way."
1240 PRINT "Press ENTER to continue...",
1250 INPUT A$
1260 GOTO 1450

1270 REM === ENDING IN THE CAVE ===
1280 CLS
1290 PRINT "You decide to stay in the cave."
1291 PRINT "You prefer familiar shadows."
1300 PRINT "END.Do you want to play again? (Y/N)"
1310 INPUT R$
1320 IF UPPER$(R$) = "Y" THEN RUN
1330 IF UPPER$(R$) = "N" THEN END
1340 PRINT "Invalid response. Type Y or N."
1350 GOTO 1310

1360 REM === TIME===
1370 PRINT "Time is up. The cave darkens."
1371 PRINT "YOU WILL NEVER LEAVE."
1372 PRINT "Ignorance is your prison."
1373 PRINT "--------------------------------------"
1380 PRINT "END."
1390 PRINT "Do you want to play again? (Y/N)"
1400 INPUT R$
1410 IF UPPER$(R$) = "Y" THEN RUN
1420 IF UPPER$(R$) = "N" THEN END
1430 PRINT "Invalid response. Type Y or N."
1440 GOTO 1400

1450 REM === PHILOSOPHER SELECTION ===
1460 CLS
1470 PRINT "At this moment, I want to talk to..."
1480 PRINT "1 - Saint Augustine"
1490 PRINT "2 - Thomas Aquinas"
1500 PRINT "3 - Descartes"
1510 PRINT "4 - Locke"
1520 PRINT "5 - Kant"
1530 PRINT "6 - Spinoza"
1540 PRINT "7 - Hegel"
1550 PRINT "8 - Marx"
1560 PRINT "9 - Sartre"
1570 PRINT "10 - Epicurus"
1580 PRINT "11 - Ortega y Gasset"
1590 PRINT "12 - Nietzsche"
1600 PRINT "13 - Plato"
1610 PRINT "14 - Aristotle"
1620 PRINT "15 - Hypatia"
1621 PRINT "16 - M. Wollstonecraft"
1622 PRINT "17 - Simone de Beauvoir"
1623 PRINT "18 - M. Zambrano"
1624 PRINT "19 - I want to return to the cave"
1640 INPUT F$
1650 IF F$ = "1" THEN GOTO 2000
1660 IF F$ = "2" THEN GOTO 3000
1670 IF F$ = "3" THEN GOTO 4000
1680 IF F$ = "4" THEN GOTO 4499
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
1810 PRINT "Not correct. Type a valid number."
1820 GOTO 1640

2000 CLS
2020 PRINT "SAINT AUGUSTINE:"
2030 PRINT "Hello, I am Saint Augustine of Hippo."
2031 PRINT "I believe that faith and reason"
2040 PRINT "are essential to reaching the truth,"
2041 PRINT "but faith must guide reason."
2050 PRINT "Our hearts are restless"
2051 PRINT "until they rest in God."
2060 PRINT "Through introspection"
2061 PRINT "and reflection, we can understand"
2061 PRINT "our relationship with the divine."
2070 PRINT "Do you join this quest"
2071 PRINT "for inner truth? (Y/N)"
2080 INPUT R$
2090 IF UPPER$(R$) = "Y" THEN GOTO 2200
2100 IF UPPER$(R$) = "N" THEN GOTO 2400
2110 PRINT "Invalid response. Type Y or N."
2120 GOTO 2080

2200 REM AFFIRMATIVERESPONSE
2210 CLS
2220 PRINT "SAINT AUGUSTINE:"
2230 PRINT "You have chosen the path"
2231 PRINT "of introspection and faith."
2240 PRINT "For me, reason"
2241 PRINT "must be illuminated by faith"
2242 PRINT "to find the truth."
2250 PRINT "In my work 'Confessions',"
2251 PRINT "I explore the nature of the soul and"
2252 PRINT "our relationship with God."
2260 PRINT "Evil is not God's creation,"
2261 PRINT "but rather the absence of good,"
2270 PRINT "and only by drawing closer to God"
2271 PRINT "can we find true happiness."
2280 PRINT "Always keep searching, for"
2281 PRINT "'If you understand, it is not God'."
2290 PRINT "Press ENTER to continue..."
2300 INPUT A$
2310 GOSUB 50000

2400 REM NEGATIVE 
2410 CLS
2420 PRINT "SAINT AUGUSTINE:"
2430 PRINT "I understand that each soul"
2431 PRINT "has its own journey."
2440 PRINT "Your decision reminds me of"
2441 PRINT "the phrase: Grant me chastity" 
2442 PRINT "and continence,"
2442 PRINT "but not yet."
2450 PRINT "Sometimes, truth comes when"
2451 PRINT "we are ready to receive it."
2460 PRINT "I hope that in the future"
2461 PRINT "you may find peace in faith."
2461 PRINT "But either way..."
2462 PRINT "Never stop seeking the truth."
2463 PRINT "--------------------------------------"
2470 PRINT "Press ENTER to return to the path"
2471 PRINT "of philosophy..."
2480 INPUT A$
2490 GOTO 1450

3000 REM SAINT THOMAS
3010 CLS
3020 PRINT "SAINT THOMAS:"
3030 PRINT "Hello, I am Saint Thomas Aquinas."
3031 PRINT "I believe that faith and reason"
3040 PRINT "are not in conflict,"
3041 PRINT "but together they reveal"
3042 PRINT "the divine purpose."
3050 PRINT "God has given us reason"
3051 PRINT "as a tool to explore the world,"
3060 PRINT "and faith as a guide to truths"
3061 PRINT "that transcend the natural."
3070 PRINT "Do you join my quest"
3071 PRINT "for divine wisdom? (Y/N)"
3080 INPUT R$
3090 IF UPPER$(R$) = "Y" THEN GOTO 3200
3100 IF UPPER$(R$) = "N" THEN GOTO 3400
3110 PRINT "Invalid response. Type Y or N."
3120 GOTO 3080

3200 REM AFFIRMATIVE 
3210 CLS
3220 PRINT "SAINT THOMAS:"
3230 PRINT "You have chosen to embrace the quest"
3231 PRINT "for truth through"
3231 PRINT "faith and reason."
3240 PRINT "For me, human reason"
3241 PRINT "is a divine gift that allows us"
3250 PRINT "to understand the natural world"
3251 PRINT "and prepare to accept the"
3260 PRINT "supernatural truths revealed by God."
3270 PRINT "For example, in my work "
3271 PRINT "'Summa Theologica',"
3272 PRINT "I explain how rational arguments"
3280 PRINT "can demonstrate the existence of God:"
3290 PRINT "1. The argument from motion:"
3291 PRINT "Everything that moves has a cause."
3300 PRINT "2. The argument from efficient cause:"
3301 PRINT "Nothing can be its own cause."
3310 PRINT "3. The argument from purpose:"
3311 PRINT "There is order and purpose in nature."
3320 PRINT "Remember that faith complements"
3321 PRINT "what reason alone cannot reach."
3330 PRINT "You have chosen, but you must"
3331 PRINT "continue reflecting always."
3340 PRINT "Press ENTER to continue..."
3350 INPUT A$
3360 GOSUB 50000

3400 REM NEGATIV
3410 CLS
3420 PRINT "SAINT THOMAS:"
3430 PRINT "I understand that not everyone is"
3441 PRINT "ready for this quest."
3440 PRINT "However, consider this:"
3441 PRINT "Faith without reason may fall"
3450 PRINT "into superstition,"
3451 PRINT "and reason without faith"
3452 PRINT "may lose its purpose."
3460 PRINT "Knowledge comes not only from"
3461 PRINT "experience but also from"
3470 PRINT "the contemplation of the divine."
3471 PRINT "------------------------------------"
3480 PRINT "Press ENTER to return."
3490 INPUT A$
3500 GOTO 1450

4000 REM DESCARTES
4010 CLS
4030 PRINT "Hello, I am Descartes."
4031 PRINT "My philosophy is based on"
4032 PRINT "methodical doubt:"
4040 PRINT "'I think, therefore I am'."
4041 PRINT "-----------------------"
4050 PRINT "I believe that questioning everything"
4051 PRINT "is the only way to achieve certainty."
4060 PRINT "Do you accept questioning everything"
4061 PRINT "as a method to find the truth? (Y/N)"
4070 INPUT R$
4080 IF UPPER$(R$) = "Y" THEN GOTO 4200
4090 IF UPPER$(R$) = "N" THEN GOTO 4400
4100 PRINT "Invalid response. Type Y or N."
4110 GOTO 4070

4200 REM AFFIRMATIVE 
4210 CLS
4220 PRINT "DESCARTES:"
4230 PRINT "Your decision shows"
4231 PRINT "intellectual courage!"
4240 PRINT "Remember that methodical doubt"
4241 PRINT "is not doubting for its own sake,"
4250 PRINT "but eliminating false beliefs"
4251 PRINT "to build firm and secure knowledge."
4260 PRINT "In my work "
4261 PRINT "'Meditations on First Philosophy',"
4271 PRINT "I define 'cogito ergo sum',"
4280 PRINT "that is, 'I think, therefore I am'."
4281 PRINT "This is the first undeniable principle"
4290 PRINT "we find when questioning everything."
4300 PRINT "From this point, reason can demonstrate:"
4310 PRINT "1. The existence of God"
4311 PRINT "as a perfect being."
4320 PRINT "2. The distinction between"
4321 PRINT "the soul (mind) and the body."
4330 PRINT "Truth is built step by step"
4331 PRINT "with the clarity of reason!"
4340 PRINT "Press ENTER to continue..."
4350 INPUT A$
4360 GOSUB 50000

4400 REM NEGATIVE
4410 CLS
4420 PRINT "DESCARTES:"
4430 PRINT "I understand your decision,"
4431 PRINT "but remember this:"
4440 PRINT "'It is prudent never to trust"
4441 PRINT "completely in those who have"
4450 PRINT "once deceived us'."
4460 PRINT "If you do not doubt your beliefs,"
4461 PRINT "how will you know which are true?"
4470 PRINT "Press ENTER to return to the path..."
4480 INPUT A$
4490 GOTO 1450


4499 REM LOCKE
5010 CLS
5020 PRINT "LOCKE:"
5030 PRINT "Hello, I am John Locke"
5031 PRINT "I believe that knowledge comes"
5032 PRINT "from experience."
5040 PRINT "We are born as a 'tabula rasa',"
5041 PRINT "a blank slate, and everything we know"
5050 PRINT "is obtained through the senses"
5051 PRINT "and reflection."
5060 PRINT "Do you trust your experience"
5061 PRINT "to build your knowledge? (Y/N)"
5070 INPUT R$
5080 IF UPPER$(R$) = "Y" THEN GOTO 5200
5090 IF UPPER$(R$) = "N" THEN GOTO 5400
5100 PRINT "Invalid response. Type Y or N."
5110 GOTO 5070
5200 REM AFFIRMATIVE 
5210 CLS
5220 PRINT "LOCKE:"
5230 PRINT "You are the architect"
5231 PRINT "of your knowledge."
5231 PRINT "Each experience is a"
5240 PRINT "piece in the grand mosaic"
5241 PRINT "of your understanding."
5250 PRINT "In my work"
5251 PRINT " 'An Essay Concerning Human Understanding',"
5252 PRINT "I explain how knowledge"
5260 PRINT "is formed from two main sources:"
5270 PRINT "1. Sensation."
5271 PRINT "That is, what we perceive from the external world"
5272 PRINT "through our senses."
5280 PRINT "2. Reflection:"
5281 PRINT "That is, how we process"
5281 PRINT "those perceptions in our mind."
5290 PRINT "All complex knowledge"
5291 PRINT "is built by combining simple ideas."
5300 PRINT "Press ENTER to continue..."
5310 INPUT A$
5320 GOSUB 50000
5400 REM NEGATIVESPONSE
5410 CLS
5420 PRINT "LOCKE:"
5430 PRINT "I understand your distrust,"
5431 PRINT "but consider this:"
5440 PRINT "There is nothing in the intellect that"
5441 PRINT "was not first in the senses."
5450 PRINT "Without experience, our minds would be"
5451 PRINT "like a blank slate that never fills."
5460 PRINT "The senses connect us to the world"
5461 PRINT "and allow us to learn."
5470 PRINT "Press ENTER to return to the path of philosophy"
5471 PRINT "You can always come back to see me..."
5480 INPUT A$
5490 GOTO 1450

5999 REM KANT
6000 CLS
6020 PRINT "KANT:"
6030 PRINT "Hello, I am Immanuel Kant."
6031 PRINT "My philosophy centers"
6032 PRINT "on critique and reason."
6040 PRINT "I believe that you must 'act only according"
6041 PRINT "to that maxim through which"
6042 PRINT "you can at the same time will"
6050 PRINT "that it become a universal law'."
6060 PRINT "Are you willing to act out of duty,"
6061 PRINT "and not out of self-interest? (Y/N)"
6070 INPUT R$
6080 IF UPPER$(R$) = "Y" THEN GOTO 6200
6090 IF UPPER$(R$) = "N" THEN GOTO 6400
6100 PRINT "Invalid response. Type Y or N."
6110 GOTO 6070
6200 REM AFFIRMATIVE ESPONSE
6210 CLS
6220 PRINT "KANT:"
6230 PRINT "You have chosen the path of duty."
6231 PRINT "This demonstrates a great commitment to morality."
6240 PRINT "In my work"
6241 PRINT " 'Critique of Practical Reason',"
6250 PRINT "I discuss the categorical imperative,"
6251 PRINT "the rule that guides universal ethics."
6260 PRINT "Your actions must be universal:"
6261 PRINT "That is, wish that everyone act in that way."
6270 PRINT "Morality should not depend on rewards or punishments."
6280 PRINT "Press ENTER to continue..."
6290 INPUT A$
6300 GOSUB 50000
6400 REM NEGATIVE RESPNSE
6410 CLS
6420 PRINT "KANT:"
6430 PRINT "I understand that acting out of duty"
6431 PRINT "may seem difficult."
6440 PRINT "Remember: 'Morality is"
6441 PRINT "what makes us truly free.'"
6450 PRINT "Press ENTER and return to the path..."
6451 PRINT "it is your duty"
6460 INPUT A$
6470 GOTO 1450
6471 REM SPINOZA
7000 CLS
7020 PRINT "SPINOZA:"
7030 PRINT "Hello, I am Baruch Spinoza."
7031 PRINT "I believe that God and nature"
7032 PRINT "are one and the same."
7040 PRINT "Everything that exists is a manifestation"
7041 PRINT "of one infinite substance:"
7050 PRINT "God or Nature-Deus sive Natura"
7060 PRINT "Do you agree to contemplate"
7061 PRINT "the unity of the universe? (Y/N)"
7070 INPUT R$
7080 IF UPPER$(R$) = "Y" THEN GOTO 7200
7090 IF UPPER$(R$) = "N" THEN GOTO 7400
7100 PRINT "Invalid response. Type Y or N."
7110 GOTO 7070
7200 REM AFFIRMATIVE ESPONSE
7210 CLS
7220 PRINT "SPINOZA:"
7230 PRINT "You are part of the whole."
7231 PRINT "The harmony of the universe"
7232 PRINT "lies in understanding"
7240 PRINT "that everything is interconnected."
7241 PRINT "This frees us from irrational fears."
7250 PRINT "Press ENTER to continue..."
7260 INPUT A$
7270 GOSUB 50000
7400 REM NEGATIVE REPONSE
7410 CLS
7420 PRINT "SPINOZA:"
7430 PRINT "Understanding the unity of the universe"
7431 PRINT "can be a challenge."
7440 PRINT "Remember: 'Freedom is not acting on a whim,"
7441 PRINT "but living according to our true nature.'"
7450 PRINT "Press ENTER to return to the path of philosophy..."
7460 INPUT A$
7470 GOTO 1450
7999 REM HEGEL
8000 CLS
8020 PRINT "HEGEL:"
8030 PRINT "Hello, I am Georg Wilhelm Friedrich Hegel."
8031 PRINT "My philosophy is based on the idea"
8040 PRINT "that history and reality are"
8041 PRINT "a dialectical process. This means"
8050 PRINT "that constant change, through the tension"
8051 PRINT "and resolution of opposites,"
8060 PRINT "is what drives progress."
8070 PRINT "Do you agree that constant change leads to progress? (Y/N)"
8080 INPUT R$
8090 IF UPPER$(R$) = "Y" THEN GOTO 8200
8100 IF UPPER$(R$) = "N" THEN GOTO 8400
8110 PRINT "Invalid response. Type Y or N."
8120 GOTO 8080
8200 REM AFFIRMATIVE ESPONSE
8210 CLS
8220 PRINT "HEGEL:"
8230 PRINT "You have accepted the power of dialectics"
8231 PRINT "For me, reality is not something fixed,"
8240 PRINT "but a dynamic process."
8241 PRINT "Each idea (thesis)"
8242 PRINT "finds its contradiction (antithesis),"
8250 PRINT "and from that tension emerges"
8251 PRINT "a new truth (synthesis)."
8260 PRINT "This process occurs not only in history,"
8261 PRINT "but also in human life,"
8270 PRINT "where we face challenges"
8271 PRINT "and learn from them to achieve something greater."
8280 PRINT "In my work 'Phenomenology of Spirit',"
8281 PRINT "I explore how human consciousness"
8290 PRINT "evolves through this process,"
8291 PRINT "until it reaches freedom and understanding."
8300 PRINT "You have chosen, but"
8301 PRINT "you can always continue creating synthesis..."
8310 INPUT A$
8320 GOSUB 50000
8330 END
8400 REM NEGATIVE REPONSE
8410 CLS
8420 PRINT "HEGEL:"
8430 PRINT "To deny change is to deny reality itself."
8431 PRINT "Without conflict, there is no progress,"
8440 PRINT "and without progress, there is no freedom."
8441 PRINT "Reflect on this idea: 'Contradiction"
8450 PRINT "is the engine of all development.'"
8460 PRINT "Even if you now doubt, remember:"
8461 PRINT "even rejection can be part"
8470 PRINT "of a greater dialectical process."
8471 PRINT "Return when you are ready for progress"
8480 PRINT "Press ENTER to return to the path of philosophy"
8481 PRINT "and speak with another philosopher..."
8490 INPUT A$
8500 GOTO 1450
9000 REM MARX
9010 CLS
9020 PRINT "MARX:"
9030 PRINT "Hello, I am Karl Marx."
9031 PRINT "I believe that the history of humanity is a struggle"
9040 PRINT "constant between oppressors and the oppressed."
9041 PRINT "The class struggle is the engine of change."
9050 PRINT "Do you believe that equality"
9051 PRINT "can be achieved through collective struggle? (Y/N)"
9060 INPUT R$
9070 IF UPPER$(R$) = "Y" THEN GOTO 9200
9080 IF UPPER$(R$) = "N" THEN GOTO 9410
9090 PRINT "Invalid response. Type Y or N."
9100 GOTO 9060
9200 REM AFFIRMATIVE ESPONSE
9210 CLS
9220 PRINT "MARX:"
9230 PRINT "Your decision supports"
9231 PRINT "the emancipation of the proletariat"
9232 PRINT "For me, the capitalist system"
9240 PRINT "is full of inequalities"
9241 PRINT "that benefit a few and oppress the majority."
9250 PRINT "The key is for the working class,"
9251 PRINT "the proletariat,"
9260 PRINT "to unite and fight for its rights."
9270 PRINT "In my work 'Capital',"
9271 PRINT "I analyze how the economic system" 
9272 PRINT "creates these inequalities."
9280 PRINT "Collective action is the means"
9281 PRINT "to end exploitation and build"
9290 PRINT "a more just and equitable society,"
9291 PRINT "where the means of production"
9300 PRINT "belong to the people."
9310 PRINT "You have chosen,"
9311 PRINT "but continue in the struggle..."
9320 INPUT A$
9330 GOSUB 50000
9340 END
9400 REM NEGATIVE REPONSE
9410 CLS
9420 PRINT "MARX:"
9430 PRINT "If there is no collective action,"
9431 PRINT "change will be impossible."
9432 PRINT "The oppressors will continue"
9440 PRINT "dominating and the inequalities will remain."
9441 PRINT "Reflect on this idea:"
9450 PRINT "'Philosophers have interpreted the world"
9451 PRINT "in various ways; but what matters is"
9460 PRINT "transforming it.'"
9470 PRINT "When you are ready to consider the struggle,"
9471 PRINT "come back to me."
9480 PRINT "Press ENTER to return"
9481 PRINT "and to speak with another philosopher..."
9490 INPUT A$
9400 GOTO 1450
10000 REM JEAN-PAUL SARTRE
10010 CLS
10020 PRINT "JEAN-PAUL SARTRE:"
10030 PRINT "Hello, I am Jean-Paul Sartre."
10031 PRINT "I believe that existence precedes essence,"
10040 PRINT "which means that we are responsible"
10041 PRINT "for defining ourselves."
10050 PRINT "There is no human nature given by God;"
10051 PRINT "we are what we choose to be."
10060 PRINT "Absolute freedom entails"
10061 PRINT "a great responsibility for our actions."
10070 PRINT "Do you accept the burden of freedom"
10071 PRINT "and responsibility? (Y/N)"
10080 INPUT R$
10090 IF UPPER$(R$) = "Y" THEN GOTO 10200
10100 IF UPPER$(R$) = "N" THEN GOTO 10400
10110 PRINT "Invalid response. Type Y or N."
10120 GOTO 10080
10200 REM AFFIRMATIVE RSPONSE
10210 CLS
10220 PRINT "JEAN-PAUL SARTRE:"
10230 PRINT "You have accepted the freedom "
10231 PRINT "and responsibility of your actions."
10240 PRINT "For me, there is no pre-determined destiny"
10241 PRINT "nor an essence that defines us."
10250 PRINT "We are condemned to be free,"
10251 PRINT "and every choice defines us."
10260 PRINT "In my work 'Being and Nothingness',"
10261 PRINT "I explain how our consciousness"
10270 PRINT "confronts us with the anguish"
10271 PRINT "of constant choice."
10280 PRINT "There are no absolute values, "
10281 PRITN "only those we decide to adopt."
10290 PRINT "Continuing on your path is key. Press ENTER."
10300 INPUT A$
10310 GOSUB 50000
10400 REM NEGATIVE RESONSE
10410 CLS
10420 PRINT "JEAN-PAUL SARTRE:"
10430 PRINT "Rejecting freedom is also a choice."
10440 PRINT "But remember, 'There is no need for you to exist.'"
10450 PRINT "Avoiding responsibility is a form of bad faith,"
10451 PRINT "a self-deception."
10460 PRINT "Sooner or later, you will face the weight of freedom."
10470 PRINT "Press ENTER to return to the path of philosophy..."
10480 INPUT A$
10490 GOTO 1450
12000 REM EPICURO
12010 CLS
12020 PRINT "EPICURUS:"
12030 PRINT "Hello, I am Epicurus."
12301 PRINT "I believe that the goal of life"
12302 PRINT "is to achieve ataraxia,"
12040 PRINT "a state of tranquility and absence of suffering."
12050 PRINT "Pleasure is the beginning and the end "
12051 PRINt "of a happy life,"
12051 PRINT "but it must be moderate."
12060 PRINT "We should not fear the gods or death,"
12061 PRINT "for fear is the origin of suffering."
12070 PRINT "Do you seek happiness"
12071 PRINT "through rational pleasure? (Y/N)"
12080 INPUT R$
12090 IF UPPER$(R$) = "Y" THEN GOTO 12200
12100 IF UPPER$(R$) = "N" THEN GOTO 12400
12110 PRINT "Invalid response. Type Y or N."
12120 GOTO 12080
12200 REM AFFIRMATIVE ESPONSE
12210 CLS
12220 PRINT "EPICURUS:"
12230 PRINT "You have chosen the path of rational"
12231 PRINT "pleasure and tranquility."
12240 PRINT "For me, happiness is achieved"
12241 PRINT "by avoiding unnecessary pain."
12250 PRINT "In my philosophy, pleasure is not excessive,"
12251 PRINT "but moderate and natural."
12260 PRINT "The fear of death is irrational,"
12261 PRINT "for when it comes, we no longer exist."
12270 PRINT "Do not depend on wealth or luxury,"
12271 PRINT "but on friendship and serenity."
12280 PRINT "Press ENTER to continue..."
12290 INPUT A$
12300 GOSUB 50000
12400 REM NEGATIVE REPONSE
12410 CLS
12420 PRINT "EPICURUS:"
12430 PRINT "I understand that not everyone seeks happiness"
12431 PRINT "through rational pleasure."
12440 PRINT "But remember, 'Philosophy is of no use"
12441 PRINT "if it does not alleviate human suffering.'"
12450 PRINT "Uncontrolled fear and desire"
12451 PRINT "lead to anguish, not happiness."
12460 PRINT "Perhaps someday you will discover"
12461 PRINT "that the key lies in tranquility."
12470 PRINT "Press ENTER to return."
12480 INPUT A$
12490 GOTO 1450
13000 REM ORTEGA Y GASSET
13010 CLS
13020 PRINT "ORTEGA Y GASSET:"
13030 PRINT "Hello, I am J. Ortega y Gasset."
13031 PRINT "I believe that 'I am I and my circumstance',"
13040 PRINT "which means we cannot understand ourselves"
13041 PRINT "outside of our context."
13050 PRINT "The vital reason allows us"
13051 PRINT "to understand the world from our "
13052 PRINT "personal experience."
13060 PRINT "History is fundamental, as we are the product"
13061 PRINT "of our time and our choices."
13070 PRINT "Do you accept"
13071 PRINT "the responsibility of forging your own destiny? (Y/N)"
13080 INPUT R$
13090 IF UPPER$(R$) = "Y" THEN GOTO 13200
13100 IF UPPER$(R$) = "N" THEN GOTO 13400
13110 PRINT "Invalid response. Type Y or N."
13120 GOTO 13080
13200 REM AFFIRMATIVE ESPONSE
13210 CLS
13220 PRINT "ORTEGA Y GASSET:"
13230 PRINT "You have chosen to assume responsibility"
13231 PRINT "for your life and circumstances."
13240 PRINT "For me, vital reason"
13241 PRINT "is key to understanding our reality."
13250 PRINT "We do not live in a vacuum, but in a concrete situation"
13251 PRINT "that defines us."
13260 PRINT "Understanding our history and context"
13261 PRINT "allows us to act with meaning and direction."
13270 PRINT "There is no predetermined destiny,"
13271 PRINT "only the construction"
13272 PRINT "of our own life."
13280 PRINT "Press ENTER to continue"
13281 PRINT "with your circumstances..."
13290 INPUT A$
13300 GOSUB 50000
13400 REM NEGATIVE REPONSE
13410 CLS
13420 PRINT "ORTEGA Y GASSET:"
13430 PRINT "I understand that not everyone is ready"
13431 PRINT "to face their circumstances."
13440 PRINT "But remember:"
13441 PRINT "'To live is to feel forced"
13442 PRINT "to exercise freedom.'"
13450 PRINT "Denying the reality of our situation"
13451 PRINT "is a form of escape."
13460 PRINT "Perhaps in the future"
13461 PRINT " you will understand that"
13462 PRINT "action is inevitable."
13470 PRINT "Press ENTER to return to the path"
13471 PRINT "of philosophy; your action is inevitable now."
13480 INPUT A$
13490 GOTO 1450
14000 REM NIETZSCHE
14010 CLS
14020 PRINT "NIETZSCHE:"
14030 PRINT "Hello, I am Friedrich Nietzsche."
14031 PRINT "God is dead,"
14040 PRINT "and humanity must create its own values."
14050 PRINT "The Übermensch"
14051 PRINT "is the one who frees himself"
14052 PRINT "from imposed morality"
14052 PRINT "and forges his own destiny."
14060 PRINT "The eternal recurrence challenges us"
14061 PRINT "to live in such a way"
14061 PRINT "that we would gladly repeat our lives eternally."
14070 PRINT "Do you accept the challenge to create"
14071 PRINT "your own path without constraints? (Y/N)"
14080 INPUT R$
14090 IF UPPER$(R$) = "Y" THEN GOTO 14200
14100 IF UPPER$(R$) = "N" THEN GOTO 14400
14110 PRINT "Invalid response. Type Y or N."
14120 GOTO 14080
14200 REM AFFIRMATIVE ESPONSE
14210 CLS
14220 PRINT "NIETZSCHE:"
14230 PRINT "You have chosen to defy norms"
14231 PRINt "and create your own morality."
14240 PRINT "For me, the will to power drives individuals"
14241 PRINT "to overcome their limits."
14250 PRINT "Excessive compassion weakens;"
14251 PRINT "the affirmation of life strengthens us."
14260 PRINT "Do not follow the crowd,"
14261 PRINT "become the creator of your own destiny."
14270 PRINT "Only he who overcomes nihilism"
14271 PRINT "can achieve true greatness."
14280 PRINT "Press ENTER to continue..."
14290 INPUT A$
14300 GOSUB 50000
14400 REM NEGATIVE REPONSE
14410 CLS
14420 PRINT "NIETZSCHE:"
14430 PRINT "Rejecting this path is clinging"
14431 PRINT "to outdated and debilitating values."
14432 PRINT "It is a mistake."
14440 PRINT "But remember, 'The individual"
14441 PRINT "must be consumed in the flame of his own will.'"
14450 PRINT "Life has no preordained meaning,"
14451 PRINT "and to deny it is to take refuge in falsehood."
14460 PRINT "Perhaps someday you will dare to gaze into "
14461 PRINT "the abyss without fear."
14470 PRINT "Press ENTER to return."
14480 INPUT A$
14490 GOTO 1450
15000 REM PLATON
15010 CLS
15020 PRINT "PLATO:"
15030 PRINT "Greetings, I am Plato."
15031 PRINT "I believe that the sensible world"
15032 PRINT "you see is only a"
15040 PRINT "shadow of true reality,"
15041 PRINT "which resides in the world of Ideas."
15050 PRINT "Only through philosophy"
15051 PRINT "and knowledge can we attain"
15060 PRINT "the truth and escape"
15061 PRINT "the cave of appearances."
15070 PRINT "Justice, beauty, and the good "
15071 PRINT "are not mere opinions, but"
15080 PRINT "eternal concepts that the soul can know."
15090 PRINT "Are you willing to follow the path"
15091 PRINT "of knowledge and truth? (Y/N)"
15100 INPUT R$
15110 IF UPPER$(R$) = "Y" THEN GOTO 15200
15120 IF UPPER$(R$) = "N" THEN GOTO 15400
15130 PRINT "Invalid response. Type Y or N."
15140 GOTO 15100
15200 REM AFFIRMATIVE ESPONSE
15210 CLS
15220 PRINT "PLATO:"
15230 PRINT "You have chosen to leave" 
15231 PRINT "the cave and seek the truth."
15240 PRINT "My teacher Socrates taught that true knowledge"
15241 PRINT "comes from dialogue and reflection."
15250 PRINT "Do not settle for what your senses reveal," 
15251 PRINT "but seek the essence of things."
15270 PRINT "In my work 'The Republic',"
15271 PRINT "I describe an ideal state where"
15280 PRINT "philosophers rule,"
15281 PRINT "for they are the only ones capable"
15281 PRINT "of perceiving the good itself."
15290 PRINT "I believe the human soul "
15291 PRINT "is divided into three parts:" 
15292 PRINT "the rational, the spirited, and the appetitive."
15300 PRINT "Only when reason governs can"
15301 PRINT "both the individual and society be just."
15310 PRINT "Always reflect, for philosophy is the guide"
15311 PRINT "to a better life."
15320 PRINT "Press ENTER to continue..."
15330 INPUT A$
15340 GOSUB 50000
15400 REM NEGATIVE REPONSE
15410 CLS
15420 PRINT "PLATO:"
15430 PRINT "I understand that you prefer"
15431 PRINT "to remain in the cave, but remember:"
15440 PRINT "The price of neglecting politics"
15441 PRINT "is to be ruled by the worst."
15450 PRINT "Knowledge is the only thing that frees us"
15451 PRINT "from ignorance and injustice."
15460 PRINT "If you only trust what you see,"
15461 PRINT "you will miss true reality."
15470 PRINT "Perhaps someday"
15471 PRINT "you will decide to leave the cave"
15472 PRINT "and face the light of knowledge."
15480 PRINT "Press ENTER to return."
15490 INPUT A$
15500 GOTO 1450

16000 REM ARISTOTELES
16010 CLS
16020 PRINT "ARISTOTLE:"
16030 PRINT "Greetings, I am Aristotle."
16031 PRINT "I believe that knowledge is obtained through"
16040 PRINT "experience and observation of the natural world."
16050 PRINT "Reality is not divided into two worlds,"
16051 PRINT "as my teacher Plato once thought,"
16060 PRINT "but every being has an essence and a form"
16061 PRINT "that we can comprehend."
16070 PRINT "Happiness is achieved by cultivating virtue"
16071 PRINT "and practicing reasonableness."
16080 PRINT "Man is a political animal," 
16081 PRINT "destined to live in society."
16090 PRINT "Are you willing to explore reality"
16091 PRINT "with reason and experience? (Y/N)"
16100 INPUT R$
16110 IF UPPER$(R$) = "Y" THEN GOTO 16200
16120 IF UPPER$(R$) = "N" THEN GOTO 16400
16130 PRINT "Invalid response. Type Y or N."
16140 GOTO 16100
16200 REM AFFIRMATIVE RSPONSE
16210 CLS
16220 PRINT "ARISTOTLE:"
16230 PRINT "You have chosen the path of observation and logic."
16240 PRINT "To understand the world,"
16241 PRINT "we must analyze its causes and principles."
16250 PRINT "In my work 'Metaphysics',"
16251 PRINT "I explain the distinction between"
16252 PRINT "act and potential:"
16260 PRINT "every being has the potential to become"
16261 PRINT "something greater."
16270 PRINT "Knowledge is based on categorizing" 
16271 PRINT "and classifying nature."
16280 PRINT "Virtue is a habit developed"
16281 PRINT "through practice and moderation."
16290 PRINT "Remember, excellence is not an act,"
16291 PRINT "but a constant habit."
16300 PRINT "Press ENTER to continue..."
16310 INPUT A$
16320 GOSUB 50000
16400 REM NEGATIVE RESONSE
16410 CLS
16420 PRINT "ARISTOTLE:"
16430 PRINT "I understand that not everyone seeks truth"
16431 PRINT "through reason and experience."
16440 PRINT "But remember, 'The ignorant affirm,"
16441 PRINT "the wise doubt and reflect.'"
16450 PRINT "The quest for knowledge"
16451 PRINT "is the path toward human fulfillment."
16460 PRINT "If you ignore the nature of things,"
16461 PRINT "you will never achieve wisdom."
16470 PRINT "Perhaps someday you will recognize"
16471 PRINT "the importance of observation" 
16472 PRINT "and critical thinking."
16480 PRINT "Press ENTER to return."
16490 INPUT A$
16500 GOTO 1450
17000 REM HYPATIA OF ALEXANDRIA
17010 CLS
17020 PRINT "HYPATIA:"
17030 PRINT "I am Hypatia of Alexandria, a lover"
17031 PRINT "of knowledge and reason."
17040 PRINT "I teach mathematics, philosophy"
17041 PRINT "and astronomy, convinced that the"
17050 PRINT "pursuit of truth must be based"
17051 PRINT "on logic and evidence."
17060 PRINT "Ideas and critical thinking are"
17061 PRINT "our best tools"
17070 PRINT "to combat ignorance and superstition."
17080 PRINT "Do you agree to follow"
17081 PRINT "the path of reason and learning? (Y/N)"
17090 INPUT R$
17100 IF UPPER$(R$) = "Y" THEN GOTO 17200
17110 IF UPPER$(R$) = "N" THEN GOTO 17400
17120 PRINT "Invalid response. Type Y or N."
17130 GOTO 17100
17200 REM AFFIRMATIVE RSPONSE
17210 CLS
17220 PRINT "HYPATIA:"
17230 PRINT "You have chosen the pursuit of knowledge"
17231 PRINT "through reason."
17240 PRINT "My life has been dedicated to teaching"
17241 PRINT "and research."
17250 PRINT "Logic and mathematics are powerful tools"
17251 PRINT "to understand the world"
17260 PRINT "and free us from the chains of ignorance."
17270 PRINT "Always remember: to doubt and question"
17271 PRINT "is the first step toward wisdom."
17280 PRINT "Press ENTER to continue..."
17290 INPUT A$
17300 GOSUB 50000
17400 REM NEGATIVE RESONSE
17410 CLS
17420 PRINT "HYPATIA:"
17430 PRINT "It is sad to see someone reject the power"
17431 PRINT "of reason and knowledge."
17440 PRINT "However, remember that ignorance"
17441 PRINT "is not a permanent sentence."
17450 PRINT "You can always return to the path"
17451 PRINT "of learning and research."
17460 PRINT "Press ENTER to return."
17470 INPUT A$
17480 GOTO 1450
18000 REM MARY WOLLSTONECRAFT
18010 CLS
18020 PRINT "MARY WOLLSTONECRAFT:"
18030 PRINT "I am Mary Wollstonecraft, a writer and"
18031 PRINT "defender of women's rights."
18040 PRINT "I firmly believe that reason and education"
18041 PRINT "are essential for freedom."
18050 PRINT "Women must be seen as rational beings,"
18051 PRINT "capable of contributing to society"
18060 PRINT "on par with men."
18061 PRINT "The imposed ignorance on women"
18062 PRINT "is an obstacle"
18070 PRINT "to the progress of all humanity."
18080 PRINT "Do you support equality"
18081 PRINT "and the right to education? (Y/N)"
18090 INPUT R$
18100 IF UPPER$(R$) = "Y" THEN GOTO 18200
18110 IF UPPER$(R$) = "N" THEN GOTO 18400
18200 REM AFFIRMATIVE ESPONSE
18210 CLS
18220 PRINT "MARY WOLLSTONECRAFT:"
18230 PRINT "You have chosen reason and justice."
18240 PRINT "Education is the key"
18241 PRINT "to a more just society."
18250 PRINT "Equality is the foundation"
18251 PRINt "of human progress."
18260 PRINT "Press ENTER to continue..."
18270 INPUT A$
18280 GOSUB 50000
18400 REM NEGATIVE REPONSE
18410 CLS
18420 PRINT "MARY WOLLSTONECRAFT:"
18430 PRINT "It is unfortunate to reject equality,"
18431 PRINT "but reason can always open new paths."
18440 PRINT "Press ENTER to return."
18450 INPUT A$
18460 GOTO 1450
19000 REM SIMONE DE BEAUVOIR
19010 CLS
19020 PRINT "SIMONE DE BEAUVOIR:"
19030 PRINT "I am Simone de Beauvoir,"
19091 PRINT "a writer, philosopher"
19032 PRINT "and defender of existentialism."
19040 PRINT "I believe that 'One is not born,"
19041 PRINT "but becomes, a woman.'"
19050 PRINT "Society imposes roles" 
19051 PRINT "that we must question and transform."
19060 PRINT "Freedom is the foundation of our existence"
19061 PRINT "and we must take responsibility"
19070 PRINT "for our choices without excuses"
19071 PRINT "or appeals to the divine or the natural."
19080 PRINT "Do you question imposed roles"
19081 PRINT "and fight for freedom? (Y/N)"
19090 INPUT R$
19100 IF UPPER$(R$) = "Y" THEN GOTO 19200
19110 IF UPPER$(R$) = "N" THEN GOTO 19400
19120 PRINT "Invalid response. Type Y or N."
19130 GOTO 19090
19200 REM AFFIRMATIVE RESPONS
19210 CLS
19220 PRINT "SIMONE DE BEAUVOIR:"
19230 PRINT "You have chosen to question"
19231 PRINT "and challenge the systems"
19232 PRINT "that limit human freedom."
19240 PRINT "In mu book 'The Second Sex'," 
19241 PRINT "I analyze how culture"
19241 PRINT "and education build"
19242 PRINT "gender differences."
19250 PRINT "To be free does not mean" 
19251 PRINT "doing whatever one wants"
19252 PRINT "without consequences, but"
19260 PRINT "taking responsibility"
19261 PRINT "for the decisions we make."
19270 PRINT "The true revolution"
19271 PRINT "is one of consciousness, which allows us"
19280 PRINT "to redefine our role in the world."
19290 PRINT "Press ENTER to continue..."
19300 INPUT A$
19310 GOSUB 50000
19400 REM NEGATIVE RESPONS
19410 CLS
19420 PRINT "SIMONE DE BEAUVOIR:"
19430 PRINT "Freedom can be frightening because"
19431 PRINT "it implies responsibility."
19440 PRINT "But ignoring the structures"
19441 PRINT "of oppression does not make them vanish."
19450 PRINT "I invite you to reflect: "
19451 PRINT "Are you truly free"
19452 PRINT "if you have never questioned your role?"
19460 PRINT "Philosophy is meant"
19461 PRINT "to pull us out of the comfort" 
19462 PRINT "of the imposed."
19470 PRINT "Press ENTER to return."
19480 INPUT A$
19490 GOTO 1450
20000 REM MARIA ZAMBRANO
20010 CLS
20020 PRINT "M. ZAMBRANO:"
20030 PRINT "I am M. Zambrano, a Spanish philosopher,"
20031 PRINT "and I believe in poetic reason."
20040 PRINT "Philosophy should not be limited"
20041 PRINT "to pure reason,"
20042 PRINT "but must open itself to intuition"
20043 PRINT "and emotion."
20050 PRINT "Poetry allows us to reach truths"
20051 PRINT "that logic alone cannot attain."
20060 PRINT "In a world dominated by rigid thought,!
20061 PRINT "we need to recover"
20062 PRINT "a vision of knowledge that embraces"
20070 PRINT "all that is human."
20080 PRINT "Do you accept poetic reason"
20081 PRINT "as a way of knowing? (Y/N)"
20090 INPUT R$
20100 IF UPPER$(R$) = "Y" THEN GOTO 20200
20110 IF UPPER$(R$) = "N" THEN GOTO 20400
20120 PRINT "Invalid response. Type Y or N."
20130 GOTO 20090
20200 REM AFFIRMATIVE RESONSE
20210 CLS
20220 PRINT "M. ZAMBRANO:"
20230 PRINT "You have chosen to explore poetic reason,"
20231 PRINT "a path to truth through intuition."
20232 PRINT "In my work 'Forest Glades', I speak"
20241 PRINT "of the revelation of being"
20242 PRINT "through contemplation."
20250 PRINT "Philosophical thought should not be"
20251 PRINT "a purely rational monologue, but"
20260 PRINT "an openness to the mystery"
20261 PRINT "and beauty of the ineffable."
20270 PRINT "True wisdom is not only thought,"
20270 PRINT "but also felt and lived."
20280 PRINT "Press ENTER to continue..."
20290 INPUT A$
20300 GOSUB 50000
20400 REM NEGATIVE RESPNSE
20410 CLS
20420 PRINT "M. ZAMBRANO:"
20430 PRINT "It is understandable"
20431 PRINT "that poetic reason may seem strange"
20432 PRINT "in a world dominated by logic."
20440 PRINT "But I invite you to reflect:"
20441 PRINT "Have you never felt that there are truths"
20450 PRINT "that reason alone cannot explain?"
20460 PRINT "Philosophy is also an act of creation,"
20461 PRINt "an openness to wonder."
20470 PRINT "Press ENTER to return."
20480 INPUT A$
20490 GOTO 1450
50000 REM FINAL MESSAGE
50010 CLS
50020 PRINT "Thank you for participating"
50021 PRINT "in this philosophical adventure"
50030 PRINT "Your spiritual and personal journey"
50031 PRINT "HAS BEGUN."
50032 PRINT "Remember to apply the ideas learned in your life."
50040 PRINT "Press any key to end the game. And remember:" 
50040 PRINT "The game ends,"
50051 PRINT "but life is not a game;" 
50041 PRINT "face it with courage."
50043 GOSUB 50080
50070 PRINT "Time has passed." 
50071 PRINT "You have remained in the same place."
50072 PRINT "Death has come, "
50073 PRINT "and you are surprised by your ignorance."
50080 PRINT "Do you want to try again? (Y/N)"
50090 INPUT R$
50100 IF R$ = "S" OR R$ = "s" THEN RUN
50110 IF R$ = "N" OR R$ = "n" THEN goto 50140
50120 PRINT "Invalid response. Type Y or N."
50130 GOTO 50090
50140 CLS

50141 mode 0
50142 load "cav.scr"
50143 PRINT "STOP, FOREVER..."
50144 Input A$
50144 run"disk

