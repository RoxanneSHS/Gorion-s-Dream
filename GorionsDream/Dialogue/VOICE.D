BEGIN Sorced2

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN warrid help1
~Help! I need your aid! There are too many!~
==Voice~You've not the time for this! You must get the talon before it's taken by another!~
==Voice~Leave the fool to his own battle! You have a destiny to follow!~
==warrid~I am so cold... (moan)... I... am dying... Please... stay with me awhile...~
==Voice~Leave him. Get the talon! He is beyond help. It is pointless to stay!~
END
++~You are right. Only a weakling asks for help.~+ help2
++~I cannot leave him to die alone!~+ help3

CHAIN
IF~~THEN warrid help2
~I don't want to die alone...~DO~GiveItem("gdclawd",Player1)ActionOverride(Myself,Kill(Myself))~
==Voice~The talon that gives power to those demanding, and abandons the weak to their fate. You are stronger for it.~ DO ~FadeToColor([50.0],0)  Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR104","",[1342.1061],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF~~THEN warrid help3
~Thank you...~
==Voice~You have squandered your time and lost the talon! Unfortunate. Changes will have to be made.~ DO ~FadeToColor([50.0],0)  Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR104","",[1342.1061],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN messed deliv1
~Salutations! I have come looking for someone, to deliver a gift. A horn actually.~
==Voice~It is the horn you seek! Claim what should be yours!~
==messed~I seek the First Reader of this great library. Perhaps you have seen him? This is to be his property, and I can give it to no other.~
==Voice~It is of no concern who it's truly for! Take what is meant for you! He'll never know the difference!~
==messed~Do you claim to be the First Reader?~ 
END
++ ~Yes, I am who you seek.~ + deliv2
++ ~No, and I have not seen him.~ + deliv3

CHAIN
IF~~THEN messed deliv2
~Then I bear a message for you as well.~ DO ~GiveItem("gdhornd",Player1) ActionOverride(Myself,Kill(Myself))~
==Voice~The horn with the will to take what is yours, and what should be yours.~ DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR102","",[350.408],10)) FadeFromColor([50.0],0)~ EXIT

CHAIN
IF~~THEN messed deliv3
~Nor would you want the gift I bear. I take my leave.~DO~EscapeArea()~
==Voice~You betray what you were born to be! There will be a price to pay!~DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR102","",[350.408],10)) FadeFromColor([50.0],0)~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN sorced candl1
~Young one! Please stop a while. I need your help. I am old and dying... and I've one hope left to me. In my room... there is an enchanted candle. It has one last wish spell within it. I am too weak to retrieve it, but you could.~
==Voice~It is the candle you must seek!~
==sorced~This candle is my last chance, child. Please... bring it to me.~DO~SetGlobal("Door","GDR102",1)~
==Voice~Forget the old man! His time is past! The wish should be yours!~EXIT

CHAIN
IF WEIGHT #-2~ Global("CandleTrap","gdr102",2) ~ THEN Voice candl2
~Use it yourself, and know the legacy of your true father!~
END
++~No! It is not mine to use.~DO ~SetGlobal("CandleTrap","gdr102",3) ActionOverride("sorced",DestroySelf()) CreateCreature("sorced2",[483.249],0) Wait(1)~ EXTERN SORCED2 candl3
++~I will. This old fool has no need of it.~ DO ~ActionOverride("sorced",Kill("sorced")) SetGlobal("CandleTrap","gdr102",3)~ + candl4

CHAIN
IF ~True()~ THEN SORCED2 candl3
~Thank you, I am renewed. You have resisted great temptation for a strangers benefit. A rare act of compassion for one destined so.~ DO~TakePartyItem("gdcandld")~
==Voice~You have wasted the power of the candle on the old man! There is much to be done before you are worthy!~
= ~Seek the dagger next! It is nearby in the hands of a great evil Ogre! Slay it and take your rightful prize!~DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr103","",[699.54],3)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF ~~ THEN Voice candl4
~You have done well.~ 
=~Seek the dagger next! It is nearby in the hands of a great evil Ogre! Slay it and take your rightful prize!~ DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr103","",[699.54],3)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN WHITKD Ogrebad1
~You there! Help me dispose of this beast! His kind are a plague on the land!~
==Ogred~Me no beast! Me don't want fight! Go 'way!~
==Whitkd ~Don't believe a word it says! Born evil they are! Everyone knows that! The only good ogre is a dead ogre!~
==Voice~Look at them! The knight is obviously the one to help! The beast cannot be other than it was born to be! Kill it!~
==Ogred ~Shiny man attack ME! I be good but he make fight! He want kill for no reason!~
==Voice ~The beast is an ogre! They are evil; they cannot be otherwise! Do what you know MUST be done! Will you attack it or not?!~
END
++~Ogre or not, this creature is no threat. I'll not harm him!~EXTERN OGRED Ogrebad2
++~The beast will die, as all of its kind should!~EXTERN WHITKD Ogrebad3

CHAIN
IF~~THEN OGRED Ogrebad2
~You no hurt me, me no hurt you! Me don't care if me born bad! Me be good if me want to! You too... remember. You born VERY bad. Maybe you be good if you want too.~
==Voice ~You disrespect your true calling at every turn. It will make your destiny all the more painful!~ DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr106","",[2174.1811],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF~~ THEN WHITKD Ogrebad3
~You chose right! Beings of flesh ARE what they ARE. There is no escaping your destiny. Best you remember that! Here, this is yours!~ DO~ActionOverride("ogred",Kill("ogred")) 	GiveItem("gddaggd",Player1)~
==Voice~A dagger of bone. A piece of the father bred in the child. You will be what you were born to be.~ DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr106","",[2174.1811],7)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~ Global("DreamAreaGnoll","GDR106",1) ~ THEN Voice Gnoll1
~The potion you seek is here! Search the bodies! Their dead hold the prize!~
DO ~SetGlobal("DreamAreaGnoll","GDR106",2)ActionOverride(Myself,DestroySelf()) ~ EXIT

CHAIN
IF WEIGHT #-3~Global("GdrDreamGnoll","GLOBAL",1)~ THEN Poisod  Poison1
~Please... that pack of gnolls... they poisoned me. Was there a flask among them? It must be the antidote. Please...~
DO~SetGlobal("GdrDreamGnoll","GLOBAL",2)~ EXIT

CHAIN
IF WEIGHT #-2~PartyHasItem("gdPOTND")~ THEN Poisod  Poison2
~Please... that pack of gnolls... they poisoned me. Was there a flask among them? It must be the antidote. Please...~
==Voice~Ignore him! Drink the potion yourself and know the essence of your heritage!~
==Poisod~Please... show some charity... I'll die without it.~ 
END
++ ~My destiny is more important than your paltry life. Cheers.~ EXTERN VOICE Poison4
++~I cannot refuse this man his very life! He needs this potion more than I!~ + Poison3

CHAIN
IF~~THEN Poisod Poison3
~Thank you. Your actions are my antidote. Let the blood of the father not despoil the <PRO_SONDAUGHTER>!~
DO~TakePartyItem("gdPOTND")~
==VOICE~It is an insult to the very blood in your veins! You WILL learn to act accordingly!~
DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR108","",[280.1550],8))
FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF ~~ THEN VOICE Poison4
~Drink deep the blood of the father and the tears of the dead. They shall sustain you, for they are the very essence of your destiny!~ DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("GDR108","",[280.1550],8)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN Womand Last1
~Greetings, fellow traveler. I have been entrusted to give this skull to they who are most worthy.~
DO~SetGlobal("GdrDreamGnoll","GLOBAL",4)~
==Voice~It is the last item you seek! Of course you're worthy of it!~
==Womand~The recipient must be more heroic, charitable, courageous, and HUMBLE than anyone else living or dead. Are you such a person?~
==Voice ~You know you are all that and more! You have power immeasurable in your future! You are destined for a veritable godhood!~ 
END
++~I am all that you seek! There are none alive or dead better than I!~ + Last2
++~Many a great person has walked this land. I cannot claim to be above them all.~+ Last3

CHAIN
IF~~THEN Womand Last2
~Truly you deserve this and whatever else it brings. You've the ego of a deity to believe yourself humble and yet claim to be better than all who have died. It will certainly make the bonding easier... though not for you!~ 
DO~GiveItem("gdskulld",Protagonist) SetGlobal("GDDreamComplete","GLOBAL",1)~
==Voice~It is the Godhead itself, literal and figurative! Prepare yourself, for the return will come soon!~ DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr100","",[193.311],13)) FadeFromColor([50.0],0) ~ EXIT

CHAIN
IF~~THEN Womand Last3
~The Godhead is rejected! Can there yet be hope? We shall see...~
DO~SetGlobal("GDDreamComplete","GLOBAL",1)~
==Voice~Your fate will be sealed despite your petty rejection of the ways of your father. The return is nigh regardless!~DO ~FadeToColor([50.0],0) Wait(2) ActionOverride(Player1,LeaveAreaLUA("gdr100","",[193.311],13)) FadeFromColor([50.0],0) ~ EXIT


CHAIN
IF WEIGHT #-3~Global("GdrDreamGnoll","GLOBAL",3) ~ THEN Goriod Fail
~(As the gnoll's blade slashes into your chest you awake with a start and a strangled cry.)~
= ~(But are you awake? Or is this still part of the dream? You are back in the Between where Gorion found you just minutes - or was it hours? - ago.)~
=~Child, I fear much. You are not strong yet like you would need to be to face the challenges set by your father. Continue to learn, <CHARNAME>. The return is nigh regardless!~
DO~AddXPObject(Protagonist,6000) SetGlobal("GdrDreamGnoll","GLOBAL",5) RestorePartyLocations()~ EXIT


CHAIN
IF WEIGHT #-3~Global("GDDreamComplete","GLOBAL",2) ~ THEN Goriod Finish
~Child, you saw the powers battling over your fate and you saw the decisions that you must make that can impact so many, be it good or bad.~
DO~SetGlobal("GDDreamComplete","GLOBAL",3)~
==Goriod IF ~GlobalGT("gdDreamEvil","GLOBAL",1)~THEN~(Sigh) Have I not prepared you enough, my adopted <PRO_SONDAUGHTER>? Are those ideas of evil power too strong for you to withstand?~
==Goriod IF ~GlobalLT("gdDreamEvil","GLOBAL",0)~THEN~I hope that I prepared you enough, my adopted <PRO_SONDAUGHTER>. Those ideas of evil power are not strong enough for you to withstand.~
==Goriod IF ~OR(2)Global("gdDreamEvil","GLOBAL",1) Global("gdDreamEvil","GLOBAL",0)~THEN~This night leaves much open, my adopted <PRO_SONDAUGHTER>. Are those ideas of evil power too strong for you to withstand or will you be steadfast? Time alone can tell - or your heart.~
==Goriod~From your restless dreams there comes a tantalising glimpse of the power within you. Make your choice now, child, that it may help you on your way.~
END
++ ~Charm Person~ + F1
++ ~Cloak of Fear~ + F2
++ ~Cure Serious Wounds~ +F3
++ ~Invisibility~ + F4
++ ~Inflict Pain~ + F5
++ ~Inertial Barrier~ +F6

CHAIN
IF~~THEN Goriod F1
~As you touch the symbol there is a startling flash and something rushes through your prone body. With a cry you awake and spring to your feet.~ DO~AddSpecialAbility("SPIN119") RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F2
~As you touch the symbol there is a startling flash and something rushes through your prone body. With a cry you awake and spring to your feet.~ DO~AddSpecialAbility("SPNCLK") RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F3
~As you touch the symbol there is a startling flash and something rushes through your prone body. With a cry you awake and spring to your feet.~ DO~AddSpecialAbility("SPN858A") RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F4
~As you touch the symbol there is a startling flash and something rushes through your prone body. With a cry you awake and spring to your feet.~ DO~AddSpecialAbility("SPN544A") RestorePartyLocations() ~ EXIT

CHAIN
IF~~THEN Goriod F5
~As you touch the symbol there is a startling flash and something rushes through your prone body. With a cry you awake and spring to your feet.~ DO~AddSpecialAbility("SPN543A")RestorePartyLocations()~ EXIT

CHAIN
IF~~THEN Goriod F6
~As you touch the symbol there is a startling flash and something rushes through your prone body. With a cry you awake and spring to your feet.~ DO~AddSpecialAbility("SPN546A") RestorePartyLocations() ~ EXIT


CHAIN
IF WEIGHT #-2~Global("GDRDream","GLOBAL",0)~ THEN Goriod Entry
~Awake, my adopted child. Awake and face the terrible tests ahead of thee.~
= ~Speak not, for I have but little time. This place is the Between. 'Tis not so much real, as it is a dream, though not so much a dream, as it is real.~
= ~That which should be dead can cast its tentacles here, and your life is already wound within its grasping limbs. There is always hope, however, and your actions here shall determine the grip with which you are held.~
= ~I can tell you no more of your true lineage than I did in life, but you will learn much here. You must pursue several items, for they are key to who you are. A Talon is the first, followed by the horn of great beast, a candle of light, a dagger of bone, a potion of blood and tears, and a blackened skull.~
= ~I must leave you now, for 'tis a great strain to remain in the Between. No ordinary mortal can remain for long, so I must leave you to your search. I wish I could say I am leaving you here alone, but you are not.~
= ~Seek wisely and true, and remember ye well: 'Tis often the journey that shapes the child, and not so much where they must go.~ DO~ActionOverride(Myself,DestroySelf())~ EXIT
