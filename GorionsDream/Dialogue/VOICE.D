BEGIN Sorced2

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN warrid help1
@0
==Voice@1
==Voice@2
==warrid@3
==Voice@4
END
++@5+ help2
++@6+ help3

CHAIN
IF~~THEN warrid help2
@7DO~GiveItem("OLTALOND",Player1)ActionOverride(Myself,Kill(Myself))~
==Voice@8 DO ~FadeToColor([50.0],0)  Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR104","",[1342.1061],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF~~THEN warrid help3
@9
==Voice@10 DO ~FadeToColor([50.0],0)  Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR104","",[1342.1061],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN messed deliv1
@11
==Voice@12
==messed@13
==Voice@14
==messed@15 
END
++ @16 + deliv2
++ @17 + deliv3

CHAIN
IF~~THEN messed deliv2
@18 DO ~GiveItem("OLHORNGD",Player1) ActionOverride(Myself,Kill(Myself))~
==Voice@19 DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR102","",[350.408],10)) FadeFromColor([50.0],0)~ EXIT

CHAIN
IF~~THEN messed deliv3
@20DO~EscapeArea()~
==Voice@21DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR102","",[350.408],10)) FadeFromColor([50.0],0)~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN sorced candl1
@22
==Voice@23
==sorced@24DO~SetGlobal("Door","GDR102",1)~
==Voice@25EXIT

CHAIN
IF WEIGHT #-2~ Global("CandleTrap","gdr102",2) ~ THEN Voice candl2
@26
END
++@27DO ~SetGlobal("CandleTrap","gdr102",3) ActionOverride("sorced",DestroySelf()) CreateCreature("sorced2",[483.249],0) Wait(1)~ EXTERN SORCED2 candl3
++@28 DO ~ActionOverride("sorced",Kill("sorced")) SetGlobal("CandleTrap","gdr102",3)~ + candl4

CHAIN
IF ~True()~ THEN SORCED2 candl3
@29 DO~TakePartyItem("gdcandld")~
==Voice@30
= @31DO ~FadeToColor([50.0],0) Wait(2) TakePartyItem("gdcandld") Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr103","",[699.54],3)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF ~~ THEN Voice candl4
@32 
=@31 DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr103","",[699.54],3)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN WHITKD Ogrebad1
@33
==Ogred@34
==Whitkd @35
==Voice@36
==Ogred @37
==Voice @38
END
++@39EXTERN OGRED Ogrebad2
++@40EXTERN WHITKD Ogrebad3

CHAIN
IF~~THEN OGRED Ogrebad2
@41
==Voice @42 DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr106","",[2174.1811],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF~~ THEN WHITKD Ogrebad3
@43 DO~ActionOverride("ogred",Kill("ogred")) 	GiveItem("OLDAGGGD",Player1)~
==Voice@44 DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr106","",[2174.1811],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~ Global("DreamAreaGnoll","GDR106",1) ~ THEN Voice Gnoll1
@45
DO ~SetGlobal("DreamAreaGnoll","GDR106",2)ActionOverride(Myself,DestroySelf()) ~ EXIT

CHAIN
IF WEIGHT #-3~Global("GdrDreamGnoll","GLOBAL",1)~ THEN Poisod  Poison1
@46
DO~SetGlobal("GdrDreamGnoll","GLOBAL",2)~ EXIT

CHAIN
IF WEIGHT #-2~PartyHasItem("OLPOTNGD")~ THEN Poisod  Poison2
@46
==Voice@47
==Poisod@48 
END
++ @49 EXTERN VOICE Poison4
++@50 + Poison3

CHAIN
IF~~THEN Poisod Poison3
@51
DO~TakePartyItem("OLPOTNGD")~
==VOICE@52
DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR108","",[280.1550],8))
FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF ~~ THEN VOICE Poison4
@53 DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR108","",[280.1550],8)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN Womand Last1
@54
DO~SetGlobal("GdrDreamGnoll","GLOBAL",4)~
==Voice@55
==Womand@56
==Voice @57 
END
++@58 + Last2
++@59+ Last3

CHAIN
IF~~THEN Womand Last2
@60 
DO~GiveItem("OLSKULLD",Protagonist) SetGlobal("GDDreamComplete","GLOBAL",1)~
==Voice@61 DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr100","",[193.311],13)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF~~THEN Womand Last3
@62
DO~SetGlobal("GDDreamComplete","GLOBAL",1)~
==Voice@63DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr100","",[193.311],13)) FadeFromColor([50.0],0) ~ EXIT


CHAIN
IF WEIGHT #-3~Global("GdrDreamGnoll","GLOBAL",3) ~ THEN Goriod Fail
@64
= @65
=@66
DO~AddXPObject(Protagonist,6000) SetGlobal("GdrDreamGnoll","GLOBAL",5) RestorePartyLocations()~ EXIT


CHAIN
IF WEIGHT #-3~Global("GDDreamComplete","GLOBAL",2) ~ THEN Goriod Finish
@67
DO~SetGlobal("GDDreamComplete","GLOBAL",3)~
==Goriod IF ~GlobalGT("gdDreamEvil","GLOBAL",1)~THEN@68
==Goriod IF ~GlobalLT("gdDreamEvil","GLOBAL",0)~THEN@69
==Goriod IF ~OR(2)Global("gdDreamEvil","GLOBAL",1) Global("gdDreamEvil","GLOBAL",0)~THEN@70
==Goriod@71
END
IF~Global("gdDreamEvil","GLOBAL",-6)~THEN REPLY@72+ F1
IF~Global("gdDreamEvil","GLOBAL",-6)~THEN REPLY@73+ F2
IF~Global("gdDreamEvil","GLOBAL",-6)~THEN REPLY@74+ F3
IF~Global("gdDreamEvil","GLOBAL",-6)~THEN REPLY@75+ F4
IF~Global("gdDreamEvil","GLOBAL",-6)~THEN REPLY@76+ F5
IF~Global("gdDreamEvil","GLOBAL",-6)~THEN REPLY@77+ F6
IF~Global("gdDreamEvil","GLOBAL",-4)~THEN REPLY@78+ F11
IF~Global("gdDreamEvil","GLOBAL",-4)~THEN REPLY@79+ F12
IF~Global("gdDreamEvil","GLOBAL",-4)~THEN REPLY@80+ F13
IF~Global("gdDreamEvil","GLOBAL",-4)~THEN REPLY@81+ F14
IF~Global("gdDreamEvil","GLOBAL",-4)~THEN REPLY@82+ F15
IF~Global("gdDreamEvil","GLOBAL",-4)~THEN REPLY@83+ F16
IF~Global("gdDreamEvil","GLOBAL",-2)~THEN REPLY@84+ F21
IF~Global("gdDreamEvil","GLOBAL",-2)~THEN REPLY@85+ F22
IF~Global("gdDreamEvil","GLOBAL",-2)~THEN REPLY@86+ F23
IF~Global("gdDreamEvil","GLOBAL",-2)~THEN REPLY@87+ F24
IF~Global("gdDreamEvil","GLOBAL",-2)~THEN REPLY@88+ F25
IF~Global("gdDreamEvil","GLOBAL",-2)~THEN REPLY@89+ F26
IF~Global("gdDreamEvil","GLOBAL",0)~THEN REPLY@90+ F31
IF~Global("gdDreamEvil","GLOBAL",0)~THEN REPLY@91+ F32
IF~Global("gdDreamEvil","GLOBAL",0)~THEN REPLY@92+ F33
IF~Global("gdDreamEvil","GLOBAL",0)~THEN REPLY@93+ F34
IF~Global("gdDreamEvil","GLOBAL",0)~THEN REPLY@94+ F35
IF~Global("gdDreamEvil","GLOBAL",0)~THEN REPLY@95+ F36
IF~Global("gdDreamEvil","GLOBAL",2)~THEN REPLY@96+ F41
IF~Global("gdDreamEvil","GLOBAL",2)~THEN REPLY@97+ F42
IF~Global("gdDreamEvil","GLOBAL",2)~THEN REPLY@98+ F43
IF~Global("gdDreamEvil","GLOBAL",2)~THEN REPLY@99+ F44
IF~Global("gdDreamEvil","GLOBAL",2)~THEN REPLY@100+ F45
IF~Global("gdDreamEvil","GLOBAL",2)~THEN REPLY@101+ F46
IF~Global("gdDreamEvil","GLOBAL",4)~THEN REPLY@102+ F51
IF~Global("gdDreamEvil","GLOBAL",4)~THEN REPLY@103+ F52
IF~Global("gdDreamEvil","GLOBAL",4)~THEN REPLY@104+ F53
IF~Global("gdDreamEvil","GLOBAL",4)~THEN REPLY@105+ F54
IF~Global("gdDreamEvil","GLOBAL",4)~THEN REPLY@106+ F55
IF~Global("gdDreamEvil","GLOBAL",4)~THEN REPLY@107+ F56
IF~Global("gdDreamEvil","GLOBAL",6)~THEN REPLY@108+ F61
IF~Global("gdDreamEvil","GLOBAL",6)~THEN REPLY@109+ F62
IF~Global("gdDreamEvil","GLOBAL",6)~THEN REPLY@110+ F63
IF~Global("gdDreamEvil","GLOBAL",6)~THEN REPLY@111+ F64
IF~Global("gdDreamEvil","GLOBAL",6)~THEN REPLY@112+ F65
IF~Global("gdDreamEvil","GLOBAL",6)~THEN REPLY@113+ F66

CHAIN
IF~~THEN Goriod F1
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI316")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F2
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI401")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F3
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI514")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F4
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI315")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F5
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI409")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F6
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI504")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F11
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI306")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F12
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI412")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F13
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI518")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F14
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI317")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F15
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI413")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F16
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI515")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F21
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI308")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F22
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI423")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F23
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI503")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F24
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI311")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F25
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI408")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F26
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI513")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F31
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI307")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F32
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI417")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F33
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI523")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F34
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI312")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F35
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI477")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F36
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI509")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F41
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI303")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F42
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI414")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F43
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI516")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F44
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI304")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F45
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI416")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F46
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI507")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F51
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI313")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F52
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI489")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F53
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI589")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F54
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI301")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F55
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI403")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F56
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI508")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F61
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI309")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F62
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI411")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F63
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI588")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F64
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI310")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F65
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI474")) RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F66
@114
=@115
=@116 DO~ActionOverride(Player1,AddSpecialAbility("OLSPI512")) RestorePartyLocations()~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN Goriod Entry
@117
= @118
= @119
= @120
= @121
= @122 DO~ActionOverride(Myself,DestroySelf())~ EXIT
