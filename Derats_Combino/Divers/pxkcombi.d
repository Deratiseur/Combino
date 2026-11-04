BEGIN %pxkc_dialogue%

IF ~Global("pxkcombi","GLOBAL",0)~ THEN BEGIN welcome1 SAY @2
	IF ~~ THEN REPLY @3	DO ~SetGlobal("pxkcombi","GLOBAL",1)~ GOTO welcome2
END

IF ~~ THEN BEGIN welcome2 SAY @4
	IF ~~ THEN REPLY @5 GOTO welcome3
END

IF ~~ THEN BEGIN welcome3 SAY @6
	IF ~~ THEN REPLY @7 GOTO welcome4
END

IF ~~ THEN BEGIN welcome4 SAY @%pxkc_intro%
	IF ~~ THEN REPLY @9 EXIT
	IF ~~ THEN REPLY @10 GOTO welcome5
END

IF ~~ THEN BEGIN welcome5 SAY @11
	IF ~~ THEN REPLY @12 EXIT
END

IF ~Global("pxkcombi","GLOBAL",1)~ THEN BEGIN welcomet
    SAY @2
	//Dagues
	IF ~NumItemsPartyGT("dagg02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%12
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",3) DestroyItem("dagg02") DestroyItem("dagg02") DestroyItem("dagg02")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg02",1) NumItemsParty("dagg19",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%121
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",2) DestroyItem("dagg02") DestroyItem("dagg02")
	  TakePartyItemNum("dagg19",1) DestroyItem("dagg19")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg02",1) NumItemsParty("A7-DG02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1221
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",2) DestroyItem("dagg02") DestroyItem("dagg02")
	  TakePartyItemNum("A7-DG02",1) DestroyItem("A7-DG02")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("dagg02",1) NumItemsPartyGT("A7-DG02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1222
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",1) DestroyItem("dagg02")
	  TakePartyItemNum("A7-DG02",2) DestroyItem("A7-DG02") DestroyItem("A7-DG02")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg02",0) NumItemsPartyGT("A7-DG02",0) NumItemsParty("dagg19",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1223
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",1) DestroyItem("dagg02")
	  TakePartyItemNum("dagg19",1) DestroyItem("dagg19")
	  TakePartyItemNum("A7-DG02",1) DestroyItem("A7-DG02")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("A7-DG02",1) NumItemsParty("dagg19",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1224
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("A7-DG02",2) DestroyItem("A7-DG02") DestroyItem("A7-DG02")
	  TakePartyItemNum("dagg19",1) DestroyItem("dagg19")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg02",1) NumItemsParty("A7-DG10",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1231
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",2) DestroyItem("dagg02") DestroyItem("dagg02")
	  TakePartyItemNum("A7-DG10",1) DestroyItem("A7-DG10")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("dagg02",1) NumItemsPartyGT("A7-DG10",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1232
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg02",1) DestroyItem("dagg02")
	  TakePartyItemNum("A7-DG10",2) DestroyItem("A7-DG10") DestroyItem("A7-DG10")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg02",0) NumItemsPartyGT("A7-DG10",0) NumItemsParty("dagg19",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1233
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg10",1) DestroyItem("dagg10")
	  TakePartyItemNum("dagg19",1) DestroyItem("dagg19")
	  TakePartyItemNum("A7-DG10",1) DestroyItem("A7-DG10")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("A7-DG10",1) NumItemsParty("dagg19",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1234
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("A7-DG10",2) DestroyItem("A7-DG10") DestroyItem("A7-DG10")
	  TakePartyItemNum("dagg19",1) DestroyItem("dagg19")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("A7-DG10",1) NumItemsParty("A7-DG02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1241
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("A7-DG10",2) DestroyItem("A7-DG10") DestroyItem("A7-DG10")
	  TakePartyItemNum("A7-DG02",1) DestroyItem("A7-DG02")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish	
	IF ~NumItemsPartyGT("A7-DG02",1) NumItemsParty("A7-DG10",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1242
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("A7-DG02",2) DestroyItem("A7-DG02") DestroyItem("A7-DG02")
	  TakePartyItemNum("A7-DG10",1) DestroyItem("A7-DG10")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish	
	IF ~NumItemsPartyGT("A7-DG02",0) NumItemsPartyGT("A7-DG10",0) NumItemsParty("dagg10",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1243
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("A7-DG02",1) DestroyItem("A7-DG02")
	  TakePartyItemNum("dagg10",1) DestroyItem("dagg10")
	  TakePartyItemNum("A7-DG10",1) DestroyItem("A7-DG10")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("A7-DG02",0) NumItemsPartyGT("A7-DG10",0) NumItemsParty("dagg19",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%1244
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("A7-DG02",1) DestroyItem("A7-DG02")
	  TakePartyItemNum("dagg19",1) DestroyItem("dagg19")
	  TakePartyItemNum("A7-DG10",1) DestroyItem("A7-DG10")
	  CreateItem("dagg15",0,0,0)
	  SetItemFlags("dagg15",IDENTIFIED,TRUE)
	  GiveItem("dagg15",LastTalkedToBy())~ GOTO Finish	  
	IF ~NumItemsPartyGT("dagg015",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%13
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg15",3) DestroyItem("dagg15") DestroyItem("dagg15") DestroyItem("dagg15")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg15",1) NumItemsParty("dagg03",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%131
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg15",2) DestroyItem("dagg15") DestroyItem("dagg15")
	  TakePartyItemNum("dagg03",1) DestroyItem("dagg03")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg15",1) NumItemsParty("dagg23",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%81002
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg15",2) DestroyItem("dagg15") DestroyItem("dagg15")
	  TakePartyItemNum("dagg23",1) DestroyItem("dagg23")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg15",1) NumItemsParty("CMDAG01",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%81003
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg15",2) DestroyItem("dagg15") DestroyItem("dagg15")
	  TakePartyItemNum("CMDAG01",1) DestroyItem("CMDAG01")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("dagg15",1) NumItemsParty("dagg03",1) NumItemsParty("CMDAG01",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%81004
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg15",1) DestroyItem("dagg15")
	  TakePartyItemNum("dagg03",1) DestroyItem("dagg03")
	  TakePartyItemNum("CMDAG01",1) DestroyItem("CMDAG01")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("dagg15",1) NumItemsParty("dagg23",1) NumItemsParty("CMDAG01",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%81005
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg15",1) DestroyItem("dagg15")
	  TakePartyItemNum("dagg23",1) DestroyItem("dagg23")
	  TakePartyItemNum("CMDAG01",1) DestroyItem("CMDAG01")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsParty("dagg03",1) NumItemsParty("dagg23",1) NumItemsParty("CMDAG01",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%81006
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg03",1) DestroyItem("dagg03")
	  TakePartyItemNum("dagg23",1) DestroyItem("dagg23")
	  TakePartyItemNum("CMDAG01",1) DestroyItem("CMDAG01")
	  CreateItem("dagg24",0,0,0)
	  SetItemFlags("dagg24",IDENTIFIED,TRUE)
	  GiveItem("dagg24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg24",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%14
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg24",3) DestroyItem("dagg24") DestroyItem("dagg24") DestroyItem("dagg24")
	  CreateItem("pxkdagg4",0,0,0)
	  SetItemFlags("pxkdagg4",IDENTIFIED,TRUE)
	  GiveItem("pxkdagg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("dagg24",1) NumItemsParty("A7-DG04",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%141
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("dagg24",2) DestroyItem("dagg24") DestroyItem("dagg24")
	  TakePartyItemNum("A7-DG04",1) DestroyItem("A7-DG04")
	  CreateItem("pxkdagg4",0,0,0)
	  SetItemFlags("pxkdagg4",IDENTIFIED,TRUE)
	  GiveItem("pxkdagg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkdagg4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%15
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkdagg4",3) DestroyItem("pxkdagg4") DestroyItem("pxkdagg4") DestroyItem("pxkdagg4")
	  CreateItem("pxkdagg4",0,0,0)
	  SetItemFlags("pxkdagg4",IDENTIFIED,TRUE)
	  GiveItem("pxkdagg4",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsPartyGT("pxkdagg4",1) NumItemsParty("dagg14",1)  %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%151
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkdagg4",2) DestroyItem("pxkdagg4") DestroyItem("pxkdagg4")
	  TakePartyItemNum("dagg14",1) DestroyItem("dagg14")
	  CreateItem("pxkdagg5",0,0,0)
	  SetItemFlags("pxkdagg5",IDENTIFIED,TRUE)
	  GiveItem("pxkdagg5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkdagg5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%16
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkdagg5",3) DestroyItem("pxkdagg5") DestroyItem("pxkdagg5") DestroyItem("pxkdagg5")
	  CreateItem("pxkdagg6",0,0,0)
	  SetItemFlags("pxkdagg6",IDENTIFIED,TRUE)
	  GiveItem("pxkdagg6",LastTalkedToBy())~ GOTO Finish

	//Épées courtes
	IF ~NumItemsPartyGT("sw1h08",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%22
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h08",3) DestroyItem("sw1h08") DestroyItem("sw1h08") DestroyItem("sw1h08")
	  CreateItem("sw1h09",0,0,0)
	  SetItemFlags("sw1h09",IDENTIFIED,TRUE)
	  GiveItem("sw1h09",LastTalkedToBy())~ GOTO Finish
	  IF ~NumItemsPartyGT("sw1h09",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%23
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h09",3) DestroyItem("sw1h09") DestroyItem("sw1h09") DestroyItem("sw1h09")
	  CreateItem("sw1h74",0,0,0)
	  SetItemFlags("sw1h74",IDENTIFIED,TRUE)
	  GiveItem("sw1h74",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h29",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%23
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h29",3) DestroyItem("sw1h29") DestroyItem("sw1h29") DestroyItem("sw1h29")
	  CreateItem("sw1h09",0,0,0)
	  SetItemFlags("sw1h09",IDENTIFIED,TRUE)
	  GiveItem("sw1h09",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h09",1) NumItemsParty("sw1h29",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%23
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h09",2) DestroyItem("sw1h09") DestroyItem("sw1h09")
	  TakePartyItemNum("sw1h29",1) DestroyItem("sw1h29")
	  CreateItem("sw1h09",0,0,0)
	  SetItemFlags("sw1h09",IDENTIFIED,TRUE)
	  GiveItem("sw1h09",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("sw1h09",1) NumItemsPartyGT("sw1h29",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%23
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h09",1) DestroyItem("sw1h09")
	  TakePartyItemNum("sw1h29",2) DestroyItem("sw1h29") DestroyItem("sw1h29")
	  CreateItem("sw1h09",0,0,0)
	  SetItemFlags("sw1h09",IDENTIFIED,TRUE)
	  GiveItem("sw1h09",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h74",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%24
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h74",3) DestroyItem("sw1h74") DestroyItem("sw1h74") DestroyItem("sw1h74")
	  CreateItem("pxkcour4",0,0,0)
	  SetItemFlags("pxkcour4",IDENTIFIED,TRUE)
	  GiveItem("pxkcour4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h74",1) NumItemsParty("sw1h10",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%241
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h74",2) DestroyItem("sw1h74") DestroyItem("sw1h74")
	  TakePartyItemNum("sw1h10",1) DestroyItem("sw1h10")
	  CreateItem("pxkcour4",0,0,0)
	  SetItemFlags("pxkcour4",IDENTIFIED,TRUE)
	  GiveItem("pxkcour4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcour4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%25
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcour4",3) DestroyItem("pxkcour4") DestroyItem("pxkcour4") DestroyItem("pxkcour4")
	  CreateItem("pxkcour5",0,0,0)
	  SetItemFlags("pxkcour5",IDENTIFIED,TRUE)
	  GiveItem("pxkcour5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcour4",1) NumItemsParty("sw1h28",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%251
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcour4",2) DestroyItem("pxkcour4") DestroyItem("pxkcour4")
	  TakePartyItemNum("sw1h28",1) DestroyItem("pxsw1h28")
	  CreateItem("pxkcour5",0,0,0)
	  SetItemFlags("pxkcour5",IDENTIFIED,TRUE)
	  GiveItem("pxkcour5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcour5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%26
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcour5",3) DestroyItem("pxkcour5") DestroyItem("pxkcour5") DestroyItem("pxkcour5")
	  CreateItem("pxkcour6",0,0,0)
	  SetItemFlags("pxkcour6",IDENTIFIED,TRUE)
	  GiveItem("pxkcour6",LastTalkedToBy())~ GOTO Finish
	  
	//Épées longues
	IF ~NumItemsPartyGT("sw1h05",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%32
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h05",3) DestroyItem("sw1h05") DestroyItem("sw1h05") DestroyItem("sw1h05")
	  CreateItem("sw1h41",0,0,0)
	  SetItemFlags("sw1h41",IDENTIFIED,TRUE)
	  GiveItem("sw1h41",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h41",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%33
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h41",3) DestroyItem("sw1h41") DestroyItem("sw1h41") DestroyItem("sw1h41")
	  CreateItem("sw1h73",0,0,0)
	  SetItemFlags("sw1h73",IDENTIFIED,TRUE)
	  GiveItem("sw1h73",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h73",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%34
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",3) DestroyItem("sw1h73") DestroyItem("sw1h73") DestroyItem("sw1h73")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h73",1) NumItemsParty("TELSWD",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%34
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",3) DestroyItem("sw1h73") DestroyItem("sw1h73")
	  TakePartyItemNum("TELSWD",3) DestroyItem("TELSWD")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsParty("sw1h73",1) NumItemsPartyGT("TELSWD",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%34
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",3) DestroyItem("sw1h73")
	  TakePartyItemNum("TELSWD",3) DestroyItem("TELSWD") DestroyItem("TELSWD")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h73",1) NumItemsParty("O#XANDB",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%341
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",2) DestroyItem("sw1h73") DestroyItem("sw1h73")
	  TakePartyItemNum("O#XANDB",1) DestroyItem("O#XANDB")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("TELSWD",1) NumItemsParty("O#XANDB",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%341
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("TELSWD",2) DestroyItem("TELSWD") DestroyItem("TELSWD")
	  TakePartyItemNum("O#XANDB",1) DestroyItem("O#XANDB")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsPartyGT("sw1h73",0) NumItemsPartyGT("TELSWD",0) NumItemsParty("O#XANDB",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%341
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",1) DestroyItem("sw1h73")
	  TakePartyItemNum("TELSWD",1) DestroyItem("TELSWD")
	  TakePartyItemNum("O#XANDB",1) DestroyItem("O#XANDB")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxklong4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%35
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklong4",3) DestroyItem("pxklong4") DestroyItem("pxklong4") DestroyItem("pxklong4")
	  CreateItem("pxklong5",0,0,0)
	  SetItemFlags("pxklong5",IDENTIFIED,TRUE)
	  GiveItem("pxklong5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxklong5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%36
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklong5",3) DestroyItem("pxklong5") DestroyItem("pxklong5") DestroyItem("pxklong5")
	  CreateItem("pxklong6",0,0,0)
	  SetItemFlags("pxklong6",IDENTIFIED,TRUE)
	  GiveItem("pxklong6",LastTalkedToBy())~ GOTO Finish
	  
	//Cimeterres
	IF ~NumItemsPartyGT("sw1h22",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%42
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h22",3) DestroyItem("sw1h22") DestroyItem("sw1h22") DestroyItem("sw1h22")
	  CreateItem("ohsw1h55",0,0,0)
	  SetItemFlags("ohsw1h55",IDENTIFIED,TRUE)
	  GiveItem("ohsw1h55",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohsw1h55",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%43
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohsw1h55",3) DestroyItem("ohsw1h55") DestroyItem("ohsw1h55") DestroyItem("ohsw1h55")
	  CreateItem("sw1h76",0,0,0)
	  SetItemFlags("sw1h76",IDENTIFIED,TRUE)
	  GiveItem("sw1h76",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohsw1h55",1) NumItemsParty("sw1h23",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%431
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohsw1h55",2) DestroyItem("ohsw1h55") DestroyItem("ohsw1h55")
	  TakePartyItemNum("sw1h23",1) DestroyItem("sw1h23")
	  CreateItem("sw1h76",0,0,0)
	  SetItemFlags("sw1h76",IDENTIFIED,TRUE)
	  GiveItem("sw1h76",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h76",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%44
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h76",3) DestroyItem("sw1h76") DestroyItem("sw1h76") DestroyItem("sw1h76")
	  CreateItem("pxkcime4",0,0,0)
	  SetItemFlags("pxkcime4",IDENTIFIED,TRUE)
	  GiveItem("pxkcime4",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsPartyGT("sw1h76",1) NumItemsParty("sw1h52",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%441
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h76",2) DestroyItem("sw1h76") DestroyItem("sw1h76")
	  TakePartyItemNum("sw1h52",1) DestroyItem("sw1h52")
	  CreateItem("pxkcime4",0,0,0)
	  SetItemFlags("pxkcime4",IDENTIFIED,TRUE)
	  GiveItem("pxkcime4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcime4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%45
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcime4",3) DestroyItem("pxkcime4") DestroyItem("pxkcime4") DestroyItem("pxkcime4")
	  CreateItem("pxkcime5",0,0,0)
	  SetItemFlags("pxkcime5",IDENTIFIED,TRUE)
	  GiveItem("pxkcime5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcime5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%46
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcime5",3) DestroyItem("pxkcime5") DestroyItem("pxkcime5") DestroyItem("pxkcime5")
	  CreateItem("pxkcime6",0,0,0)
	  SetItemFlags("pxkcime6",IDENTIFIED,TRUE)
	  GiveItem("pxkcime6",LastTalkedToBy())~ GOTO Finish
	  
	//Katanas
	IF ~NumItemsPartyGT("sw1h44",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%52
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h44",3) DestroyItem("sw1h44") DestroyItem("sw1h44") DestroyItem("sw1h44")
	  CreateItem("sw1h55",0,0,0)
	  SetItemFlags("sw1h55",IDENTIFIED,TRUE)
	  GiveItem("sw1h55",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h44",1) NumItemsPartyGT("NPSW02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%521
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h44",2) DestroyItem("sw1h44") DestroyItem("sw1h44")
	  TakePartyItemNum("NPSW02",1) DestroyItem("NPSW02")
	  CreateItem("sw1h55",0,0,0)
	  SetItemFlags("sw1h55",IDENTIFIED,TRUE)
	  GiveItem("sw1h55",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h55",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%53
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h55",3) DestroyItem("sw1h55") DestroyItem("sw1h55") DestroyItem("sw1h55")
	  CreateItem("sw1h75",0,0,0)
	  SetItemFlags("sw1h75",IDENTIFIED,TRUE)
	  GiveItem("sw1h75",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h55",1) NumItemsParty("sw1h45",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%531
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h55",2) DestroyItem("sw1h55") DestroyItem("sw1h55")
	  TakePartyItemNum("sw1h45",1) DestroyItem("sw1h45")
	  CreateItem("sw1h75",0,0,0)
	  SetItemFlags("sw1h75",IDENTIFIED,TRUE)
	  GiveItem("sw1h75",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h75",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%54
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h75",3) DestroyItem("sw1h75") DestroyItem("sw1h75") DestroyItem("sw1h75")
	  CreateItem("pxkkata4",0,0,0)
	  SetItemFlags("pxkkata4",IDENTIFIED,TRUE)
	  GiveItem("pxkkata4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkkata4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%55
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkkata4",3) DestroyItem("pxkkata4") DestroyItem("pxkkata4") DestroyItem("pxkkata4")
	  CreateItem("pxkkata5",0,0,0)
	  SetItemFlags("pxkkata5",IDENTIFIED,TRUE)
	  GiveItem("pxkkata5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkkata5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%56
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkkata5",3) DestroyItem("pxkkata5") DestroyItem("pxkkata5") DestroyItem("pxkkata5")
	  CreateItem("pxkkata6",0,0,0)
	  SetItemFlags("pxkkata6",IDENTIFIED,TRUE)
	  GiveItem("pxkkata6",LastTalkedToBy())~ GOTO Finish
	  
	//Épées bâtardes
	IF ~NumItemsPartyGT("sw1h02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%62
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h02",3) DestroyItem("sw1h02") DestroyItem("sw1h02") DestroyItem("sw1h02")
	  CreateItem("sw1h42",0,0,0)
	  SetItemFlags("sw1h42",IDENTIFIED,TRUE)
	  GiveItem("sw1h42",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h421",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%63
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h42",3) DestroyItem("sw1h42") DestroyItem("sw1h42") DestroyItem("sw1h42")
	  CreateItem("sw1h72",0,0,0)
	  SetItemFlags("sw1h72",IDENTIFIED,TRUE)
	  GiveItem("sw1h72",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h72",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%64
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h72",3) DestroyItem("sw1h72") DestroyItem("sw1h72") DestroyItem("sw1h72")
	  CreateItem("pxkbata4",0,0,0)
	  SetItemFlags("pxkbata4",IDENTIFIED,TRUE)
	  GiveItem("pxkbata4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbata4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%65
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbata4",3) DestroyItem("pxkbata4") DestroyItem("pxkbata4") DestroyItem("pxkbata4")
	  CreateItem("pxkbata5",0,0,0)
	  SetItemFlags("pxkbata5",IDENTIFIED,TRUE)
	  GiveItem("pxkbata5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbata5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%66
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbata5",3) DestroyItem("pxkbata5") DestroyItem("pxkbata5") DestroyItem("pxkbata5")
	  CreateItem("pxkbata6",0,0,0)
	  SetItemFlags("pxkbata6",IDENTIFIED,TRUE)
	  GiveItem("pxkbata6",LastTalkedToBy())~ GOTO Finish
	  
	//Épées à deux mains
	IF ~NumItemsPartyGT("sw2h02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%72
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw2h02",3) DestroyItem("sw1h02") DestroyItem("sw1h02") DestroyItem("sw1h02")
	  CreateItem("sw2h11",0,0,0)
	  SetItemFlags("sw2h11",IDENTIFIED,TRUE)
	  GiveItem("sw2h11",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw2h11",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%73
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw2h11",3) DestroyItem("sw2h11") DestroyItem("sw2h11") DestroyItem("sw2h11")
	  CreateItem("sw2h20",0,0,0)
	  SetItemFlags("sw2h20",IDENTIFIED,TRUE)
	  GiveItem("sw2h20",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw2h20",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%74
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw2h20",3) DestroyItem("sw2h20") DestroyItem("sw2h20") DestroyItem("sw2h20")
	  CreateItem("pxk2mai4",0,0,0)
	  SetItemFlags("pxk2mai4",IDENTIFIED,TRUE)
	  GiveItem("pxk2mai4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxk2mai4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%75
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxk2mai4",3) DestroyItem("pxk2mai4") DestroyItem("pxk2mai4") DestroyItem("pxk2mai4")
	  CreateItem("pxk2mai5",0,0,0)
	  SetItemFlags("pxk2mai5",IDENTIFIED,TRUE)
	  GiveItem("pxk2mai5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxk2mai4",1) NumItemsParty("sw2h09",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%751
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxk2mai4",2) DestroyItem("pxk2mai4") DestroyItem("pxk2mai4")
	  TakePartyItemNum("sw2h09",1) DestroyItem("sw2h09")
	  CreateItem("pxk2mai5",0,0,0)
	  SetItemFlags("pxk2mai5",IDENTIFIED,TRUE)
	  GiveItem("pxk2mai5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxk2mai5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%76
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxk2mai5",3) DestroyItem("pxk2mai5") DestroyItem("pxk2mai5") DestroyItem("pxk2mai5")
	  CreateItem("pxk2mai6",0,0,0)
	  SetItemFlags("pxk2mai6",IDENTIFIED,TRUE)
	  GiveItem("pxk2mai6",LastTalkedToBy())~ GOTO Finish
	  
	//Haches
	IF ~NumItemsPartyGT("ax1h02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%82
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ax1h02",3) DestroyItem("ax1h02") DestroyItem("ax1h02") DestroyItem("ax1h02")
	  CreateItem("ax1h11",0,0,0)
	  SetItemFlags("ax1h11",IDENTIFIED,TRUE)
	  GiveItem("ax1h11",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ax1h02",1) NumItemsPartyGT("a7-ax02",0) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%821
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ax1h02",2) DestroyItem("ax1h02") DestroyItem("ax1h02")
	  TakePartyItemNum("a7-ax02",1) DestroyItem("a7-ax02")
	  CreateItem("ax1h11",0,0,0)
	  SetItemFlags("ax1h11",IDENTIFIED,TRUE)
	  GiveItem("ax1h11",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ax1h02",0) NumItemsPartyGT("a7-ax02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%822
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ax1h02",1) DestroyItem("ax1h02")
	  TakePartyItemNum("a7-ax02",2) DestroyItem("a7-ax02") DestroyItem("a7-ax02")
	  CreateItem("ax1h11",0,0,0)
	  SetItemFlags("ax1h11",IDENTIFIED,TRUE)
	  GiveItem("ax1h11",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ax1h11",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%83
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ax1h11",3) DestroyItem("ax1h11") DestroyItem("ax1h11") DestroyItem("ax1h11")
	  CreateItem("ax1h17",0,0,0)
	  SetItemFlags("ax1h17",IDENTIFIED,TRUE)
	  GiveItem("ax1h17",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ax1h11",1)NumItemsParty("ax1h03",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%831
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ax1h11",2) DestroyItem("ax1h11") DestroyItem("ax1h11")
	  TakePartyItemNum("ax1h03",1) DestroyItem("ax1h03")
	  CreateItem("ax1h17",0,0,0)
	  SetItemFlags("ax1h17",IDENTIFIED,TRUE)
	  GiveItem("ax1h17",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ax1h17",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%84
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ax1h17",3) DestroyItem("ax1h17") DestroyItem("ax1h17") DestroyItem("ax1h17")
	  CreateItem("pxkhach4",0,0,0)
	  SetItemFlags("pxkhach4",IDENTIFIED,TRUE)
	  GiveItem("pxkhach4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkhach4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%85
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkhach4",3) DestroyItem("pxkhach4") DestroyItem("pxkhach4") DestroyItem("pxkhach4")
	  CreateItem("pxkhach5",0,0,0)
	  SetItemFlags("pxkhach5",IDENTIFIED,TRUE)
	  GiveItem("pxkhach5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkhach5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%86
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkhach5",3) DestroyItem("pxkhach5") DestroyItem("pxkhach5") DestroyItem("pxkhach5")
	  CreateItem("pxkhach6",0,0,0)
	  SetItemFlags("pxkhach6",IDENTIFIED,TRUE)
	  GiveItem("pxkhach6",LastTalkedToBy())~ GOTO Finish
	  
	//Marteaux
	IF ~NumItemsPartyGT("hamm02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%92
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("hamm02",3) DestroyItem("hamm02") DestroyItem("hamm02") DestroyItem("hamm02")
	  CreateItem("hamm08",0,0,0)
	  SetItemFlags("hamm08",IDENTIFIED,TRUE)
	  GiveItem("hamm08",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("hamm08",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%93
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("hamm08",3) DestroyItem("hamm08") DestroyItem("hamm08") DestroyItem("hamm08")
	  CreateItem("hamm12",0,0,0)
	  SetItemFlags("hamm12",IDENTIFIED,TRUE)
	  GiveItem("hamm12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("hamm12",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%94
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("hamm12",3) DestroyItem("hamm12") DestroyItem("hamm12") DestroyItem("hamm12")
	  CreateItem("pxkhamm4",0,0,0)
	  SetItemFlags("pxkhamm4",IDENTIFIED,TRUE)
	  GiveItem("pxkhamm4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkhamm4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%95
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkhamm4",3) DestroyItem("pxkhamm4") DestroyItem("pxkhamm4") DestroyItem("pxkhamm4")
	  CreateItem("pxkhamm5",0,0,0)
	  SetItemFlags("pxkhamm5",IDENTIFIED,TRUE)
	  GiveItem("pxkhamm5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkhamm5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%96
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkhamm5",3) DestroyItem("pxkhamm5") DestroyItem("pxkhamm5") DestroyItem("pxkhamm5")
	  CreateItem("pxkhamm6",0,0,0)
	  SetItemFlags("pxkhamm6",IDENTIFIED,TRUE)
	  GiveItem("pxkhamm6",LastTalkedToBy())~ GOTO Finish
	  
	//Gourdins (TOB)
	IF ~NumItemsPartyGT("blun31",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%334
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun31",3) DestroyItem("blun31") DestroyItem("blun31") DestroyItem("blun31")
	  CreateItem("pxkgour4",0,0,0)
	  SetItemFlags("pxkgour4",IDENTIFIED,TRUE)
	  GiveItem("pxkgour4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkgour4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%335
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkgour4",3) DestroyItem("pxkgour4") DestroyItem("pxkgour4") DestroyItem("pxkgour4")
	  CreateItem("pxkgour5",0,0,0)
	  SetItemFlags("pxkgour5",IDENTIFIED,TRUE)
	  GiveItem("pxkgour5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkgour5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%336
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkgour6",3) DestroyItem("pxkgour5") DestroyItem("pxkgour5") DestroyItem("pxkgour5")
	  CreateItem("pxkgour6",0,0,0)
	  SetItemFlags("pxkgour6",IDENTIFIED,TRUE)
	  GiveItem("pxkgour6",LastTalkedToBy())~ GOTO Finish
	  
	//Masses d'armes
	IF ~NumItemsPartyGT("blun05",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%102
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun05",3) DestroyItem("blun05") DestroyItem("blun05") DestroyItem("blun05")
	  CreateItem("blun21",0,0,0)
	  SetItemFlags("blun21",IDENTIFIED,TRUE)
	  GiveItem("blun21",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("blun21",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%103
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun21",3) DestroyItem("blun21") DestroyItem("blun21") DestroyItem("blun21")
	  CreateItem("blun33",0,0,0)
	  SetItemFlags("blun33",IDENTIFIED,TRUE)
	  GiveItem("blun33",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("blun33",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%104
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun33",3) DestroyItem("blun33") DestroyItem("blun33") DestroyItem("blun33")
	  CreateItem("pxkmass4",0,0,0)
	  SetItemFlags("pxkmass4",IDENTIFIED,TRUE)
	  GiveItem("pxkmass4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkmass4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%105
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkmass4",3) DestroyItem("pxkmass4") DestroyItem("pxkmass4") DestroyItem("pxkmass4")
	  CreateItem("pxkmass5",0,0,0)
	  SetItemFlags("pxkmass5",IDENTIFIED,TRUE)
	  GiveItem("pxkmass5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkmass5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%106
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkmass5",3) DestroyItem("pxkmass5") DestroyItem("pxkmass5") DestroyItem("pxkmass5")
	  CreateItem("pxkmass6",0,0,0)
	  SetItemFlags("pxkmass6",IDENTIFIED,TRUE)
	  GiveItem("pxkmass6",LastTalkedToBy())~ GOTO Finish
	
	//Morgensterns
	IF ~NumItemsPartyGT("blun07",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%112
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun07",3) DestroyItem("blun07") DestroyItem("blun07") DestroyItem("blun07")
	  CreateItem("blun15",0,0,0)
	  SetItemFlags("blun15",IDENTIFIED,TRUE)
	  GiveItem("blun15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("blun15",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%113
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun15",3) DestroyItem("blun15") DestroyItem("blun15") DestroyItem("blun15")
	  CreateItem("blun34",0,0,0)
	  SetItemFlags("blun34",IDENTIFIED,TRUE)
	  GiveItem("blun34",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("blun34",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%114
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun34",3) DestroyItem("blun34") DestroyItem("blun34") DestroyItem("blun34")
	  CreateItem("pxkmorg4",0,0,0)
	  SetItemFlags("pxkmorg4",IDENTIFIED,TRUE)
	  GiveItem("pxkmorg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkmorg4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%115
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkmorg4",3) DestroyItem("pxkmorg4") DestroyItem("pxkmorg4") DestroyItem("pxkmorg4")
	  CreateItem("pxkmorg5",0,0,0)
	  SetItemFlags("pxkmorg5",IDENTIFIED,TRUE)
	  GiveItem("pxkmorg5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkmorg5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%116
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkmorg5",3) DestroyItem("pxkmorg5") DestroyItem("pxkmorg5") DestroyItem("pxkmorg5")
	  CreateItem("pxkmorg6",0,0,0)
	  SetItemFlags("pxkmorg6",IDENTIFIED,TRUE)
	  GiveItem("pxkmorg6",LastTalkedToBy())~ GOTO Finish
	  
	//Fléaux d'armes
	IF ~NumItemsPartyGT("blun03",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%122
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun03",3) DestroyItem("blun03") DestroyItem("blun03") DestroyItem("blun03")
	  CreateItem("blun13",0,0,0)
	  SetItemFlags("blun13",IDENTIFIED,TRUE)
	  GiveItem("blun13",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("blun13",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%123
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun13",3) DestroyItem("blun13") DestroyItem("blun13") DestroyItem("blun13")
	  CreateItem("blun32",0,0,0)
	  SetItemFlags("blun32",IDENTIFIED,TRUE)
	  GiveItem("blun32",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("blun32",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%124
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("blun32",3) DestroyItem("blun32") DestroyItem("blun32") DestroyItem("blun32")
	  CreateItem("pxkflea4",0,0,0)
	  SetItemFlags("pxkflea4",IDENTIFIED,TRUE)
	  GiveItem("pxkflea4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkflea4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%125
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkflea4",3) DestroyItem("pxkflea4") DestroyItem("pxkflea4") DestroyItem("pxkflea4")
	  CreateItem("pxkflea5",0,0,0)
	  SetItemFlags("pxkflea5",IDENTIFIED,TRUE)
	  GiveItem("pxkflea5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkflea5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%126
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkflea5",3) DestroyItem("pxkflea5") DestroyItem("pxkflea5") DestroyItem("pxkflea5")
	  CreateItem("pxkflea6",0,0,0)
	  SetItemFlags("pxkflea6",IDENTIFIED,TRUE)
	  GiveItem("pxkflea6",LastTalkedToBy())~ GOTO Finish
	  
	//Lances
	IF ~NumItemsPartyGT("sper02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%132
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sper02",3) DestroyItem("sper02") DestroyItem("sper02") DestroyItem("sper02")
	  CreateItem("sper05",0,0,0)
	  SetItemFlags("sper05",IDENTIFIED,TRUE)
	  GiveItem("sper05",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sper05",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%133
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sper05",3) DestroyItem("sper05") DestroyItem("sper05") DestroyItem("sper05")
	  CreateItem("sper06",0,0,0)
	  SetItemFlags("sper06",IDENTIFIED,TRUE)
	  GiveItem("sper06",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sper06",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%134
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sper06",3) DestroyItem("sper06") DestroyItem("sper06") DestroyItem("sper06")
	  CreateItem("pxklanc4",0,0,0)
	  SetItemFlags("pxklanc4",IDENTIFIED,TRUE)
	  GiveItem("pxklanc4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxklanc4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%135
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklanc4",3) DestroyItem("pxklanc4") DestroyItem("pxklanc4") DestroyItem("pxklanc4")
	  CreateItem("pxklanc5",0,0,0)
	  SetItemFlags("pxklanc5",IDENTIFIED,TRUE)
	  GiveItem("pxklanc5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxklanc5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%136
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklanc5",3) DestroyItem("pxklanc5") DestroyItem("pxklanc5") DestroyItem("pxklanc5")
	  CreateItem("pxklanc6",0,0,0)
	  SetItemFlags("pxklanc6",IDENTIFIED,TRUE)
	  GiveItem("pxklanc6",LastTalkedToBy())~ GOTO Finish
	  
	//Hallebardes
	IF ~NumItemsPartyGT("halb02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%142
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("halb02",3) DestroyItem("halb02") DestroyItem("halb02") DestroyItem("halb02")
	  CreateItem("halb07",0,0,0)
	  SetItemFlags("halb07",IDENTIFIED,TRUE)
	  GiveItem("halb07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("halb07",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%143
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("halb07",3) DestroyItem("halb07") DestroyItem("halb07") DestroyItem("halb07")
	  CreateItem("halb12",0,0,0)
	  SetItemFlags("halb12",IDENTIFIED,TRUE)
	  GiveItem("halb12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("halb07",1)	NumItemsParty("halb03",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%1431
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("halb07",2) DestroyItem("halb07") DestroyItem("halb07")
	  TakePartyItemNum("halb03",1) DestroyItem("halb03")
	  CreateItem("halb12",0,0,0)
	  SetItemFlags("halb12",IDENTIFIED,TRUE)
	  GiveItem("halb12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("halb12",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%144
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("halb12",3) DestroyItem("halb12") DestroyItem("halb12") DestroyItem("halb12")
	  CreateItem("pxkhalb4",0,0,0)
	  SetItemFlags("pxkhalb4",IDENTIFIED,TRUE)
	  GiveItem("pxkhalb4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkhalb4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%145
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkhalb4",3) DestroyItem("pxkhalb4") DestroyItem("pxkhalb4") DestroyItem("pxkhalb4")
	  CreateItem("pxkhalb5",0,0,0)
	  SetItemFlags("pxkhalb5",IDENTIFIED,TRUE)
	  GiveItem("pxkhalb5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkhalb5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%146
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkhalb5",3) DestroyItem("pxkhalb5") DestroyItem("pxkhalb5") DestroyItem("pxkhalb5")
	  CreateItem("pxkhalb6",0,0,0)
	  SetItemFlags("pxkhalb6",IDENTIFIED,TRUE)
	  GiveItem("pxkhalb6",LastTalkedToBy())~ GOTO Finish
	  
	//Bâtons
	IF ~NumItemsPartyGT("staf02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%152
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf02",3) DestroyItem("staf02") DestroyItem("staf02") DestroyItem("staf02")
	  CreateItem("staf18",0,0,0)
	  SetItemFlags("staf18",IDENTIFIED,TRUE)
	  GiveItem("staf18",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("staf18",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%153
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf18",3) DestroyItem("staf18") DestroyItem("staf18") DestroyItem("staf18")
	  CreateItem("staf24",0,0,0)
	  SetItemFlags("staf24",IDENTIFIED,TRUE)
	  GiveItem("staf24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("staf24",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%154
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf24",3) DestroyItem("staf24") DestroyItem("staf24") DestroyItem("staf24")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("staf24",1) NumItemsParty("staf19",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1541
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf24",2) DestroyItem("staf24") DestroyItem("staf24")
	  TakePartyItemNum("staf19",1) DestroyItem("staf19")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("staf24",1) NumItemsParty("staf08",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1542
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf24",2) DestroyItem("staf24") DestroyItem("staf24")
	  TakePartyItemNum("staf08",1) DestroyItem("staf08")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("staf24",1) NumItemsParty("staf08",1) NumItemsParty("staf19",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1543
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf24",1) DestroyItem("staf24")
	  TakePartyItemNum("staf08",1) DestroyItem("staf08")
	  TakePartyItemNum("staf19",1) DestroyItem("staf19")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("staf19",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1544
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf19",3) DestroyItem("staf19") DestroyItem("staf19") DestroyItem("staf19")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("staf08",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1545
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf08",3) DestroyItem("staf08") DestroyItem("staf08") DestroyItem("staf08")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("staf24",1) NumItemsPartyGT("staf19",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1546
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf24",1) DestroyItem("staf24")
	  TakePartyItemNum("staf19",2) DestroyItem("staf19") DestroyItem("staf19")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("staf24",1) NumItemsPartyGT("staf08",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1547
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf24",1) DestroyItem("staf24")
	  TakePartyItemNum("staf08",2) DestroyItem("staf08") DestroyItem("staf08")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("staf19",1) NumItemsPartyGT("staf08",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%81108
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf19",1) DestroyItem("staf19")
	  TakePartyItemNum("staf08",2) DestroyItem("staf08") DestroyItem("staf08")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("staf08",1) NumItemsPartyGT("staf19",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%81109
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("staf08",1) DestroyItem("staf08")
	  TakePartyItemNum("staf19",2) DestroyItem("staf19") DestroyItem("staf19")
	  CreateItem("pxkstaf4",0,0,0)
	  SetItemFlags("pxkstaf4",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf4",LastTalkedToBy())~ GOTO Finish  
	// Duplicate staf19 recipe removed; see the recipe for @11544.
	IF ~NumItemsPartyGT("pxkstaf4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%155
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkstaf4",3) DestroyItem("pxkstaf4") DestroyItem("pxkstaf4") DestroyItem("pxkstaf4")
	  CreateItem("pxkstaf5",0,0,0)
	  SetItemFlags("pxkstaf5",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkstaf5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%156
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkstaf5",3) DestroyItem("pxkstaf5") DestroyItem("pxkstaf5") DestroyItem("pxkstaf5")
	  CreateItem("pxkstaf6",0,0,0)
	  SetItemFlags("pxkstaf6",IDENTIFIED,TRUE)
	  GiveItem("pxkstaf6",LastTalkedToBy())~ GOTO Finish
	  
	//Arbalètes légères
	IF ~NumItemsPartyGT("xbow05",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%162
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow05",3) DestroyItem("xbow05") DestroyItem("xbow05") DestroyItem("xbow05")
	  CreateItem("xbow09",0,0,0)
	  SetItemFlags("xbow09",IDENTIFIED,TRUE)
	  GiveItem("xbow09",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("xbow09",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%163
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow09",3) DestroyItem("xbow09") DestroyItem("xbow09") DestroyItem("xbow09")
	  CreateItem("xbow18",0,0,0)
	  SetItemFlags("xbow18",IDENTIFIED,TRUE)
	  GiveItem("xbow18",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("xbow18",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%164
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow18",3) DestroyItem("xbow18") DestroyItem("xbow18") DestroyItem("xbow18")
	  CreateItem("pxkarbe4",0,0,0)
	  SetItemFlags("pxkarbe4",IDENTIFIED,TRUE)
	  GiveItem("pxkarbe4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("xbow18",1) NumItemsParty("xbow10",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1641
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow18",2) DestroyItem("xbow18") DestroyItem("xbow18")
	  TakePartyItemNum("xbow10",1) DestroyItem("xbow10")
	  CreateItem("pxkarbe4",0,0,0)
	  SetItemFlags("pxkarbe4",IDENTIFIED,TRUE)
	  GiveItem("pxkarbe4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarbe4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%165
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarbe4",3) DestroyItem("pxkarbe4") DestroyItem("pxkarbe4") DestroyItem("pxkarbe4")
	  CreateItem("pxkarbe5",0,0,0)
	  SetItemFlags("pxkarbe5",IDENTIFIED,TRUE)
	  GiveItem("pxkarbe5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarbe5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%166
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarbe5",3) DestroyItem("pxkarbe5") DestroyItem("pxkarbe5") DestroyItem("pxkarbe5")
	  CreateItem("pxkarbe6",0,0,0)
	  SetItemFlags("pxkarbe6",IDENTIFIED,TRUE)
	  GiveItem("pxkarbe6",LastTalkedToBy())~ GOTO Finish
	
	//Arbalètes lourdes
	IF ~NumItemsPartyGT("xbow02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%172
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow02",3) DestroyItem("xbow02") DestroyItem("xbow02") DestroyItem("xbow02")
	  CreateItem("xbow07",0,0,0)
	  SetItemFlags("xbow07",IDENTIFIED,TRUE)
	  GiveItem("xbow07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("xbow07",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%173
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow07",3) DestroyItem("xbow07") DestroyItem("xbow07") DestroyItem("xbow07")
	  CreateItem("xbow17",0,0,0)
	  SetItemFlags("xbow17",IDENTIFIED,TRUE)
	  GiveItem("xbow17",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("xbow17",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%174
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow17",3) DestroyItem("xbow17") DestroyItem("xbow17") DestroyItem("xbow17")
	  CreateItem("pxkarbo4",0,0,0)
	  SetItemFlags("pxkarbo4",IDENTIFIED,TRUE)
	  GiveItem("pxkarbo4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("xbow17",1) NumItemsParty("xbow08",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1741
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("xbow17",2) DestroyItem("xbow17") DestroyItem("xbow17")
	  TakePartyItemNum("xbow08",1) DestroyItem("xbow08")
	  CreateItem("pxkarbo4",0,0,0)
	  SetItemFlags("pxkarbo4",IDENTIFIED,TRUE)
	  GiveItem("pxkarbo4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarbo4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%175
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarbo4",3) DestroyItem("pxkarbo4") DestroyItem("pxkarbo4") DestroyItem("pxkarbo4")
	  CreateItem("pxkarbo5",0,0,0)
	  SetItemFlags("pxkarbo5",IDENTIFIED,TRUE)
	  GiveItem("pxkarbo5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarbo5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%176
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarbo5",3) DestroyItem("pxkarbo5") DestroyItem("pxkarbo5") DestroyItem("pxkarbo5")
	  CreateItem("pxkarbo6",0,0,0)
	  SetItemFlags("pxkarbo6",IDENTIFIED,TRUE)
	  GiveItem("pxkarbo6",LastTalkedToBy())~ GOTO Finish
	  
	//Arcs courts
	IF ~NumItemsPartyGT("bow06",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%182
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow06",3) DestroyItem("bow06") DestroyItem("bow06") DestroyItem("bow06")
	  CreateItem("bow18",0,0,0)
	  SetItemFlags("bow18",IDENTIFIED,TRUE)
	  GiveItem("bow18",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow18",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%183
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow18",3) DestroyItem("bow18") DestroyItem("bow18") DestroyItem("bow18")
	  CreateItem("bow26",0,0,0)
	  SetItemFlags("bow26",IDENTIFIED,TRUE)
	  GiveItem("bow26",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow18",1) NumItemsParty("NPBOW",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%1831
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow18",2) DestroyItem("bow18") DestroyItem("bow18")
	  TakePartyItemNum("NPBOW",1) DestroyItem("NPBOW")
	  CreateItem("bow26",0,0,0)
	  SetItemFlags("bow26",IDENTIFIED,TRUE)
	  GiveItem("bow26",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow26",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%184
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow26",3) DestroyItem("bow26") DestroyItem("bow26") DestroyItem("bow26")
	  CreateItem("pxkarcc4",0,0,0)
	  SetItemFlags("pxkarcc4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcc4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcc4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%185
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcc4",3) DestroyItem("pxkarcc4") DestroyItem("pxkarcc4") DestroyItem("pxkarcc4")
	  CreateItem("pxkarcc5",0,0,0)
	  SetItemFlags("pxkarcc5",IDENTIFIED,TRUE)
	  GiveItem("pxkarcc5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcc5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%186
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcc5",3) DestroyItem("pxkarcc5") DestroyItem("pxkarcc5") DestroyItem("pxkarcc5")
	  CreateItem("pxkarcc6",0,0,0)
	  SetItemFlags("pxkarcc6",IDENTIFIED,TRUE)
	  GiveItem("pxkarcc6",LastTalkedToBy())~ GOTO Finish
	  
	//Arcs longs
	IF ~NumItemsPartyGT("bow04",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%192
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow04",3) DestroyItem("bow04") DestroyItem("bow04") DestroyItem("bow04")
	  CreateItem("bow17",0,0,0)
	  SetItemFlags("bow17",IDENTIFIED,TRUE)
	  GiveItem("bow17",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow17",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%193
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow17",3) DestroyItem("bow17") DestroyItem("bow17") DestroyItem("bow17")
	  CreateItem("bow25",0,0,0)
	  SetItemFlags("bow25",IDENTIFIED,TRUE)
	  GiveItem("bow25",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsPartyGT("bow17",1) NumItemsParty("bow07",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%1931
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow17",2) DestroyItem("bow17") DestroyItem("bow17")
	  TakePartyItemNum("bow07",1) DestroyItem("bow07")
	  CreateItem("bow25",0,0,0)
	  SetItemFlags("bow25",IDENTIFIED,TRUE)
	  GiveItem("bow25",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow25",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%194
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow25",3) DestroyItem("bow25") DestroyItem("bow25") DestroyItem("bow25")
	  CreateItem("pxkarcl4",0,0,0)
	  SetItemFlags("pxkarcl4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow25",1) NumItemsParty("bow12",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1941
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow25",2) DestroyItem("bow25") DestroyItem("bow25")
	  TakePartyItemNum("bow12",1) DestroyItem("bow12")
	  CreateItem("pxkarcl4",0,0,0)
	  SetItemFlags("pxkarcl4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow25",1) NumItemsParty("PXPMAAUR",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1942
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow25",2) DestroyItem("bow25") DestroyItem("bow25")
	  TakePartyItemNum("PXPMAAUR",1) DestroyItem("PXPMAAUR")
	  CreateItem("pxkarcl4",0,0,0)
	  SetItemFlags("pxkarcl4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("bow25",1) NumItemsParty("bow12",1) NumItemsParty("PXPMAAUR",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%1943
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow25",1) DestroyItem("bow25")
	  TakePartyItemNum("bow12",1) DestroyItem("bow12")
	  TakePartyItemNum("PXPMAAUR",1) DestroyItem("PXPMAAUR")
	  CreateItem("pxkarcl4",0,0,0)
	  SetItemFlags("pxkarcl4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcl4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%195
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcl4",3) DestroyItem("pxkarcl4") DestroyItem("pxkarcl4") DestroyItem("pxkarcl4")
	  CreateItem("pxkarcl5",0,0,0)
	  SetItemFlags("pxkarcl5",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcl4",1) NumItemsParty("PXPAADOU",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%1951
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcl4",2) DestroyItem("pxkarcl4") DestroyItem("pxkarcl4")
	  TakePartyItemNum("PXPAADOU",1) DestroyItem("PXPAADOU")
	  CreateItem("pxkarcl5",0,0,0)
	  SetItemFlags("pxkarcl5",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcl5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%196
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcl5",3) DestroyItem("pxkarcl5") DestroyItem("pxkarcl5") DestroyItem("pxkarcl5")
	  CreateItem("pxkarcl6",0,0,0)
	  SetItemFlags("pxkarcl6",IDENTIFIED,TRUE)
	  GiveItem("pxkarcl6",LastTalkedToBy())~ GOTO Finish
	  
	//Arcs longs composites
	IF ~NumItemsPartyGT("bow02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%202
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow02",3) DestroyItem("bow02") DestroyItem("bow02") DestroyItem("bow02")
	  CreateItem("bow16",0,0,0)
	  SetItemFlags("bow16",IDENTIFIED,TRUE)
	  GiveItem("bow16",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow16",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%203
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow16",3) DestroyItem("bow16") DestroyItem("bow16") DestroyItem("bow16")
	  CreateItem("bow24",0,0,0)
	  SetItemFlags("bow24",IDENTIFIED,TRUE)
	  GiveItem("bow24",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("bow24",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%204
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("bow24",3) DestroyItem("bow24") DestroyItem("bow24") DestroyItem("bow24")
	  CreateItem("pxkarcp4",0,0,0)
	  SetItemFlags("pxkarcp4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcp4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcp4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%205
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcp4",3) DestroyItem("pxkarcp4") DestroyItem("pxkarcp4") DestroyItem("pxkarcp4")
	  CreateItem("pxkarcp5",0,0,0)
	  SetItemFlags("pxkarcp5",IDENTIFIED,TRUE)
	  GiveItem("pxkarcp5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcp5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%206
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcp5",3) DestroyItem("pxkarcp5") DestroyItem("pxkarcp5") DestroyItem("pxkarcp5")
	  CreateItem("pxkarcp6",0,0,0)
	  SetItemFlags("pxkarcp6",IDENTIFIED,TRUE)
	  GiveItem("pxkarcp6",LastTalkedToBy())~ GOTO Finish
	  
	//Frondes
	IF ~NumItemsPartyGT("slng02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%212
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("slng02",3) DestroyItem("slng02") DestroyItem("slng02") DestroyItem("slng02")
	  CreateItem("slng04",0,0,0)
	  SetItemFlags("slng04",IDENTIFIED,TRUE)
	  GiveItem("slng04",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("slng04",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%213
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("slng04",3) DestroyItem("slng04") DestroyItem("slng04") DestroyItem("slng04")
	  CreateItem("slng10",0,0,0)
	  SetItemFlags("slng10",IDENTIFIED,TRUE)
	  GiveItem("slng10",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("slng10",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%214
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("slng10",3) DestroyItem("slng10") DestroyItem("slng10") DestroyItem("slng10")
	  CreateItem("pxkfron4",0,0,0)
	  SetItemFlags("pxkfron4",IDENTIFIED,TRUE)
	  GiveItem("pxkfron4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkfron4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%215
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkfron4",3) DestroyItem("pxkfron4") DestroyItem("pxkfron4") DestroyItem("pxkfron4")
	  CreateItem("pxkfron5",0,0,0)
	  SetItemFlags("pxkfron5",IDENTIFIED,TRUE)
	  GiveItem("pxkfron5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkfron5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%216
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkfron5",3) DestroyItem("pxkfron5") DestroyItem("pxkfron5") DestroyItem("pxkfron5")
	  CreateItem("pxkfron6",0,0,0)
	  SetItemFlags("pxkfron6",IDENTIFIED,TRUE)
	  GiveItem("pxkfron6",LastTalkedToBy())~ GOTO Finish
	  
	//Armures de cuir
	IF ~NumItemsPartyGT("leat02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%222
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat02",3) DestroyItem("leat02") DestroyItem("leat02") DestroyItem("leat02")
	  CreateItem("leat11",0,0,0)
	  SetItemFlags("leat11",IDENTIFIED,TRUE)
	  GiveItem("leat11",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat11",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%223
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat11",3) DestroyItem("leat11") DestroyItem("leat11") DestroyItem("leat11")
	  CreateItem("leat12",0,0,0)
	  SetItemFlags("leat12",IDENTIFIED,TRUE)
	  GiveItem("leat12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat11",1) NumItemsParty("leat03",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2231
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat11",2) DestroyItem("leat11") DestroyItem("leat11")
	  TakePartyItemNum("leat03",1) DestroyItem("leat03")
	  CreateItem("leat12",0,0,0)
	  SetItemFlags("leat12",IDENTIFIED,TRUE)
	  GiveItem("leat12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat11",1) NumItemsParty("ESLIARMO",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2232
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat11",2) DestroyItem("leat11") DestroyItem("leat11")
	  TakePartyItemNum("ESLIARMO",1) DestroyItem("ESLIARMO")
	  CreateItem("leat12",0,0,0)
	  SetItemFlags("leat12",IDENTIFIED,TRUE)
	  GiveItem("leat12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("leat11",1) NumItemsParty("leat03",1) NumItemsParty("ESLIARMO",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2233
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat11",1) DestroyItem("leat11")
	  TakePartyItemNum("leat03",1) DestroyItem("leat03") 
	  TakePartyItemNum("ESLIARMO",1) DestroyItem("ESLIARMO")
	  CreateItem("leat12",0,0,0)
	  SetItemFlags("leat12",IDENTIFIED,TRUE)
	  GiveItem("leat12",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat12",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%224
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat12",3) DestroyItem("leat12") DestroyItem("leat12") DestroyItem("leat12")
	  CreateItem("pxkcuir4",0,0,0)
	  SetItemFlags("pxkcuir4",IDENTIFIED,TRUE)
	  GiveItem("pxkcuir4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat12",1) NumItemsParty("leat09",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%224
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat12",2) DestroyItem("leat12") DestroyItem("leat12")
	  TakePartyItemNum("leat09",1) DestroyItem("leat09")
	  CreateItem("pxkcuir4",0,0,0)
	  SetItemFlags("pxkcuir4",IDENTIFIED,TRUE)
	  GiveItem("pxkcuir4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcuir4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%225
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcuir4",3) DestroyItem("pxkcuir4") DestroyItem("pxkcuir4") DestroyItem("pxkcuir4")
	  CreateItem("pxkcuir5",0,0,0)
	  SetItemFlags("pxkcuir5",IDENTIFIED,TRUE)
	  GiveItem("pxkcuir5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcuir5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%226
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcuir5",3) DestroyItem("pxkcuir5") DestroyItem("pxkcuir5") DestroyItem("pxkcuir5")
	  CreateItem("pxkcuir6",0,0,0)
	  SetItemFlags("pxkcuir6",IDENTIFIED,TRUE)
	  GiveItem("pxkcuir6",LastTalkedToBy())~ GOTO Finish
	  
	//Besantines
	IF ~NumItemsPartyGT("leat05",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%232
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat05",3) DestroyItem("leat05") DestroyItem("leat05") DestroyItem("leat05")
	  CreateItem("leat07",0,0,0)
	  SetItemFlags("leat07",IDENTIFIED,TRUE)
	  GiveItem("leat07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat07",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%233
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat07",3) DestroyItem("leat07") DestroyItem("leat07") DestroyItem("leat07")
	  CreateItem("ohleat53",0,0,0)
	  SetItemFlags("ohleat53",IDENTIFIED,TRUE)
	  GiveItem("ohleat53",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat15",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%233
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat15",3) DestroyItem("leat15") DestroyItem("leat15") DestroyItem("leat15")
	  CreateItem("ohleat53",0,0,0)
	  SetItemFlags("ohleat53",IDENTIFIED,TRUE)
	  GiveItem("ohleat53",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat15",1) NumItemsPartyGT("leat07",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%233
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat15",2) DestroyItem("leat15") DestroyItem("leat15")
	  TakePartyItemNum("leat07",1) DestroyItem("leat07")
	  CreateItem("ohleat53",0,0,0)
	  SetItemFlags("ohleat53",IDENTIFIED,TRUE)
	  GiveItem("ohleat53",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("leat07",1) NumItemsPartyGT("leat15",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%233
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("leat07",2) DestroyItem("leat07") DestroyItem("leat07")
	  TakePartyItemNum("leat15",1) DestroyItem("leat15")
	  CreateItem("ohleat53",0,0,0)
	  SetItemFlags("ohleat53",IDENTIFIED,TRUE)
	  GiveItem("ohleat53",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbesa3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%234
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbesa3",3) DestroyItem("pxkbesa3") DestroyItem("pxkbesa3") DestroyItem("pxkbesa3")
	  CreateItem("pxkbesa4",0,0,0)
	  SetItemFlags("pxkbesa4",IDENTIFIED,TRUE)
	  GiveItem("pxkbesa4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbesa4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%235
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbesa4",3) DestroyItem("pxkbesa4") DestroyItem("pxkbesa4") DestroyItem("pxkbesa4")
	  CreateItem("pxkbesa5",0,0,0)
	  SetItemFlags("pxkbesa5",IDENTIFIED,TRUE)
	  GiveItem("pxkbesa5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbesa4",1) NumItemsParty("leat17",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%2351
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbesa4",2) DestroyItem("pxkbesa4") DestroyItem("pxkbesa4")
	  TakePartyItemNum("leat17",1) DestroyItem("leat17")
	  CreateItem("pxkbesa5",0,0,0)
	  SetItemFlags("pxkbesa5",IDENTIFIED,TRUE)
	  GiveItem("pxkbesa5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbesa5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%236
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbesa5",3) DestroyItem("pxkbesa5") DestroyItem("pxkbesa5") DestroyItem("pxkbesa5")
	  CreateItem("pxkbesa6",0,0,0)
	  SetItemFlags("pxkbesa6",IDENTIFIED,TRUE)
	  GiveItem("pxkbesa6",LastTalkedToBy())~ GOTO Finish
	 
	//Cottes de mailles
	IF ~NumItemsPartyGT("chan02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%242
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan02",3) DestroyItem("chan02") DestroyItem("chan02") DestroyItem("chan02")
	  CreateItem("chan08",0,0,0)
	  SetItemFlags("chan08",IDENTIFIED,TRUE)
	  GiveItem("chan08",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan08",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%243
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan08",3) DestroyItem("chan08") DestroyItem("chan08") DestroyItem("chan08")
	  CreateItem("chan07",0,0,0)
	  SetItemFlags("chan07",IDENTIFIED,TRUE)
	  GiveItem("chan07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan08",1) NumItemsParty("chan03",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2431
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan08",2) DestroyItem("chan08") DestroyItem("chan08")
	  TakePartyItemNum("chan03",1) DestroyItem("chan03")
	  CreateItem("chan07",0,0,0)
	  SetItemFlags("chan07",IDENTIFIED,TRUE)
	  GiveItem("chan07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan07",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%244
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan07",3) DestroyItem("chan07") DestroyItem("chan07") DestroyItem("chan07")
	  CreateItem("pxkcott4",0,0,0)
	  SetItemFlags("pxkcott4",IDENTIFIED,TRUE)
	  GiveItem("pxkcott4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan21",1) NumItemsPartyGT("chan07",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%244
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan21",2) DestroyItem("chan21") DestroyItem("chan21")
	  TakePartyItemNum("chan07",1) DestroyItem("chan07")
	  CreateItem("pxkcott4",0,0,0)
	  SetItemFlags("pxkcott4",IDENTIFIED,TRUE)
	  GiveItem("pxkcott4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan07",1) NumItemsPartyGT("chan21",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%244
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan07",2) DestroyItem("chan07") DestroyItem("chan07")
	  TakePartyItemNum("chan21",1) DestroyItem("chan21")
	  CreateItem("pxkcott4",0,0,0)
	  SetItemFlags("pxkcott4",IDENTIFIED,TRUE)
	  GiveItem("pxkcott4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan21",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%244
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan21",3) DestroyItem("chan21") DestroyItem("chan21") DestroyItem("chan21")
	  CreateItem("pxkcott4",0,0,0)
	  SetItemFlags("pxkcott4",IDENTIFIED,TRUE)
	  GiveItem("pxkcott4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%245
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",3) DestroyItem("pxkcott4") DestroyItem("pxkcott4") DestroyItem("pxkcott4")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",1) NumItemsParty("chan06",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%2451
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",2) DestroyItem("pxkcott4") DestroyItem("pxkcott4")
	  TakePartyItemNum("chan06",1) DestroyItem("chan06")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",1) NumItemsParty("chan10",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%2452
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",2) DestroyItem("pxkcott4") DestroyItem("pxkcott4")
	  TakePartyItemNum("chan10",1) DestroyItem("chan10")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",0) NumItemsParty("chan10",1)  NumItemsParty("chan06",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%2453
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",1) DestroyItem("pxkcott4")
	  TakePartyItemNum("chan10",1) DestroyItem("chan10")
	  TakePartyItemNum("chan06",1) DestroyItem("chan06")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%246
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott5",3) DestroyItem("pxkcott5") DestroyItem("pxkcott5") DestroyItem("pxkcott5")
	  CreateItem("pxkcott6",0,0,0)
	  SetItemFlags("pxkcott6",IDENTIFIED,TRUE)
	  GiveItem("pxkcott6",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott5",1) NumItemsParty("chan11",1) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%2461
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott5",2) DestroyItem("pxkcott5") DestroyItem("pxkcott5")
	  TakePartyItemNum("chan11",1) DestroyItem("chan11")
	  CreateItem("pxkcott6",0,0,0)
	  SetItemFlags("pxkcott6",IDENTIFIED,TRUE)
	  GiveItem("pxkcott6",LastTalkedToBy())~ GOTO Finish
	  
	//Armures de plates
	IF ~NumItemsPartyGT("plat10",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%252
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat10",3) DestroyItem("plat10") DestroyItem("plat10") DestroyItem("plat10")
	  CreateItem("ohplat50",0,0,0)
	  SetItemFlags("ohplat50",IDENTIFIED,TRUE)
	  GiveItem("ohplat50",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat10",1) NumItemsParty("plat02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%2521
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat10",2) DestroyItem("plat10") DestroyItem("plat10")
	  TakePartyItemNum("plat02",1) DestroyItem("plat02")
	  CreateItem("ohplat50",0,0,0)
	  SetItemFlags("ohplat50",IDENTIFIED,TRUE)
	  GiveItem("ohplat50",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohplat50",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%253
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohplat50",3) DestroyItem("ohplat50") DestroyItem("ohplat50") DestroyItem("ohplat50")
	  CreateItem("pxkplat3",0,0,0)
	  SetItemFlags("pxkplat3",IDENTIFIED,TRUE)
	  GiveItem("pxkplat3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohplat50",1) NumItemsParty("plat06",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2531
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohplat50",2) DestroyItem("ohplat50") DestroyItem("ohplat50")
	  TakePartyItemNum("plat06",1) DestroyItem("plat06")
	  CreateItem("pxkplat3",0,0,0)
	  SetItemFlags("pxkplat3",IDENTIFIED,TRUE)
	  GiveItem("pxkplat3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplat3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%254
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplat3",3) DestroyItem("pxkplat3") DestroyItem("pxkplat3") DestroyItem("pxkplat3")
	  CreateItem("pxkplat4",0,0,0)
	  SetItemFlags("pxkplat4",IDENTIFIED,TRUE)
	  GiveItem("pxkplat4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplat3",1) NumItemsParty("plat12",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%2541
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplat3",2) DestroyItem("pxkplat3") DestroyItem("pxkplat3")
	  TakePartyItemNum("plat12",1) DestroyItem("plat12")
	  CreateItem("pxkplat4",0,0,0)
	  SetItemFlags("pxkplat4",IDENTIFIED,TRUE)
	  GiveItem("pxkplat4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplat4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%255
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplat4",3) DestroyItem("pxkplat4") DestroyItem("pxkplat4") DestroyItem("pxkplat4")
	  CreateItem("pxkplat5",0,0,0)
	  SetItemFlags("pxkplat5",IDENTIFIED,TRUE)
	  GiveItem("pxkplat5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplat4",1) NumItemsParty("GCMPL01",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%2551
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplat4",2) DestroyItem("pxkplat4") DestroyItem("pxkplat4")
	  TakePartyItemNum("GCMPL01",1) DestroyItem("GCMPL01")
	  CreateItem("pxkplat5",0,0,0)
	  SetItemFlags("pxkplat5",IDENTIFIED,TRUE)
	  GiveItem("pxkplat5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplat5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%256
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplat5",3) DestroyItem("pxkplat5") DestroyItem("pxkplat5") DestroyItem("pxkplat5")
	  CreateItem("pxkplat6",0,0,0)
	  SetItemFlags("pxkplat6",IDENTIFIED,TRUE)
	  GiveItem("pxkplat6",LastTalkedToBy())~ GOTO Finish
	  
	//Armures de plates complètes
	IF ~NumItemsPartyGT("plat05",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%262
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat05",3) DestroyItem("plat05") DestroyItem("plat05") DestroyItem("plat05")
	  CreateItem("plat19",0,0,0)
	  SetItemFlags("plat19",IDENTIFIED,TRUE)
	  GiveItem("plat19",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat14",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%262
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat14",3) DestroyItem("plat14") DestroyItem("plat14") DestroyItem("plat14")
	  CreateItem("plat19",0,0,0)
	  SetItemFlags("plat19",IDENTIFIED,TRUE)
	  GiveItem("plat19",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat14",1) NumItemsPartyGT("plat05",0) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%262
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat14",2) DestroyItem("plat14") DestroyItem("plat14")
	  TakePartyItemNum("plat05",1) DestroyItem("plat05")
	  CreateItem("plat19",0,0,0)
	  SetItemFlags("plat19",IDENTIFIED,TRUE)
	  GiveItem("plat19",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat05",1) NumItemsPartyGT("plat14",0) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%262
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat05",2) DestroyItem("plat05") DestroyItem("plat05")
	  TakePartyItemNum("plat14",1) DestroyItem("plat14")
	  CreateItem("plat19",0,0,0)
	  SetItemFlags("plat19",IDENTIFIED,TRUE)
	  GiveItem("plat19",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%263
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",3) DestroyItem("plat19") DestroyItem("plat19") DestroyItem("plat19")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%263
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",3) DestroyItem("plat23") DestroyItem("plat23") DestroyItem("plat23")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",1) NumItemsPartyGT("plat19",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%263
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",2) DestroyItem("plat23") DestroyItem("plat23")
	  TakePartyItemNum("plat19",1) DestroyItem("plat19")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",1) NumItemsPartyGT("plat23",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%263
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",2) DestroyItem("plat19") DestroyItem("plat19")
	  TakePartyItemNum("plat23",1) DestroyItem("plat23")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",1) NumItemsParty("plat15",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2631
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",2) DestroyItem("plat19") DestroyItem("plat19")
	  TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",1) NumItemsParty("BRUENPLA",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2632
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",2) DestroyItem("plat19") DestroyItem("plat19")
	  TakePartyItemNum("BRUENPLA",1) DestroyItem("BRUENPLA")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsParty("plat19",1) NumItemsParty("plat15",1) NumItemsParty("BRUENPLA",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2633
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",1) DestroyItem("plat19")
	   TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  TakePartyItemNum("BRUENPLA",1) DestroyItem("BRUENPLA")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",1) NumItemsParty("plat15",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2631
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",2) DestroyItem("plat23") DestroyItem("plat23")
	  TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%264
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac3",3) DestroyItem("pxkplac3") DestroyItem("pxkplac3") DestroyItem("pxkplac3")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac3",2) NumItemsParty("plat16",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%2641
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac3",2) DestroyItem("pxkplac3") DestroyItem("pxkplac3")
	  TakePartyItemNum("plat16",1) DestroyItem("plat16")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%265
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac4",3) DestroyItem("pxkplac4") DestroyItem("pxkplac4") DestroyItem("pxkplac4")
	  CreateItem("pxkplac5",0,0,0)
	  SetItemFlags("pxkplac5",IDENTIFIED,TRUE)
	  GiveItem("pxkplac5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%266
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac5",3) DestroyItem("pxkplac5") DestroyItem("pxkplac5") DestroyItem("pxkplac5")
	  CreateItem("pxkplac6",0,0,0)
	  SetItemFlags("pxkplac6",IDENTIFIED,TRUE)
	  GiveItem("pxkplac6",LastTalkedToBy())~ GOTO Finish
	  
	//Targes
	IF ~NumItemsPartyGT("shld17",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%342
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld17",3) DestroyItem("shld17") DestroyItem("shld17") DestroyItem("shld17")
	  CreateItem("ohshld50",0,0,0)
	  SetItemFlags("ohshld50",IDENTIFIED,TRUE)
	  GiveItem("ohshld50",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%342
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc02",3) DestroyItem("rr#buc02") DestroyItem("rr#buc02") DestroyItem("rr#buc02")
	  CreateItem("rr#buc03",0,0,0)
	  SetItemFlags("rr#buc03",IDENTIFIED,TRUE)
	  GiveItem("rr#buc03",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("shld17",1) NumItemsParty("rr#buc02",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%342
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld17",2) DestroyItem("shld17") DestroyItem("shld17")
	  TakePartyItemNum("rr#buc02",1) DestroyItem("rr#buc02")
	  CreateItem("ohshld50",0,0,0)
	  SetItemFlags("ohshld50",IDENTIFIED,TRUE)
	  GiveItem("ohshld50",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc02",1) NumItemsParty("shld17",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%342
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc02",2) DestroyItem("rr#buc02") DestroyItem("rr#buc02")
	  TakePartyItemNum("shld17",1) DestroyItem("shld17")
	  CreateItem("rr#buc03",0,0,0)
	  SetItemFlags("rr#buc03",IDENTIFIED,TRUE)
	  GiveItem("rr#buc03",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohshld50",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%343
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld50",3) DestroyItem("ohshld50") DestroyItem("ohshld50") DestroyItem("ohshld50")
	  CreateItem("ohshld51",0,0,0)
	  SetItemFlags("ohshld51",IDENTIFIED,TRUE)
	  GiveItem("ohshld51",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc03",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%343
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc03",3) DestroyItem("rr#buc03") DestroyItem("rr#buc03") DestroyItem("rr#buc03")
	  CreateItem("rr#buc04",0,0,0)
	  SetItemFlags("rr#buc04",IDENTIFIED,TRUE)
	  GiveItem("rr#buc04",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohshld50",1) NumItemsParty("rr#buc03",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%343
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld50",2) DestroyItem("ohshld50") DestroyItem("ohshld50")
	  TakePartyItemNum("rr#buc03",1) DestroyItem("rr#buc03")
	  CreateItem("ohshld51",0,0,0)
	  SetItemFlags("ohshld51",IDENTIFIED,TRUE)
	  GiveItem("ohshld51",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc03",1) NumItemsParty("ohshld50",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%343
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc03",2) DestroyItem("rr#buc03") DestroyItem("rr#buc03")
	  TakePartyItemNum("ohshld50",1) DestroyItem("ohshld50")
	  CreateItem("rr#buc04",0,0,0)
	  SetItemFlags("rr#buc04",IDENTIFIED,TRUE)
	  GiveItem("rr#buc04",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohshld51",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%344
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld51",3) DestroyItem("ohshld51") DestroyItem("ohshld51") DestroyItem("ohshld51")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc04",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%344
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc04",3) DestroyItem("rr#buc04") DestroyItem("rr#buc04") DestroyItem("rr#buc04")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohshld51",1) NumItemsParty("rr#buc04",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%344
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld51",2) DestroyItem("ohshld50") DestroyItem("ohshld50")
	  TakePartyItemNum("rr#buc04",1) DestroyItem("rr#buc03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc04",1) NumItemsParty("ohshld51",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%344
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc04",2) DestroyItem("rr#buc04") DestroyItem("rr#buc04")
	  TakePartyItemNum("ohshld51",1) DestroyItem("ohshld51")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxktarg4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%345
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxktarg4",3) DestroyItem("pxktarg4") DestroyItem("pxktarg4") DestroyItem("pxktarg4")
	  CreateItem("pxktarg5",0,0,0)
	  SetItemFlags("pxktarg5",IDENTIFIED,TRUE)
	  GiveItem("pxktarg5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxktarg5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%346
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxktarg5",3) DestroyItem("pxktarg5") DestroyItem("pxktarg5") DestroyItem("pxktarg5")
	  CreateItem("pxktarg6",0,0,0)
	  SetItemFlags("pxktarg6",IDENTIFIED,TRUE)
	  GiveItem("pxktarg6",LastTalkedToBy())~ GOTO Finish
	  
	//Rondaches 
	IF ~NumItemsPartyGT("shld02",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%272
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld02",3) DestroyItem("shld02") DestroyItem("shld02") DestroyItem("shld02")
	  CreateItem("shld28",0,0,0)
	  SetItemFlags("shld28",IDENTIFIED,TRUE)
	  GiveItem("shld28",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("shld28",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%273
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld28",3) DestroyItem("shld28") DestroyItem("shld28") DestroyItem("shld28")
	  CreateItem("pxkrond3",0,0,0)
	  SetItemFlags("pxkrond3",IDENTIFIED,TRUE)
	  GiveItem("pxkrond3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkrond3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%274
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkrond3",3) DestroyItem("pxkrond3") DestroyItem("pxkrond3") DestroyItem("pxkrond3")
	  CreateItem("pxkrond4",0,0,0)
	  SetItemFlags("pxkrond4",IDENTIFIED,TRUE)
	  GiveItem("pxkrond4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkrond4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%275
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkrond4",3) DestroyItem("pxkrond4") DestroyItem("pxkrond4") DestroyItem("pxkrond4")
	  CreateItem("pxkrond5",0,0,0)
	  SetItemFlags("pxkrond5",IDENTIFIED,TRUE)
	  GiveItem("pxkrond5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkrond5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%276
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkrond5",3) DestroyItem("pxkrond5") DestroyItem("pxkrond5") DestroyItem("pxkrond5")
	  CreateItem("pxkrond6",0,0,0)
	  SetItemFlags("pxkrond6",IDENTIFIED,TRUE)
	  GiveItem("pxkrond6",LastTalkedToBy())~ GOTO Finish
	  
	//Écus
	IF ~NumItemsPartyGT("shld04",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%282
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld04",3) DestroyItem("shld04") DestroyItem("shld04") DestroyItem("shld04")
	  CreateItem("shld29",0,0,0)
	  SetItemFlags("shld29",IDENTIFIED,TRUE)
	  GiveItem("shld29",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("shld29",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%283
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld29",3) DestroyItem("shld29") DestroyItem("shld29") DestroyItem("shld29")
	  CreateItem("pxkecu3",0,0,0)
	  SetItemFlags("pxkecu3",IDENTIFIED,TRUE)
	  GiveItem("pxkecu3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkecu3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%284
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkecu3",3) DestroyItem("pxkecu3") DestroyItem("pxkecu3") DestroyItem("pxkecu3")
	  CreateItem("pxkecu4",0,0,0)
	  SetItemFlags("pxkecu4",IDENTIFIED,TRUE)
	  GiveItem("pxkecu4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkecu3",1) NumItemsParty("shld27",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%2841
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkecu3",2) DestroyItem("pxkecu3") DestroyItem("pxkecu3")
	  TakePartyItemNum("shld27",1) DestroyItem("shld27")
	  CreateItem("pxkecu4",0,0,0)
	  SetItemFlags("pxkecu4",IDENTIFIED,TRUE)
	  GiveItem("pxkecu4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkecu4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%285
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkecu4",3) DestroyItem("pxkecu4") DestroyItem("pxkecu4") DestroyItem("pxkecu4")
	  CreateItem("pxkecu5",0,0,0)
	  SetItemFlags("pxkecu5",IDENTIFIED,TRUE)
	  GiveItem("pxkecu5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkecu4",1) NumItemsParty("shld22",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%2851
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkecu4",2) DestroyItem("pxkecu4") DestroyItem("pxkecu4")
	  TakePartyItemNum("shld22",1) DestroyItem("shld22")
	  CreateItem("pxkecu5",0,0,0)
	  SetItemFlags("pxkecu5",IDENTIFIED,TRUE)
	  GiveItem("pxkecu5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkecu5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%286
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkecu5",3) DestroyItem("pxkecu5") DestroyItem("pxkecu5") DestroyItem("pxkecu5")
	  CreateItem("pxkecu6",0,0,0)
	  SetItemFlags("pxkecu6",IDENTIFIED,TRUE)
	  GiveItem("pxkecu6",LastTalkedToBy())~ GOTO Finish
	  
	//Pavois
	IF ~NumItemsPartyGT("shld06",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%292
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld06",3) DestroyItem("shld06") DestroyItem("shld06") DestroyItem("shld06")
	  CreateItem("shld30",0,0,0)
	  SetItemFlags("shld30",IDENTIFIED,TRUE)
	  GiveItem("shld30",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("shld30",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%293
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld30",3) DestroyItem("shld30") DestroyItem("shld30") DestroyItem("shld30")
	  CreateItem("pxkpavo3",0,0,0)
	  SetItemFlags("pxkpavo3",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("shld30",1) NumItemsParty("shld19",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2931
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld30",2) DestroyItem("shld30") DestroyItem("shld30")
	  TakePartyItemNum("shld19",1) DestroyItem("shld19")
	  CreateItem("pxkpavo3",0,0,0)
	  SetItemFlags("pxkpavo3",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("shld30",1) NumItemsParty("USHLD3A",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2932
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld30",2) DestroyItem("shld30") DestroyItem("shld30")
	  TakePartyItemNum("USHLD3A",1) DestroyItem("USHLD3A")
	  CreateItem("pxkpavo3",0,0,0)
	  SetItemFlags("pxkpavo3",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo3",LastTalkedToBy())~ GOTO Finish
	 IF ~NumItemsParty("shld30",1) NumItemsParty("shld19",1) NumItemsParty("USHLD3A",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%2933
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("shld30",1) DestroyItem("shld30")
	  TakePartyItemNum("shld19",1) DestroyItem("shld19")
	  TakePartyItemNum("USHLD3A",1) DestroyItem("USHLD3A")
	  CreateItem("pxkpavo3",0,0,0)
	  SetItemFlags("pxkpavo3",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkpavo3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%294
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkpavo3",3) DestroyItem("pxkpavo3") DestroyItem("pxkpavo3") DestroyItem("pxkpavo3")
	  CreateItem("pxkpavo4",0,0,0)
	  SetItemFlags("pxkpavo4",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkpavo4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%295
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkpavo4",3) DestroyItem("pxkpavo4") DestroyItem("pxkpavo4") DestroyItem("pxkpavo4")
	  CreateItem("pxkpavo5",0,0,0)
	  SetItemFlags("pxkpavo5",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkpavo5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%296
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkpavo5",3) DestroyItem("pxkpavo5") DestroyItem("pxkpavo5") DestroyItem("pxkpavo5")
	  CreateItem("pxkpavo6",0,0,0)
	  SetItemFlags("pxkpavo6",IDENTIFIED,TRUE)
	  GiveItem("pxkpavo6",LastTalkedToBy())~ GOTO Finish
	 
	//Anneaux
	IF ~NumItemsPartyGT("ring06",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%302
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",3)	DestroyItem("ring06")	DestroyItem("ring06")	DestroyItem("ring06")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring06",1) NumItemsParty("ring25",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3021
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",2) DestroyItem("ring06")	DestroyItem("ring06")
	  TakePartyItemNum("ring25",1) DestroyItem("ring25")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring06",1) NumItemsPartyGT("a7-ri05",0) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3022
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",2) DestroyItem("ring06")	DestroyItem("ring06")
	  TakePartyItemNum("a7-ri05",1) DestroyItem("a7-ri05")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring06",0) NumItemsPartyGT("a7-ri05",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3023
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",1) DestroyItem("ring06")
	  TakePartyItemNum("a7-ri05",2) DestroyItem("a7-ri05") DestroyItem("a7-ri05")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("a7-ri05",1) NumItemsParty("ring25",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3024
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("a7-ri05",2) DestroyItem("a7-ri05")	DestroyItem("a7-ri05")
	  TakePartyItemNum("ring25",1) DestroyItem("ring25")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring06",0) NumItemsPartyGT("a7-ri05",0) NumItemsParty("ring25",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3025
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",1) DestroyItem("ring06")
	  TakePartyItemNum("a7-ri05",1) DestroyItem("a7-ri05")
	  TakePartyItemNum("ring25",1) DestroyItem("ring25")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish		
	IF ~NumItemsPartyGT("ring06",1) NumItemsParty("O#DCRING",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3026
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",2) DestroyItem("ring06")	DestroyItem("ring06")
	  TakePartyItemNum("O#DCRING",1) DestroyItem("O#DCRING")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("a7-ri05",1) NumItemsParty("O#DCRING",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3027
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("a7-ri05",2) DestroyItem("a7-ri05")	DestroyItem("a7-ri05")
	  TakePartyItemNum("O#DCRING",1) DestroyItem("O#DCRING")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish	
	IF ~NumItemsPartyGT("ring06",0) NumItemsPartyGT("a7-ri05",0) NumItemsParty("O#DCRING",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3028
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",1) DestroyItem("ring06")
	  TakePartyItemNum("a7-ri05",1) DestroyItem("a7-ri05")
	  TakePartyItemNum("O#DCRING",1) DestroyItem("O#DCRING")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring06",0) NumItemsParty("ring25",1) NumItemsParty("O#DCRING",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3029
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",1) DestroyItem("ring06")
	  TakePartyItemNum("ring25",1) DestroyItem("ring25")
	  TakePartyItemNum("O#DCRING",1) DestroyItem("O#DCRING")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring06",0) NumItemsPartyGT("O#DCRING",0) NumItemsParty("ring25",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%30210
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring06",1) DestroyItem("ring06")
	  TakePartyItemNum("O#DCRING",1) DestroyItem("O#DCRING")
	  TakePartyItemNum("ring25",1) DestroyItem("ring25")
	  CreateItem("ring07",0,0,0)
	  SetItemFlags("ring07",IDENTIFIED,TRUE)
	  GiveItem("ring07",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring07",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%303
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring07",3) DestroyItem("ring07") DestroyItem("ring07") DestroyItem("ring07")
	  CreateItem("pxkanno3",0,0,0)
	  SetItemFlags("pxkanno3",IDENTIFIED,TRUE)
	  GiveItem("pxkanno3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%304
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",3) DestroyItem("pxkanno3") DestroyItem("pxkanno3") DestroyItem("pxkanno3")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",1) NumItemsParty("ring41",1)	%pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%3041
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",2) DestroyItem("pxkanno3") DestroyItem("pxkanno3")
	  TakePartyItemNum("ring41",1)	DestroyItem("ring41")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",1) NumItemsParty("NSRNG",1)	%pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%3042
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",2) DestroyItem("pxkanno3") DestroyItem("pxkanno3")
	  TakePartyItemNum("NSRNG",1)	DestroyItem("NSRNG")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",0) NumItemsParty("NSRNG",1) NumItemsParty("ring41",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%3043
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",1) DestroyItem("pxkanno3")
	  TakePartyItemNum("NSRNG",1)	DestroyItem("NSRNG")
	  TakePartyItemNum("ring41",1)	DestroyItem("ring41")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%305
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno4",3) DestroyItem("pxkanno4") DestroyItem("pxkanno4") DestroyItem("pxkanno4")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%306
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno5",3) DestroyItem("pxkanno5") DestroyItem("pxkanno5") DestroyItem("pxkanno5")
	  CreateItem("pxkanno6",0,0,0)
	  SetItemFlags("pxkanno6",IDENTIFIED,TRUE)
	  GiveItem("pxkanno6",LastTalkedToBy())~ GOTO Finish
	  
	//Amulettes 
	IF ~NumItemsPartyGT("amul14",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%312
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("amul14",3) DestroyItem("amul14") DestroyItem("amul14") DestroyItem("amul14")
	  CreateItem("pxkamul2",0,0,0)
	  SetItemFlags("pxkamul2",IDENTIFIED,TRUE)
	  GiveItem("pxkamul2",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkamul2",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%313
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkamul2",3) DestroyItem("pxkamul2") DestroyItem("pxkamul2") DestroyItem("pxkamul2")
	  CreateItem("pxkamul3",0,0,0)
	  SetItemFlags("pxkamul3",IDENTIFIED,TRUE)
	  GiveItem("pxkamul3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkamul2",1) NumItemsParty("OHNAMUL2",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%3131
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkamul2",2) DestroyItem("pxkamul2") DestroyItem("pxkamul2")
	  TakePartyItemNum("OHNAMUL2",1) DestroyItem("OHNAMUL2")
	  CreateItem("pxkamul3",0,0,0)
	  SetItemFlags("pxkamul3",IDENTIFIED,TRUE)
	  GiveItem("pxkamul3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkamul3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%314
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkamul3",3) DestroyItem("pxkamul3") DestroyItem("pxkamul3") DestroyItem("pxkamul3")
	  CreateItem("pxkamul4",0,0,0)
	  SetItemFlags("pxkamul4",IDENTIFIED,TRUE)
	  GiveItem("pxkamul4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkamul4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%315
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkamul4",3) DestroyItem("pxkamul4") DestroyItem("pxkamul4") DestroyItem("pxkamul4")
	  CreateItem("pxkamul5",0,0,0)
	  SetItemFlags("pxkamul5",IDENTIFIED,TRUE)
	  GiveItem("pxkamul5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkamul5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%316
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkamul5",3) DestroyItem("pxkamul5") DestroyItem("pxkamul5") DestroyItem("pxkamul5")
	  CreateItem("pxkamul6",0,0,0)
	  SetItemFlags("pxkamul6",IDENTIFIED,TRUE)
	  GiveItem("pxkamul6",LastTalkedToBy())~ GOTO Finish
	  
	//Capes
	IF ~NumItemsPartyGT("clck01",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%322
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("clck01",3) DestroyItem("clck01") DestroyItem("clck01") DestroyItem("clck01")
	  CreateItem("clck02",0,0,0)
	  SetItemFlags("clck02",IDENTIFIED,TRUE)
	  GiveItem("clck02",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("clck01",1) NumItemsParty("NPCLCK",1) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%3221
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("clck01",2) DestroyItem("clck01") DestroyItem("clck01")
	   TakePartyItemNum("NPCLCK",1) DestroyItem("NPCLCK")
	  CreateItem("clck02",0,0,0)
	  SetItemFlags("clck02",IDENTIFIED,TRUE)
	  GiveItem("clck02",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("clck02",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%323
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("clck02",3) DestroyItem("clck02") DestroyItem("clck02") DestroyItem("clck02")
	  CreateItem("pxkcape3",0,0,0)
	  SetItemFlags("pxkcape3",IDENTIFIED,TRUE)
	  GiveItem("pxkcape3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("clck02",1) NumItemsParty("WZRDROBE",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%3231
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("clck02",2) DestroyItem("clck02") DestroyItem("clck02")
	  TakePartyItemNum("WZRDROBE",1) DestroyItem("WZRDROBE")
	  CreateItem("pxkcape3",0,0,0)
	  SetItemFlags("pxkcape3",IDENTIFIED,TRUE)
	  GiveItem("pxkcape3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcape3",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%324
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcape3",3) DestroyItem("pxkcape3") DestroyItem("pxkcape3") DestroyItem("pxkcape3")
	  CreateItem("pxkcape4",0,0,0)
	  SetItemFlags("pxkcape4",IDENTIFIED,TRUE)
	  GiveItem("pxkcape4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcape4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%325
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcape4",3) DestroyItem("pxkcape4") DestroyItem("pxkcape4") DestroyItem("pxkcape4")
	  CreateItem("pxkcape5",0,0,0)
	  SetItemFlags("pxkcape5",IDENTIFIED,TRUE)
	  GiveItem("pxkcape5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcape5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%326
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcape5",3) DestroyItem("pxkcape5") DestroyItem("pxkcape5") DestroyItem("pxkcape5")
	  CreateItem("pxkcape6",0,0,0)
	  SetItemFlags("pxkcape6",IDENTIFIED,TRUE)
	  GiveItem("pxkcape6",LastTalkedToBy())~ GOTO Finish
	  
	//Bracelets
	IF ~NumItemsPartyGT("brac01",2) %pxkc_gem_check_brac_low% PartyGoldGT(%pxkc_threshold_brac_low%)~ THEN REPLY @%pxkc_reply_prefix%367
      DO ~TakePartyGold(%pxkc_price_brac_low%) DestroyGold(%pxkc_price_brac_low%) %pxkc_gem_take_brac_low%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac01",3) DestroyItem("brac01") DestroyItem("brac01") DestroyItem("brac01")
	  CreateItem("brac02",0,0,0)
	  SetItemFlags("brac02",IDENTIFIED,TRUE)
	  GiveItem("brac02",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac02",2) %pxkc_gem_check_brac_low% PartyGoldGT(%pxkc_threshold_brac_low%)~ THEN REPLY @%pxkc_reply_prefix%366
      DO ~TakePartyGold(%pxkc_price_brac_low%) DestroyGold(%pxkc_price_brac_low%) %pxkc_gem_take_brac_low%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac02",3) DestroyItem("brac02") DestroyItem("brac02") DestroyItem("brac02")
	  CreateItem("brac03",0,0,0)
	  SetItemFlags("brac03",IDENTIFIED,TRUE)
	  GiveItem("brac03",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac03",2) %pxkc_gem_check_brac_mid% PartyGoldGT(%pxkc_threshold_brac_mid%)~ THEN REPLY @%pxkc_reply_prefix%365
      DO ~TakePartyGold(%pxkc_price_brac_mid%) DestroyGold(%pxkc_price_brac_mid%) %pxkc_gem_take_brac_mid%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac03",3) DestroyItem("brac03") DestroyItem("brac03") DestroyItem("brac03")
	  CreateItem("brac13",0,0,0)
	  SetItemFlags("brac13",IDENTIFIED,TRUE)
	  GiveItem("brac13",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac03",1) NumItemsPartyGT("a7-br03",0) %pxkc_gem_check_brac_mid% PartyGoldGT(%pxkc_threshold_brac_mid%)~ THEN REPLY @%pxkc_reply_prefix%3651
      DO ~TakePartyGold(%pxkc_price_brac_mid%) DestroyGold(%pxkc_price_brac_mid%) %pxkc_gem_take_brac_mid%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac03",2) DestroyItem("brac03") DestroyItem("brac03")
	  TakePartyItemNum("a7-br03",1) DestroyItem("a7-br03")
	  CreateItem("brac13",0,0,0)
	  SetItemFlags("brac13",IDENTIFIED,TRUE)
	  GiveItem("brac13",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac03",0) NumItemsPartyGT("a7-br03",1) %pxkc_gem_check_brac_mid% PartyGoldGT(%pxkc_threshold_brac_mid%)~ THEN REPLY @%pxkc_reply_prefix%3652
      DO ~TakePartyGold(%pxkc_price_brac_mid%) DestroyGold(%pxkc_price_brac_mid%) %pxkc_gem_take_brac_mid%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("a7-br03",2) DestroyItem("a7-br03") DestroyItem("a7-br03")
	  TakePartyItemNum("brac03",1) DestroyItem("brac03")
	  CreateItem("brac13",0,0,0)
	  SetItemFlags("brac13",IDENTIFIED,TRUE)
	  GiveItem("brac13",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac13",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%364
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac13",3) DestroyItem("brac13") DestroyItem("brac13") DestroyItem("brac13")
	  CreateItem("brac14",0,0,0)
	  SetItemFlags("brac14",IDENTIFIED,TRUE)
	  GiveItem("brac14",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac14",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%363
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac14",3) DestroyItem("brac14") DestroyItem("brac14") DestroyItem("brac14")
	  CreateItem("brac15",0,0,0)
	  SetItemFlags("brac15",IDENTIFIED,TRUE)
	  GiveItem("brac15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac14",1) NumItemsPartyGT("a7-br02",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%3631
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac14",2) DestroyItem("brac14") DestroyItem("brac14")
	  TakePartyItemNum("a7-br02",1) DestroyItem("a7-br02")
	  CreateItem("brac15",0,0,0)
	  SetItemFlags("brac15",IDENTIFIED,TRUE)
	  GiveItem("brac15",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("brac15",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%362
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("brac15",3) DestroyItem("brac15") DestroyItem("brac15") DestroyItem("brac15")
	  CreateItem("pxkbrac2",0,0,0)
	  SetItemFlags("pxkbrac2",IDENTIFIED,TRUE)
	  GiveItem("pxkbrac2",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbrac2",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%361
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbrac2",3) DestroyItem("pxkbrac2") DestroyItem("pxkbrac2") DestroyItem("pxkbrac2")
	  CreateItem("pxkbrac1",0,0,0)
	  SetItemFlags("pxkbrac1",IDENTIFIED,TRUE)
	  GiveItem("pxkbrac1",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbrac2",1)  NumItemsParty("PEIRBRAC",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%361
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbrac2",2) DestroyItem("pxkbrac2") DestroyItem("pxkbrac2")
	  TakePartyItemNum("PEIRBRAC",1) DestroyItem("PEIRBRAC")
	  CreateItem("pxkbrac1",0,0,0)
	  SetItemFlags("pxkbrac1",IDENTIFIED,TRUE)
	  GiveItem("pxkbrac1",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbrac2",1)  NumItemsParty("KEDL",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%3611
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbrac2",2) DestroyItem("pxkbrac2") DestroyItem("pxkbrac2")
	  TakePartyItemNum("KEDL",1) DestroyItem("KEDL")
	  CreateItem("pxkbrac1",0,0,0)
	  SetItemFlags("pxkbrac1",IDENTIFIED,TRUE)
	  GiveItem("pxkbrac1",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkbrac2",0)  NumItemsParty("PEIRBRAC",1)  NumItemsParty("KEDL",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%3611
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbrac2",1) DestroyItem("pxkbrac2")
	  TakePartyItemNum("PEIRBRAC",1) DestroyItem("PEIRBRAC")
	  TakePartyItemNum("KEDL",1) DestroyItem("KEDL")
	  CreateItem("pxkbrac1",0,0,0)
	  SetItemFlags("pxkbrac1",IDENTIFIED,TRUE)
	  GiveItem("pxkbrac1",LastTalkedToBy())~ GOTO Finish
IF ~NumItemsPartyGT("pxkbrac1",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%360
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkbrac1",3) DestroyItem("pxkbrac1") DestroyItem("pxkbrac1") DestroyItem("pxkbrac1")
	  CreateItem("pxkbrac0",0,0,0)
	  SetItemFlags("pxkbrac0",IDENTIFIED,TRUE)
	  GiveItem("pxkbrac0",LastTalkedToBy())~ GOTO Finish
	  
	//Arcs courts composites //Rogues Rebalancing
	IF ~NumItemsPartyGT("rrbow03",2) %pxkc_gem_check_2% PartyGoldGT(%pxkc_threshold_2%)~ THEN REPLY @%pxkc_reply_prefix%352
      DO ~TakePartyGold(%pxkc_price_2%) DestroyGold(%pxkc_price_2%) %pxkc_gem_take_2%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rrbow03",3) DestroyItem("rrbow03") DestroyItem("rrbow03") DestroyItem("rrbow03")
	  CreateItem("rrbow04",0,0,0)
	  SetItemFlags("rrbow04",IDENTIFIED,TRUE)
	  GiveItem("rrbow04",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rrbow04",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%353
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rrbow04",3) DestroyItem("rrbow04") DestroyItem("rrbow04") DestroyItem("rrbow04")
	  CreateItem("rrbow05",0,0,0)
	  SetItemFlags("rrbow05",IDENTIFIED,TRUE)
	  GiveItem("rrbow05",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rrbow05",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%354
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rrbow05",3) DestroyItem("rrbow05") DestroyItem("rrbow05") DestroyItem("rrbow05")
	  CreateItem("pxkarcr4",0,0,0)
	  SetItemFlags("pxkarcr4",IDENTIFIED,TRUE)
	  GiveItem("pxkarcr4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcr4",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%355
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcr4",3) DestroyItem("pxkarcr4") DestroyItem("pxkarcr4") DestroyItem("pxkarcr4")
	  CreateItem("pxkarcr5",0,0,0)
	  SetItemFlags("pxkarcr5",IDENTIFIED,TRUE)
	  GiveItem("pxkarcr5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkarcr5",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%356
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkarcr5",3) DestroyItem("pxkarcr5") DestroyItem("pxkarcr5") DestroyItem("pxkarcr5")
	  CreateItem("pxkarcr6",0,0,0)
	  SetItemFlags("pxkarcr6",IDENTIFIED,TRUE)
	  GiveItem("pxkarcr6",LastTalkedToBy())~ GOTO Finish

	// TXT 1 — Bardic Wonders : The Sylphen Song
	IF ~NumItemsPartyGT("pxkanno3",1) NumItemsPartyGT("C0BRING1",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80001
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",2) DestroyItem("pxkanno3") DestroyItem("pxkanno3")
	  TakePartyItemNum("C0BRING1",1) DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",0) NumItemsPartyGT("ring41",0) NumItemsPartyGT("C0BRING1",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80002
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",1) DestroyItem("pxkanno3")
	  TakePartyItemNum("ring41",1) DestroyItem("ring41")
	  TakePartyItemNum("C0BRING1",1) DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",0) NumItemsPartyGT("NSRNG",0) NumItemsPartyGT("C0BRING1",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80003
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",1) DestroyItem("pxkanno3")
	  TakePartyItemNum("NSRNG",1) DestroyItem("NSRNG")
	  TakePartyItemNum("C0BRING1",1) DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno3",0) NumItemsPartyGT("C0BRING1",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80004
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno3",1) DestroyItem("pxkanno3")
	  TakePartyItemNum("C0BRING1",2) DestroyItem("C0BRING1") DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring41",0) NumItemsPartyGT("NSRNG",0) NumItemsPartyGT("C0BRING1",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80005
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring41",1) DestroyItem("ring41")
	  TakePartyItemNum("NSRNG",1) DestroyItem("NSRNG")
	  TakePartyItemNum("C0BRING1",1) DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ring41",0) NumItemsPartyGT("C0BRING1",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80006
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ring41",1) DestroyItem("ring41")
	  TakePartyItemNum("C0BRING1",2) DestroyItem("C0BRING1") DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("NSRNG",0) NumItemsPartyGT("C0BRING1",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80007
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("NSRNG",1) DestroyItem("NSRNG")
	  TakePartyItemNum("C0BRING1",2) DestroyItem("C0BRING1") DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("C0BRING1",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80008
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("C0BRING1",3) DestroyItem("C0BRING1") DestroyItem("C0BRING1") DestroyItem("C0BRING1")
	  CreateItem("pxkanno4",0,0,0)
	  SetItemFlags("pxkanno4",IDENTIFIED,TRUE)
	  GiveItem("pxkanno4",LastTalkedToBy())~ GOTO Finish
	// TXT 1 — Improved Anvil : Buckler +3
	IF ~NumItemsPartyGT("ohshld51",1) NumItemsPartyGT("S!SHLD03",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80009
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld51",2) DestroyItem("ohshld51") DestroyItem("ohshld51")
	  TakePartyItemNum("S!SHLD03",1) DestroyItem("S!SHLD03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohshld51",0) NumItemsPartyGT("rr#buc04",0) NumItemsPartyGT("S!SHLD03",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80010
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld51",1) DestroyItem("ohshld51")
	  TakePartyItemNum("rr#buc04",1) DestroyItem("rr#buc04")
	  TakePartyItemNum("S!SHLD03",1) DestroyItem("S!SHLD03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("ohshld51",0) NumItemsPartyGT("S!SHLD03",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80011
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("ohshld51",1) DestroyItem("ohshld51")
	  TakePartyItemNum("S!SHLD03",2) DestroyItem("S!SHLD03") DestroyItem("S!SHLD03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc04",1) NumItemsPartyGT("S!SHLD03",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80012
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc04",2) DestroyItem("rr#buc04") DestroyItem("rr#buc04")
	  TakePartyItemNum("S!SHLD03",1) DestroyItem("S!SHLD03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("rr#buc04",0) NumItemsPartyGT("S!SHLD03",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80013
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("rr#buc04",1) DestroyItem("rr#buc04")
	  TakePartyItemNum("S!SHLD03",2) DestroyItem("S!SHLD03") DestroyItem("S!SHLD03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!SHLD03",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80014
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!SHLD03",3) DestroyItem("S!SHLD03") DestroyItem("S!SHLD03") DestroyItem("S!SHLD03")
	  CreateItem("pxktarg4",0,0,0)
	  SetItemFlags("pxktarg4",IDENTIFIED,TRUE)
	  GiveItem("pxktarg4",LastTalkedToBy())~ GOTO Finish
	// TXT 1 — Trovador REO : hallebarde drow +3 traitée
	IF ~NumItemsPartyGT("halb12",1) NumItemsPartyGT("DTHALB01",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80015
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("halb12",2) DestroyItem("halb12") DestroyItem("halb12")
	  TakePartyItemNum("DTHALB01",1) DestroyItem("DTHALB01")
	  CreateItem("pxkhalb4",0,0,0)
	  SetItemFlags("pxkhalb4",IDENTIFIED,TRUE)
	  GiveItem("pxkhalb4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("halb12",0) NumItemsPartyGT("DTHALB01",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80016
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("halb12",1) DestroyItem("halb12")
	  TakePartyItemNum("DTHALB01",2) DestroyItem("DTHALB01") DestroyItem("DTHALB01")
	  CreateItem("pxkhalb4",0,0,0)
	  SetItemFlags("pxkhalb4",IDENTIFIED,TRUE)
	  GiveItem("pxkhalb4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DTHALB01",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80017
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DTHALB01",3) DestroyItem("DTHALB01") DestroyItem("DTHALB01") DestroyItem("DTHALB01")
	  CreateItem("pxkhalb4",0,0,0)
	  SetItemFlags("pxkhalb4",IDENTIFIED,TRUE)
	  GiveItem("pxkhalb4",LastTalkedToBy())~ GOTO Finish
	// TXT 1 — Trovador REO : lance drow +3 traitée
	IF ~NumItemsPartyGT("sper06",1) NumItemsPartyGT("DTSPER01",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80018
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sper06",2) DestroyItem("sper06") DestroyItem("sper06")
	  TakePartyItemNum("DTSPER01",1) DestroyItem("DTSPER01")
	  CreateItem("pxklanc4",0,0,0)
	  SetItemFlags("pxklanc4",IDENTIFIED,TRUE)
	  GiveItem("pxklanc4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sper06",0) NumItemsPartyGT("DTSPER01",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80019
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sper06",1) DestroyItem("sper06")
	  TakePartyItemNum("DTSPER01",2) DestroyItem("DTSPER01") DestroyItem("DTSPER01")
	  CreateItem("pxklanc4",0,0,0)
	  SetItemFlags("pxklanc4",IDENTIFIED,TRUE)
	  GiveItem("pxklanc4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DTSPER01",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80020
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DTSPER01",3) DestroyItem("DTSPER01") DestroyItem("DTSPER01") DestroyItem("DTSPER01")
	  CreateItem("pxklanc4",0,0,0)
	  SetItemFlags("pxklanc4",IDENTIFIED,TRUE)
	  GiveItem("pxklanc4",LastTalkedToBy())~ GOTO Finish
	// TXT 1 — Trovador REO : épée longue drow +3 traitée
	IF ~NumItemsPartyGT("sw1h73",1) NumItemsPartyGT("DTSW1H02",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80021
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",2) DestroyItem("sw1h73") DestroyItem("sw1h73")
	  TakePartyItemNum("DTSW1H02",1) DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h73",0) NumItemsPartyGT("TELSWD",0) NumItemsPartyGT("DTSW1H02",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80022
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",1) DestroyItem("sw1h73")
	  TakePartyItemNum("TELSWD",1) DestroyItem("TELSWD")
	  TakePartyItemNum("DTSW1H02",1) DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h73",0) NumItemsPartyGT("O#XANDB",0) NumItemsPartyGT("DTSW1H02",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80023
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",1) DestroyItem("sw1h73")
	  TakePartyItemNum("O#XANDB",1) DestroyItem("O#XANDB")
	  TakePartyItemNum("DTSW1H02",1) DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("sw1h73",0) NumItemsPartyGT("DTSW1H02",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80024
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("sw1h73",1) DestroyItem("sw1h73")
	  TakePartyItemNum("DTSW1H02",2) DestroyItem("DTSW1H02") DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("TELSWD",1) NumItemsPartyGT("DTSW1H02",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80025
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("TELSWD",2) DestroyItem("TELSWD") DestroyItem("TELSWD")
	  TakePartyItemNum("DTSW1H02",1) DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("TELSWD",0) NumItemsPartyGT("O#XANDB",0) NumItemsPartyGT("DTSW1H02",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80026
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("TELSWD",1) DestroyItem("TELSWD")
	  TakePartyItemNum("O#XANDB",1) DestroyItem("O#XANDB")
	  TakePartyItemNum("DTSW1H02",1) DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("TELSWD",0) NumItemsPartyGT("DTSW1H02",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80027
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("TELSWD",1) DestroyItem("TELSWD")
	  TakePartyItemNum("DTSW1H02",2) DestroyItem("DTSW1H02") DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("O#XANDB",0) NumItemsPartyGT("DTSW1H02",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80028
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("O#XANDB",1) DestroyItem("O#XANDB")
	  TakePartyItemNum("DTSW1H02",2) DestroyItem("DTSW1H02") DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DTSW1H02",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80029
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DTSW1H02",3) DestroyItem("DTSW1H02") DestroyItem("DTSW1H02") DestroyItem("DTSW1H02")
	  CreateItem("pxklong4",0,0,0)
	  SetItemFlags("pxklong4",IDENTIFIED,TRUE)
	  GiveItem("pxklong4",LastTalkedToBy())~ GOTO Finish
	// TXT 1 — Trovador REO : rondache drow +3 traitée
	IF ~NumItemsPartyGT("pxkrond3",1) NumItemsPartyGT("DTSHLD01",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80030
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkrond3",2) DestroyItem("pxkrond3") DestroyItem("pxkrond3")
	  TakePartyItemNum("DTSHLD01",1) DestroyItem("DTSHLD01")
	  CreateItem("pxkrond4",0,0,0)
	  SetItemFlags("pxkrond4",IDENTIFIED,TRUE)
	  GiveItem("pxkrond4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkrond3",0) NumItemsPartyGT("DTSHLD01",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80031
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkrond3",1) DestroyItem("pxkrond3")
	  TakePartyItemNum("DTSHLD01",2) DestroyItem("DTSHLD01") DestroyItem("DTSHLD01")
	  CreateItem("pxkrond4",0,0,0)
	  SetItemFlags("pxkrond4",IDENTIFIED,TRUE)
	  GiveItem("pxkrond4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DTSHLD01",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%80032
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DTSHLD01",3) DestroyItem("DTSHLD01") DestroyItem("DTSHLD01") DestroyItem("DTSHLD01")
	  CreateItem("pxkrond4",0,0,0)
	  SetItemFlags("pxkrond4",IDENTIFIED,TRUE)
	  GiveItem("pxkrond4",LastTalkedToBy())~ GOTO Finish
	// TXT 1 — Trovador REO : plates complètes drows +5 traitées
	IF ~NumItemsPartyGT("pxkplac5",1) NumItemsPartyGT("DTPLAT01",0) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%80033
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac5",2) DestroyItem("pxkplac5") DestroyItem("pxkplac5")
	  TakePartyItemNum("DTPLAT01",1) DestroyItem("DTPLAT01")
	  CreateItem("pxkplac6",0,0,0)
	  SetItemFlags("pxkplac6",IDENTIFIED,TRUE)
	  GiveItem("pxkplac6",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac5",0) NumItemsPartyGT("DTPLAT01",1) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%80034
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac5",1) DestroyItem("pxkplac5")
	  TakePartyItemNum("DTPLAT01",2) DestroyItem("DTPLAT01") DestroyItem("DTPLAT01")
	  CreateItem("pxkplac6",0,0,0)
	  SetItemFlags("pxkplac6",IDENTIFIED,TRUE)
	  GiveItem("pxkplac6",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DTPLAT01",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%80035
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DTPLAT01",3) DestroyItem("DTPLAT01") DestroyItem("DTPLAT01") DestroyItem("DTPLAT01")
	  CreateItem("pxkplac6",0,0,0)
	  SetItemFlags("pxkplac6",IDENTIFIED,TRUE)
	  GiveItem("pxkplac6",LastTalkedToBy())~ GOTO Finish


	// TXT 2 — Improved Anvil : Anneaux de protection +4
	IF ~NumItemsPartyGT("pxkanno4",1) NumItemsPartyGT("S!RING01",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82001
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno4",2) DestroyItem("pxkanno4") DestroyItem("pxkanno4")
	  TakePartyItemNum("S!RING01",1) DestroyItem("S!RING01")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno4",1) NumItemsPartyGT("S!RING07",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82002
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno4",2) DestroyItem("pxkanno4") DestroyItem("pxkanno4")
	  TakePartyItemNum("S!RING07",1) DestroyItem("S!RING07")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno4",0) NumItemsPartyGT("S!RING01",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82003
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno4",1) DestroyItem("pxkanno4")
	  TakePartyItemNum("S!RING01",2) DestroyItem("S!RING01") DestroyItem("S!RING01")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno4",0) NumItemsPartyGT("S!RING01",0) NumItemsPartyGT("S!RING07",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82004
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno4",1) DestroyItem("pxkanno4")
	  TakePartyItemNum("S!RING01",1) DestroyItem("S!RING01")
	  TakePartyItemNum("S!RING07",1) DestroyItem("S!RING07")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkanno4",0) NumItemsPartyGT("S!RING07",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82005
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkanno4",1) DestroyItem("pxkanno4")
	  TakePartyItemNum("S!RING07",2) DestroyItem("S!RING07") DestroyItem("S!RING07")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!RING01",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82006
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!RING01",3) DestroyItem("S!RING01") DestroyItem("S!RING01") DestroyItem("S!RING01")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!RING01",1) NumItemsPartyGT("S!RING07",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82007
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!RING01",2) DestroyItem("S!RING01") DestroyItem("S!RING01")
	  TakePartyItemNum("S!RING07",1) DestroyItem("S!RING07")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!RING01",0) NumItemsPartyGT("S!RING07",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82008
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!RING01",1) DestroyItem("S!RING01")
	  TakePartyItemNum("S!RING07",2) DestroyItem("S!RING07") DestroyItem("S!RING07")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!RING07",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82009
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!RING07",3) DestroyItem("S!RING07") DestroyItem("S!RING07") DestroyItem("S!RING07")
	  CreateItem("pxkanno5",0,0,0)
	  SetItemFlags("pxkanno5",IDENTIFIED,TRUE)
	  GiveItem("pxkanno5",LastTalkedToBy())~ GOTO Finish
	// TXT 2 — Improved Anvil : Cape de protection +3
	IF ~NumItemsPartyGT("pxkcape3",1) NumItemsPartyGT("S!CLCK02",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%82010
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcape3",2) DestroyItem("pxkcape3") DestroyItem("pxkcape3")
	  TakePartyItemNum("S!CLCK02",1) DestroyItem("S!CLCK02")
	  CreateItem("pxkcape4",0,0,0)
	  SetItemFlags("pxkcape4",IDENTIFIED,TRUE)
	  GiveItem("pxkcape4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcape3",0) NumItemsPartyGT("S!CLCK02",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%82011
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcape3",1) DestroyItem("pxkcape3")
	  TakePartyItemNum("S!CLCK02",2) DestroyItem("S!CLCK02") DestroyItem("S!CLCK02")
	  CreateItem("pxkcape4",0,0,0)
	  SetItemFlags("pxkcape4",IDENTIFIED,TRUE)
	  GiveItem("pxkcape4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!CLCK02",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%82012
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!CLCK02",3) DestroyItem("S!CLCK02") DestroyItem("S!CLCK02") DestroyItem("S!CLCK02")
	  CreateItem("pxkcape4",0,0,0)
	  SetItemFlags("pxkcape4",IDENTIFIED,TRUE)
	  GiveItem("pxkcape4",LastTalkedToBy())~ GOTO Finish
	// TXT 2 — Improved Anvil : Épée longue +4
	IF ~NumItemsPartyGT("pxklong4",1) NumItemsPartyGT("S!SW17",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82013
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklong4",2) DestroyItem("pxklong4") DestroyItem("pxklong4")
	  TakePartyItemNum("S!SW17",1) DestroyItem("S!SW17")
	  CreateItem("pxklong5",0,0,0)
	  SetItemFlags("pxklong5",IDENTIFIED,TRUE)
	  GiveItem("pxklong5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxklong4",0) NumItemsPartyGT("S!SW17",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82014
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklong4",1) DestroyItem("pxklong4")
	  TakePartyItemNum("S!SW17",2) DestroyItem("S!SW17") DestroyItem("S!SW17")
	  CreateItem("pxklong5",0,0,0)
	  SetItemFlags("pxklong5",IDENTIFIED,TRUE)
	  GiveItem("pxklong5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("S!SW17",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%82015
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("S!SW17",3) DestroyItem("S!SW17") DestroyItem("S!SW17") DestroyItem("S!SW17")
	  CreateItem("pxklong5",0,0,0)
	  SetItemFlags("pxklong5",IDENTIFIED,TRUE)
	  GiveItem("pxklong5",LastTalkedToBy())~ GOTO Finish


	// TXT 3 — MunchMod : Titanium Splint Mail +5, assimilée aux plates complètes +2
	IF ~NumItemsPartyGT("plat19",1) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84001
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",2) DestroyItem("plat19") DestroyItem("plat19")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",0) NumItemsPartyGT("plat23",0) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84002
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",1) DestroyItem("plat19")
	  TakePartyItemNum("plat23",1) DestroyItem("plat23")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",0) NumItemsPartyGT("plat15",0) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84003
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",1) DestroyItem("plat19")
	  TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",0) NumItemsPartyGT("BRUENPLA",0) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84004
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",1) DestroyItem("plat19")
	  TakePartyItemNum("BRUENPLA",1) DestroyItem("BRUENPLA")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat19",0) NumItemsPartyGT("SGSPLT1",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84005
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat19",1) DestroyItem("plat19")
	  TakePartyItemNum("SGSPLT1",2) DestroyItem("SGSPLT1") DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",1) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84006
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",2) DestroyItem("plat23") DestroyItem("plat23")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",0) NumItemsPartyGT("plat15",0) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84007
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",1) DestroyItem("plat23")
	  TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",0) NumItemsPartyGT("BRUENPLA",0) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84008
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",1) DestroyItem("plat23")
	  TakePartyItemNum("BRUENPLA",1) DestroyItem("BRUENPLA")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat23",0) NumItemsPartyGT("SGSPLT1",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84009
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat23",1) DestroyItem("plat23")
	  TakePartyItemNum("SGSPLT1",2) DestroyItem("SGSPLT1") DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat15",0) NumItemsPartyGT("BRUENPLA",0) NumItemsPartyGT("SGSPLT1",0) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84010
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  TakePartyItemNum("BRUENPLA",1) DestroyItem("BRUENPLA")
	  TakePartyItemNum("SGSPLT1",1) DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat15",0) NumItemsPartyGT("SGSPLT1",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84011
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat15",1) DestroyItem("plat15")
	  TakePartyItemNum("SGSPLT1",2) DestroyItem("SGSPLT1") DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("BRUENPLA",0) NumItemsPartyGT("SGSPLT1",1) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84012
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("BRUENPLA",1) DestroyItem("BRUENPLA")
	  TakePartyItemNum("SGSPLT1",2) DestroyItem("SGSPLT1") DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("SGSPLT1",2) %pxkc_gem_check_3% PartyGoldGT(%pxkc_threshold_3%)~ THEN REPLY @%pxkc_reply_prefix%84013
      DO ~TakePartyGold(%pxkc_price_3%) DestroyGold(%pxkc_price_3%) %pxkc_gem_take_3%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("SGSPLT1",3) DestroyItem("SGSPLT1") DestroyItem("SGSPLT1") DestroyItem("SGSPLT1")
	  CreateItem("pxkplac3",0,0,0)
	  SetItemFlags("pxkplac3",IDENTIFIED,TRUE)
	  GiveItem("pxkplac3",LastTalkedToBy())~ GOTO Finish
	// TXT 3 — Freedom : Mithril Chain Mail
	IF ~NumItemsPartyGT("pxkcott4",1) NumItemsPartyGT("DEITM053",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84014
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",2) DestroyItem("pxkcott4") DestroyItem("pxkcott4")
	  TakePartyItemNum("DEITM053",1) DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",0) NumItemsPartyGT("chan06",0) NumItemsPartyGT("DEITM053",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84015
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",1) DestroyItem("pxkcott4")
	  TakePartyItemNum("chan06",1) DestroyItem("chan06")
	  TakePartyItemNum("DEITM053",1) DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",0) NumItemsPartyGT("chan10",0) NumItemsPartyGT("DEITM053",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84016
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",1) DestroyItem("pxkcott4")
	  TakePartyItemNum("chan10",1) DestroyItem("chan10")
	  TakePartyItemNum("DEITM053",1) DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkcott4",0) NumItemsPartyGT("DEITM053",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84017
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkcott4",1) DestroyItem("pxkcott4")
	  TakePartyItemNum("DEITM053",2) DestroyItem("DEITM053") DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan06",0) NumItemsPartyGT("chan10",0) NumItemsPartyGT("DEITM053",0) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84018
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan06",1) DestroyItem("chan06")
	  TakePartyItemNum("chan10",1) DestroyItem("chan10")
	  TakePartyItemNum("DEITM053",1) DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan06",0) NumItemsPartyGT("DEITM053",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84019
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan06",1) DestroyItem("chan06")
	  TakePartyItemNum("DEITM053",2) DestroyItem("DEITM053") DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("chan10",0) NumItemsPartyGT("DEITM053",1) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84020
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("chan10",1) DestroyItem("chan10")
	  TakePartyItemNum("DEITM053",2) DestroyItem("DEITM053") DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DEITM053",2) %pxkc_gem_check_5% PartyGoldGT(%pxkc_threshold_5%)~ THEN REPLY @%pxkc_reply_prefix%84021
      DO ~TakePartyGold(%pxkc_price_5%) DestroyGold(%pxkc_price_5%) %pxkc_gem_take_5%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DEITM053",3) DestroyItem("DEITM053") DestroyItem("DEITM053") DestroyItem("DEITM053")
	  CreateItem("pxkcott5",0,0,0)
	  SetItemFlags("pxkcott5",IDENTIFIED,TRUE)
	  GiveItem("pxkcott5",LastTalkedToBy())~ GOTO Finish
	// TXT 3 — Freedom : The Black Plate
	IF ~NumItemsPartyGT("pxkplac3",1) NumItemsPartyGT("DEITM096",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%84022
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac3",2) DestroyItem("pxkplac3") DestroyItem("pxkplac3")
	  TakePartyItemNum("DEITM096",1) DestroyItem("DEITM096")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac3",0) NumItemsPartyGT("plat16",0) NumItemsPartyGT("DEITM096",0) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%84023
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac3",1) DestroyItem("pxkplac3")
	  TakePartyItemNum("plat16",1) DestroyItem("plat16")
	  TakePartyItemNum("DEITM096",1) DestroyItem("DEITM096")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxkplac3",0) NumItemsPartyGT("DEITM096",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%84024
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxkplac3",1) DestroyItem("pxkplac3")
	  TakePartyItemNum("DEITM096",2) DestroyItem("DEITM096") DestroyItem("DEITM096")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("plat16",0) NumItemsPartyGT("DEITM096",1) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%84025
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("plat16",1) DestroyItem("plat16")
	  TakePartyItemNum("DEITM096",2) DestroyItem("DEITM096") DestroyItem("DEITM096")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DEITM096",2) %pxkc_gem_check_4% PartyGoldGT(%pxkc_threshold_4%)~ THEN REPLY @%pxkc_reply_prefix%84026
      DO ~TakePartyGold(%pxkc_price_4%) DestroyGold(%pxkc_price_4%) %pxkc_gem_take_4%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DEITM096",3) DestroyItem("DEITM096") DestroyItem("DEITM096") DestroyItem("DEITM096")
	  CreateItem("pxkplac4",0,0,0)
	  SetItemFlags("pxkplac4",IDENTIFIED,TRUE)
	  GiveItem("pxkplac4",LastTalkedToBy())~ GOTO Finish


	// Complément TXT 3 — Freedom : lance de Paleon +5
	IF ~NumItemsPartyGT("pxklanc5",1) NumItemsPartyGT("DEITM075",0) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%86001
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklanc5",2) DestroyItem("pxklanc5") DestroyItem("pxklanc5")
	  TakePartyItemNum("DEITM075",1) DestroyItem("DEITM075")
	  CreateItem("pxklanc6",0,0,0)
	  SetItemFlags("pxklanc6",IDENTIFIED,TRUE)
	  GiveItem("pxklanc6",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("pxklanc5",0) NumItemsPartyGT("DEITM075",1) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%86002
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("pxklanc5",1) DestroyItem("pxklanc5")
	  TakePartyItemNum("DEITM075",2) DestroyItem("DEITM075") DestroyItem("DEITM075")
	  CreateItem("pxklanc6",0,0,0)
	  SetItemFlags("pxklanc6",IDENTIFIED,TRUE)
	  GiveItem("pxklanc6",LastTalkedToBy())~ GOTO Finish
	IF ~NumItemsPartyGT("DEITM075",2) %pxkc_gem_check_6% PartyGoldGT(%pxkc_threshold_6%)~ THEN REPLY @%pxkc_reply_prefix%86003
      DO ~TakePartyGold(%pxkc_price_6%) DestroyGold(%pxkc_price_6%) %pxkc_gem_take_6%
	  CreateVisualEffectObject("icccmdsi",myself)
	  TakePartyItemNum("DEITM075",3) DestroyItem("DEITM075") DestroyItem("DEITM075") DestroyItem("DEITM075")
	  CreateItem("pxklanc6",0,0,0)
	  SetItemFlags("pxklanc6",IDENTIFIED,TRUE)
	  GiveItem("pxklanc6",LastTalkedToBy())~ GOTO Finish

	IF ~~ THEN REPLY @14 EXIT
END

IF ~~ THEN BEGIN Finish
    SAY @13
	IF ~~ THEN EXIT
END