BEGIN ~IAGDRU04~

IF ~~ THEN BEGIN 0
  SAY @5867
  IF ~~ THEN EXTERN ~IAFERR02~ 2
END

IF ~~ THEN BEGIN 1
  SAY @5870
  = @5871
  IF ~~ THEN EXTERN ~IAFERR02~ 4
END

IF ~~ THEN BEGIN 3
  SAY @5877
  IF ~~ THEN EXTERN ~IAFERR02~ 8
END

// draco ferrous nearly dead, appearance of the diviner

IF ~~ THEN BEGIN 4
  SAY @5887
  = @5888
  IF ~~ THEN DO ~ClearAllActions() StartCutSceneMode() StartCutScene("S!druc16")~ EXIT
END

// diviner has killed draco ferrous

IF ~Global("IADruidPlot","GLOBAL",13) Global("IAPlot","S!0005",6)~ 6
  SAY @5910
  = @5911
  = @5912
  IF ~~ THEN EXTERN ~IADRUDIV~ 6
END

IF ~~ 9
  SAY @5923
  IF ~~ THEN EXTERN ~IADRUDIV~ 13
END

IF ~~ 10
  SAY @5928
  IF ~~ THEN REPLY @5929 GOTO 11
END

IF ~~ 11
  SAY @5930
  IF ~~ THEN REPLY @5931 EXTERN ~IADRUDIV~ 16
END

// finale

IF ~Global("IADruidPlot","GLOBAL",14)~ 12
  SAY @5935
  = @5936
  IF ~~ THEN REPLY @5937 GOTO 14
END

IF ~~ 14
  SAY @5938
  = @5939
  = @5940
  IF ~~ THEN REPLY @5941 GOTO 17
END

IF ~~ 17
  SAY @5942
  IF ~~ THEN DO ~SetGlobal("IADruidPlot","GLOBAL",15)~ EXIT
END

//

IF ~Global("IADruidPlot","GLOBAL",12)~ 18
  SAY @5860

  IF ~~ THEN EXIT
END

