InstallGlobalFunction("ReloadGRPS39",function()
Print(RereadPackage("GRPS39/gap/GRPS39.gd"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.gi"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.g"),"\n");
end);

BindGlobal("GRPS39_TOTAL",5937876645);
BindGlobal("GRPS39_AVAIL",203045160);


InstallGlobalFunction("AvailableGroups19683Information",function()
Print( "\n");
Print( "################ Available Groups Information ##################\n");
Print( "There are 203045160 available groups of order 19683\n\n");
Print( "################ Immediate Descendants of order 27 #############\n");
Print( "Available Groups 1-1 			have rank 3 and pclass 2\n\n");
Print( "################ Immediate Descendants of order 243 ############\n");
Print( "Available Groups 2-12 have 		rank 2 and pclass 3\n");
Print( "Available Groups 13-350664 		have rank 3 and pclass 3\n\n");
Print( "################ Immediate Descendants of order 729 ############\n");
Print( "Available Groups 350665-350701 		have rank 2 and pclass 4\n");
Print( "Available Groups 350702-581554 		have rank 3 and pclass 3\n");
Print( "Available Groups 581555-12990044 	have rank 4 and pclass 3\n\n");
Print( "################ Immediate Descendants of order 2187 ###########\n");
Print( "Available Groups 12990045-12990736 	have rank 2 and pclass 4\n");
Print( "Available Groups 12990737-12994436 	have rank 2 and pclass 5\n");
Print( "Available Groups 12994437-13374458 	have rank 3 and pclass 3\n");
Print( "Available Groups 13374459-13564858 	have rank 3 and pclass 4\n");
Print( "Available Groups 13564859-13569286 	have rank 3 and pclass 5\n");
Print( "Available Groups 13569287-62464547 	have rank 4 and pclass 3\n");
Print( "Available Groups 62464548-62602263 	have rank 4 and pclass 4\n");
Print( "Available Groups 62602264-82534460 	have rank 5 and pclass 3\n\n");
Print( "################ Immediate Descendants of order 6561 ###########\n");
Print( "Available Groups 82534461-82534461 	have rank 1 and pclass 9\n");
Print( "Available Groups 82534462-82535151 	have rank 2 and pclass 4\n");
Print( "Available Groups 82535152-82542502 	have rank 2 and pclass 5\n");
Print( "Available Groups 82542503-82546628 	have rank 2 and pclass 6\n");
Print( "Available Groups 82546629-82547612 	have rank 2 and pclass 7\n");
Print( "Available Groups 82547613-82547620 	have rank 2 and pclass 8\n");
Print( "Available Groups 82547621-82549225 	have rank 3 and pclass 3\n");
Print( "Available Groups 82549226-85140112 	have rank 3 and pclass 4\n");
Print( "Available Groups 85140113-85262450 	have rank 3 and pclass 5\n");
Print( "Available Groups 85262451-85266440 	have rank 3 and pclass 6\n");
Print( "Available Groups 85266441-85266465 	have rank 3 and pclass 7\n");
Print( "Available Groups 85266466-87273520 	have rank 4 and pclass 3\n");
Print( "Available Groups 87273521-101985068 	have rank 4 and pclass 4\n");
Print( "Available Groups 101985069-102012675 	have rank 4 and pclass 5\n");
Print( "Available Groups 102012676-102012725 	have rank 4 and pclass 6\n");
Print( "Available Groups 102012726-202463739 	have rank 5 and pclass 3\n");
Print( "Available Groups 202463740-202981757 	have rank 5 and pclass 4\n");
Print( "Available Groups 202981758-202981836 	have rank 5 and pclass 5\n");
Print( "Available Groups 202981837-203045042 	have rank 6 and pclass 3\n");
Print( "Available Groups 203045043-203045152 	have rank 6 and pclass 4\n");
Print( "Available Groups 203045153-203045159 	have rank 7 and pclass 3\n\n");
Print( "################ Immediate Descendants of the trivial group #####\n");
Print( "Available Group  203045160 		has rank 9 and pclass 1\n\n");
Print( "This library was created by David Burrell (2022).\n");

end);

InstallGlobalFunction("Groups19683Information",function()
Print( "\n");
Print( "###### Groups Information ###########################\n");
Print( "There are 5937876645 groups of order 19683\n");
Print( "They are sorted by parent group ID and then by the pccode of their standard presentations\n\n");
Print( "###### Immediate Descendants of order 27 ############\n");
Print( "Groups 1-1 have rank 3 and pclass 2 \n");
Print( "Groups 2-66668 have rank 4 and pclass 2 ## Unavailable Immediate Descendants of 81#15\n\n");
Print( "###### Immediate Descendants of order 243 ############\n");
Print( "Groups 66669-66679 have rank 2 and pclass 3\n");
Print( "Groups 66680-417331 have rank 3 and pclass 3 \n");
Print( "Groups 417332-3676839236 have rank 5 and pclass 2 ## Unavailable Immediate Descendants of 243#67\n\n");
Print( "###### Immediate Descendants of order 729 ############\n");
Print( "Groups 3676839237-3676839273 have rank 2 and pclass 4\n");
Print( "Groups 3676839274-3677017932 have rank 3 and pclass 3\n"); 
Print( "Groups 3677017933-3765012316 have rank 3 and pclass 3 ## Unavailable Immediate Descendants of 729#122\n");
Print( "Groups 3765012317-3765064510 have rank 3 and pclass 3\n");
Print( "Groups 3765064511-3765352301 have rank 4 and pclass 3 \n");
Print( "Groups 3765352302-3882837164 have rank 4 and pclass 3 ## Unavailable Immediate Descendants of 729#425\n");
Print( "Groups 3882837165-3900892925 have rank 4 and pclass 3 ## Unavailable Immediate Descendants of 729#440\n");
Print( "Groups 3900892926-3931273585 have rank 4 and pclass 3 ## Unavailable Immediate Descendants of 729#453\n");
Print( "Groups 3931273586-3943394284 have rank 4 and pclass 3 \n");
Print( "Groups 3943394285-5163504924 have rank 6 and pclass 2 ## Unavailable Immediate Descendants of 729#504\n\n");
Print( "###### Immediate Descendants of order 2187 ############\n");
Print( "Groups 5163504925-5163505616 have rank 2 and pclass 4\n");
Print( "Groups 5163505617-5163509316 have rank 2 and pclass 5\n");
Print( "Groups 5163509317-5163889338 have rank 3 and pclass 3\n");
Print( "Groups 5163889339-5164079738 have rank 3 and pclass 4\n");
Print( "Groups 5164079739-5164084166 have rank 3 and pclass 5\n");
Print( "Groups 5164084167-5168202147 have rank 4 and pclass 3\n");
Print( "Groups 5168202148-5175244174 have rank 4 and pclass 3 ## Unavailable Immediate Descendants of 2187#6044\n");
Print( "Groups 5175244175-5198614341 have rank 4 and pclass 3\n");
Print( "Groups 5198614342-5211329620 have rank 4 and pclass 3 ## Unavailable Immediate Descendants of 2187#6576\n");
Print( "Groups 5211329621-5232736733 have rank 4 and pclass 3\n");
Print( "Groups 5232736734-5232874449 have rank 4 and pclass 4\n");
Print( "Groups 5232874450-5232874580 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9093\n");
Print( "Groups 5232874581-5246141806 have rank 5 and pclass 3\n");
Print( "Groups 5246141807-5263238503 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9118\n");
Print( "Groups 5263238504-5304287355 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9121\n");
Print( "Groups 5304287356-5310952326 have rank 5 and pclass 3\n");
Print( "Groups 5310952327-5323685281 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9128\n");
Print( "Groups 5323685282-5651818279 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9131\n");
Print( "Groups 5651818280-5701388011 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9134\n");
Print( "Groups 5701388012-5800318009 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9135\n");
Print( "Groups 5800318010-5813058703 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9138\n");
Print( "Groups 5813058704-5817314365 have rank 5 and pclass 3 ## Unavailable Immediate Descendants of 2187#9140\n");
Print( "Groups 5817314366-5817364180 have rank 6 and pclass 3 ## Unavailable Immediate Descendants of 2187#9302\n");
Print( "Groups 5817364181-5817365893 have rank 7 and pclass 2 ## Unavailable Immediate Descendants of 2187#9310\n\n");
Print( "###### Immediate Descendants of order 6561 ############\n");
Print( "Groups 5817365894-5817365894 have rank 1 and pclass 9\n");
Print( "Groups 5817365895-5817366584 have rank 2 and pclass 4\n");
Print( "Groups 5817366585-5817373935 have rank 2 and pclass 5\n");
Print( "Groups 5817373936-5817378061 have rank 2 and pclass 6\n");
Print( "Groups 5817378062-5817379045 have rank 2 and pclass 7\n");
Print( "Groups 5817379046-5817379053 have rank 2 and pclass 8\n");
Print( "Groups 5817379054-5817380658 have rank 3 and pclass 3\n");
Print( "Groups 5817380659-5819971545 have rank 3 and pclass 4\n");
Print( "Groups 5819971546-5820093883 have rank 3 and pclass 5\n");
Print( "Groups 5820093884-5820097873 have rank 3 and pclass 6\n");
Print( "Groups 5820097874-5820097898 have rank 3 and pclass 7\n");
Print( "Groups 5820097899-5822104953 have rank 4 and pclass 3\n");
Print( "Groups 5822104954-5836816501 have rank 4 and pclass 4\n");
Print( "Groups 5836816502-5836844108 have rank 4 and pclass 5\n");
Print( "Groups 5836844109-5836844158 have rank 4 and pclass 6\n");
Print( "Groups 5836844159-5937295172 have rank 5 and pclass 3\n");
Print( "Groups 5937295173-5937813190 have rank 5 and pclass 4\n");
Print( "Groups 5937813191-5937813269 have rank 5 and pclass 5\n");
Print( "Groups 5937813270-5937876475 have rank 6 and pclass 3\n");
Print( "Groups 5937876476-5937876585 have rank 6 and pclass 4\n");
Print( "Groups 5937876586-5937876592 have rank 7 and pclass 3\n");
Print( "Groups 5937876593-5937876632 have rank 7 and pclass 3 ## Unavailable Immediate Descendants of 6561#1396068\n");
Print( "Groups 5937876633-5937876644 have rank 8 and pclass 2 ## Unavailable Immediate Descendants of 6561#1396077\n\n");
Print( "#####  Immediate Descendants of the trivial group ####\n");
Print( "Group  5937876645 	     has rank 9 and pclass 1\n\n");
Print( "This library was created by David Burrell (2022).\n");

end);

InstallGlobalFunction("GRPS39_CheckoutDescendants",function(parentGroup_Order,parentGroup_ID)
  local toRead, toReturn;

toRead:=StringFormatted("lib/Desc_{}/{}.g",parentGroup_Order,parentGroup_ID);
if ReadPackage("GRPS39",toRead) then
	toReturn:= ValueGlobal(StringFormatted("desc_{}_{}",parentGroup_Order,parentGroup_ID));
	return toReturn{[2..Length(toReturn)]};
else
	Info(InfoDebug,1,StringFormatted("The presentations of the immediate descendants of {}#{} are not available",parentGroup_Order,parentGroup_ID));
	return [];
fi;
end);

InstallGlobalFunction("CapableAndMissing",function()
  local capable_master, current, missing, toRead, order, id;

capable_master:=[Capable_3,Capable_9,Capable_27,Capable_81,Capable_243,Capable_729,Capable_2187,Capable_6561];

current:=1;
missing:=[];
for order in capable_master do
	current:=current*3;
		for id in order do
			toRead:=StringFormatted("lib/Desc_{}/{}.g",current,id[1]);
			if not ReadPackage("GRPS39",toRead) then
				Add(missing,[current,id]);
			fi;
		od;
od;

return missing;

end);

InstallGlobalFunction("GRPS39_AvailableMap",function(n)
  local offset1, offset2, offset3, offset4, offset5, offset6, offset7, offset8, offset9, offset10, offset11, offset12, offset13, offset14, offset15, offset16, offset17, offset18, offset19, offset20, offset21, offset22, length1, length2, length3, length4, length5, length6, length7, length8, length9, length10, length11, offsets, lengths;

#offsets correspond to missing ids in the ordering
# offset1:=66667;
# offset2:=3676421905;
# offset3:=87994384;
# offset4:=117484863;
# offset5:=18055761;
# offset6:=30380660;
# offset7:=1220110640;
# offset8:=7042027;
# offset9:=12715279;
# offset10:=131;
# offset11:=17096697;
# offset12:=41048852;
# offset13:=12732955;
# offset14:=328132998;
# offset15:=49569732;
# offset16:=98929998;
# offset17:=12740694;
# offset18:=4255662;
# offset19:=49815;
# offset20:=1713;
# offset21:=40;
# offset22:=12;

#lengths correspond to the lengths of the available indices


# length1:=1;
# length2:=350663;
# length3:=178696;
# length4:=339985;
# length5:=12120699;
# length6:=4697223;
# length7:=23370167;
# length8:=21544829;
# length9:=13267226;
# length10:=6664971;
# length11:=120510699;

offsets:=[ 66667, 3676421905, 87994384, 117484863, 18055761, 30380660, 1220110640, 7042027, 12715279, 131, 17096697, 41048852, 12732955, 328132998, 49569732, 98929998, 12740694, 4255662, 49815, 1713, 40, 12 ];

lengths:=[1, 350663, 178696, 339985, 12120699, 4697223, 23370167, 21544829, 13267226, 6664971, 120510699 ];

if n <= lengths[1] then
	return n;
elif n > lengths[1] and n <= Sum(lengths{[1..2]}) then
	return n+offsets[1];
elif n > Sum(lengths{[1..2]}) and n <= Sum(lengths{[1..3]}) then
	return n+Sum(offsets{[1..2]});
elif n > Sum(lengths{[1..3]}) and n <= Sum(lengths{[1..4]}) then
	return n+Sum(offsets{[1..3]});
elif n > Sum(lengths{[1..4]}) and n <= Sum(lengths{[1..5]}) then
	return n+Sum(offsets{[1..6]});
elif n > Sum(lengths{[1..5]}) and n <= Sum(lengths{[1..6]}) then
	return n+Sum(offsets{[1..7]});
elif n > Sum(lengths{[1..6]}) and n <= Sum(lengths{[1..7]}) then
	return n+Sum(offsets{[1..8]});
elif n > Sum(lengths{[1..7]}) and n <= Sum(lengths{[1..8]}) then
	return n+Sum(offsets{[1..9]});
elif n > Sum(lengths{[1..8]}) and n <= Sum(lengths{[1..9]}) then
	return n+Sum(offsets{[1..10]});
elif n > Sum(lengths{[1..9]}) and n <= Sum(lengths{[1..10]}) then
	return n+Sum(offsets{[1..12]});
elif n > Sum(lengths{[1..10]}) and n <= Sum(lengths{[1..11]}) then
	return n+Sum(offsets{[1..20]});
else
###### the only number to get here should be GRPS_TOTAL
	return GRPS39_TOTAL;
fi;
################27################
#[1,1]


#################81################
#[2,66668] #enumerated immediate descendants of 81#15

#################243################
#[66669,417331]

#[417332,3676839236] #enumerated immediate descendants of 243#67

#################729################
#[3676839237,3677017932]

#[3677017933,3765012316] #enumerated immediate descendants of 729#122

#[3765012317,3765352301]

#[3765352302,3882837164] #enumerated immediate descendants of 729#425
#[3882837165,3900892925] #enumerated immediate descendants of 729#440
#[3900892926,3931273585] #enumerated immediate descendants of 729#453

#[3931273586,3943394284]
#[3943394285,5163504924] #enumerated immediate descendants of 729#504

#################2187################
#[5163504925,5168202147]

#[5168202148,5175244174] #enumerated immediate descendants of 2187#6044

#[5175244175,5198614341]

#[5198614342,5211329620] #enumerated immediate descendants of 2187#6576

#[5211329621,5232874449]

#[5232874450,5232874580] #enumerated immediate descendants of 2187#9093

#[5232874581,5246141806]

#[5246141807,5263238503] #enumerated immediate descendants of 2187#9118
#[5263238504,5304287355] #enumerated immediate descendants of 2187#9121

#[5304287356,5310952326]

#[5310952327,5323685281] #enumerated immediate descendants of 2187#9128
#[5323685282,5651818279] #enumerated immediate descendants of 2187#9131
#[5651818280,5701388011] #enumerated immediate descendants of 2187#9134
#[5701388012,5800318009] #enumerated immediate descendants of 2187#9135
#[5800318010,5813058703] #enumerated immediate descendants of 2187#9138
#[5813058704,5817314365] #enumerated immediate descendants of 2187#9140
#[5817314366,5817364180] #enumerated immediate descendants of 2187#9302
#[5817364181,5817365893] #enumerated immediate descendants of 2187#9310

#################6561################

#[5817365894,5937876592]

#[5937876593,5937876632] #enumerated immediate descendants of 6561#1396068
#[5937876633,5937876644] #enumerated immediate descendants of 6561#1396077

end);

InstallGlobalFunction("GRPS39_InverseAvailableMap",function(n)
  local offsets, lengths;

offsets:=[ 66667, 3676421905, 87994384, 117484863, 18055761, 30380660, 1220110640, 7042027, 12715279, 131, 17096697, 41048852, 12732955, 328132998, 49569732, 98929998, 12740694, 4255662, 49815, 1713, 40, 12 ];

lengths:=[1, 350663, 178696, 339985, 12120699, 4697223, 23370167, 21544829, 13267226, 6664971, 120510699 ];

if n = 1 then 
return n;

elif n in [2..66668] then
#enumerated immediate descendants of 81#15
Print("This is an immediate descendant of 81#15 and is not available\n");
return 0;

elif n in [66669..417331] then 

return n-offsets[1];

elif n in [417332..3676839236] then
#enumerated immediate descendants of 243#67
Print("This is an immediate descendant of 243#67 and is not available\n");
return 0;

elif n in [3676839237..3677017932] then 

return n-Sum(offsets{[1..2]});

elif n in [3677017933..3765012316] then
#enumerated immediate descendants of 729#122
Print("This is an immediate descendant of 729#122 and is not available\n");
return 0;

elif n in [3765012317..3765352301] then 

return n-Sum(offsets{[1..3]});

elif n in [3765352302..3882837164] then
#enumerated immediate descendants of 729#425
Print("This is an immediate descendant of 729#425 and is not available\n");
return 0;
elif n in [3882837165..3900892925] then
#enumerated immediate descendants of 729#440
Print("This is an immediate descendant of 729#440 and is not available\n");
return 0;
elif n in [3900892926..3931273585] then
#enumerated immediate descendants of 729#453
Print("This is an immediate descendant of 729#453 and is not available\n");
return 0;
elif n in [3931273586..3943394284] then 

return n-Sum(offsets{[1..6]});

elif n in [3943394285..5163504924] then
#enumerated immediate descendants of 729#504
Print("This is an immediate descendant of 729#504 and is not available\n");
return 0;
elif n in [5163504925..5168202147] then 
return n-Sum(offsets{[1..7]});

elif n in [5168202148..5175244174] then
#enumerated immediate descendants of 2187#6044
Print("This is an immediate descendant of 2187#6044 and is not available\n");
return 0;
elif n in [5175244175..5198614341] then 

return n-Sum(offsets{[1..8]});
elif n in [5198614342..5211329620] then
#enumerated immediate descendants of 2187#6576
Print("This is an immediate descendant of 2187#6576 and is not available\n");
return 0;
elif n in [5211329621..5232874449] then 
return n-Sum(offsets{[1..9]});

elif n in [5232874450..5232874580] then
#enumerated immediate descendants of 2187#9093
Print("This is an immediate descendant of 2187#9093 and is not available\n");
return 0;
elif n in [5232874581..5246141806] then 

return n-Sum(offsets{[1..10]});
elif n in [5246141807..5263238503] then
#enumerated immediate descendants of 2187#9118
Print("This is an immediate descendant of 2187#9118 and is not available\n");
return 0;
elif n in [5263238504..5304287355] then
#enumerated immediate descendants of 2187#9121
Print("This is an immediate descendant of 2187#9121 and is not available\n");
return 0;
elif n in [5304287356..5310952326] then 
return n-Sum(offsets{[1..12]});

elif n in [5310952327..5323685281] then
#enumerated immediate descendants of 2187#9128
Print("This is an immediate descendant of 2187#9128 and is not available\n");
return 0;
elif n in [5323685282..5651818279] then
#enumerated immediate descendants of 2187#9131
Print("This is an immediate descendant of 2187#9131 and is not available\n");
return 0;
elif n in [5651818280..5701388011] then
#enumerated immediate descendants of 2187#9134
Print("This is an immediate descendant of 2187#9134 and is not available\n");
return 0;
elif n in [5701388012..5800318009] then
#enumerated immediate descendants of 2187#9135
Print("This is an immediate descendant of 2187#9135 and is not available\n");
return 0;
elif n in [5800318010..5813058703] then
#enumerated immediate descendants of 2187#9138
Print("This is an immediate descendant of 2187#9138 and is not available\n");
return 0;
elif n in [5813058704..5817314365] then
#enumerated immediate descendants of 2187#9140
Print("This is an immediate descendant of 2187#9140 and is not available\n");
return 0;
elif n in [5817314366..5817364180] then
#enumerated immediate descendants of 2187#9302
Print("This is an immediate descendant of 2187#9302 and is not available\n");
return 0;
elif n in [5817364181..5817365893] then
#enumerated immediate descendants of 2187#9310
Print("This is an immediate descendant of 2187#9310 and is not available\n");
return 0;
elif n in [5817365894..5937876592] then 
return n-Sum(offsets{[1..20]});

elif n in [5937876593..5937876632] then
#enumerated immediate descendants of 6561#1396068
Print("This is an immediate descendant of 6561#1396068 and is not available\n");
return 0;
elif n in [5937876633..5937876644] then
#enumerated immediate descendants of 6561#1396077

#enumerated immediate descendants of 6561#1396077
#################243################
#[66669,417331]

#[417332,3676839236] #enumerated immediate descendants of 243#67

#################729################
#[3676839237,3677017932]

#[3677017933,3765012316] #enumerated immediate descendants of 729#122

#[3765012317,3765352301]

#[3765352302,3882837164] #enumerated immediate descendants of 729#425
#[3882837165,3900892925] #enumerated immediate descendants of 729#440
#[3900892926,3931273585] #enumerated immediate descendants of 729#453

#[3931273586,3943394284]
#[3943394285,5163504924] #enumerated immediate descendants of 729#504

#################2187################
#[5163504925,5168202147]

#[5168202148,5175244174] #enumerated immediate descendants of 2187#6044

#[5175244175,5198614341]

#[5198614342,5211329620] #enumerated immediate descendants of 2187#6576

#[5211329621,5232874449]

#[5232874450,5232874580] #enumerated immediate descendants of 2187#9093

#[5232874581,5246141806]

#[5246141807,5263238503] #enumerated immediate descendants of 2187#9118
#[5263238504,5304287355] #enumerated immediate descendants of 2187#9121

#[5304287356,5310952326]

#[5310952327,5323685281] #enumerated immediate descendants of 2187#9128
#[5323685282,5651818279] #enumerated immediate descendants of 2187#9131
#[5651818280,5701388011] #enumerated immediate descendants of 2187#9134
#[5701388012,5800318009] #enumerated immediate descendants of 2187#9135
#[5800318010,5813058703] #enumerated immediate descendants of 2187#9138
#[5813058704,5817314365] #enumerated immediate descendants of 2187#9140
#[5817314366,5817364180] #enumerated immediate descendants of 2187#9302
#[5817364181,5817365893] #enumerated immediate descendants of 2187#9310

#################6561################

#[5817365894,5937876592]

#[5937876593,5937876632] #enumerated immediate descendants of 6561#1396068
#[5937876633,5937876644] #enumerated immediate descendants of 6561#1396077

# elif n > lengths[1] and n <= Sum(lengths{[1..2]}) then
# 	return n+offsets[1];
# elif n > Sum(lengths{[1..2]}) and n <= Sum(lengths{[1..3]}) then
# 	return n+Sum(offsets{[1..2]});
# elif n > Sum(lengths{[1..3]}) and n <= Sum(lengths{[1..4]}) then
# 	return n+Sum(offsets{[1..3]});
# elif n > Sum(lengths{[1..4]}) and n <= Sum(lengths{[1..5]}) then
# 	return n+Sum(offsets{[1..6]});
# elif n > Sum(lengths{[1..5]}) and n <= Sum(lengths{[1..6]}) then
# 	return n+Sum(offsets{[1..7]});
# elif n > Sum(lengths{[1..6]}) and n <= Sum(lengths{[1..7]}) then
# 	return n+Sum(offsets{[1..8]});
# elif n > Sum(lengths{[1..7]}) and n <= Sum(lengths{[1..8]}) then
# 	return n+Sum(offsets{[1..9]});
# elif n > Sum(lengths{[1..8]}) and n <= Sum(lengths{[1..9]}) then
# 	return n+Sum(offsets{[1..10]});
# elif n > Sum(lengths{[1..9]}) and n <= Sum(lengths{[1..10]}) then
# 	return n+Sum(offsets{[1..12]});
# elif n > Sum(lengths{[1..10]}) and n <= Sum(lengths{[1..11]}) then
# 	return n+Sum(offsets{[1..20]});
# else
###### the only number to get here should be GRPS_TOTAL
elif n = GRPS39_TOTAL then
	return n;
else
#
Error(StringFormatted("There are only {} groups of order 19683\n",GRPS39_TOTAL));
# return 0;
fi;

end);

InstallGlobalFunction("GRPS39NumDescendants",function(parentGroup_Order,parentGroup_ID)
local capableMaster,toRead,entry;

capableMaster:=ValueGlobal(StringFormatted("Capable_{}",parentGroup_Order));;

for entry in capableMaster do
	if entry[1] = parentGroup_ID then
		return entry[2];
	fi;
od;

return 0;

# if parentGroup_ID in capableMaster then
# 	return capableMaster[Position(capableMaster,parentGroup_ID)][2];
# else
# 	return 0;
# fi;



end);

InstallGlobalFunction("PrintAvailableClassificationTable39",function(start_id,end_id)
  local i, currentPClass, currentRank, currentParentGroupOrder, num_siblings, working, numDescendants,finalFlag,enumeratedFlag,currentParentGroupID;

# i:=1;
i:=start_id;
currentPClass:=0;
currentRank:=0;
currentParentGroupOrder:=0;
currentParentGroupID:=0;
enumeratedFlag:=false;
finalFlag:=false;


if end_id = GRPS39_AVAIL then
	end_id:=end_id-1;
	finalFlag := true;
fi;

while i <= Minimum(end_id,GRPS39_AVAIL) do

working:=SmallGroup(3^9,GRPS39_AvailableMap(i));
enumeratedFlag:=false;

if GRPS39_Heritage(working)[1] > 9 and GRPS39_Heritage(working)[2] in ValueGlobal(StringFormatted("Enumerated_{}",GRPS39_Heritage(working)[1])) then
enumeratedFlag:=true;
fi;
	
num_siblings:=GRPS39NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
# Print(StringFormatted("{} - {}\n",i,i+num_siblings-1));


# working:=SmallGroup(3^9,AvailableMap(i));
if not currentParentGroupOrder=GRPS39_Heritage(working)[1] then
	if currentRank > 0 then
		if not enumeratedFlag then
			Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));
		else
			Print(StringFormatted("-{} have rank {} and pclass {}###########Enumerated\n",i-1,currentRank,currentPClass));

		fi;
	fi;

	Print(StringFormatted("######################Immediate Descendants of order {}#############\n",GRPS39_Heritage(working)[1]));
	currentParentGroupOrder:=GRPS39_Heritage(working)[1];

	currentParentGroupID:=GRPS39_Heritage(working)[2];

	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);

	Print(StringFormatted("Available Groups {}",i));
	# numDescendants:=NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
	# num_:=NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
fi;

if not currentRank = RankPGroup(working) or not currentPClass = PClassPGroup(working) or not currentParentGroupOrder = GRPS39_Heritage(working)[1] then
	if not enumeratedFlag then
		Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));
	else
		Print(StringFormatted("-{} have rank {} and pclass {}\n#########",i-1,currentRank,currentPClass));
	fi;

	currentParentGroupID:=GRPS39_Heritage(working)[2];
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);

	# Print(StringFormatted("Group {} has rank {} and pclass {}\n",AvailableMap(i),currentRank,currentPClass));
	Print(StringFormatted("Available Groups {}",i));
	# numDescendants:=NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
fi;

i:=i+num_siblings;
od;

# if not end_id
	working:=SmallGroup(3^9,GRPS39_AvailableMap(end_id));
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);
	Print(StringFormatted("-{} have rank {} and pclass {}\n",end_id,currentRank,currentPClass));

if finalFlag then
	working:=SmallGroup(3^9,GRPS39_AvailableMap(GRPS39_AVAIL));
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);
	Print( "###############  Immediate Descendants of the trivial group  ####\n");
	Print(StringFormatted("Available Group {} has rank {} and pclass {}\n",end_id,currentRank,currentPClass));

fi;

end);

InstallGlobalFunction("PrintClassificationTable39",function(start_id,end_id)
  local i, currentPClass, currentRank, currentParentGroupOrder, num_siblings, working, numDescendants,finalFlag,enumeratedFlag,currentParentGroupID;

# i:=1;
i:=start_id;
currentPClass:=0;
currentRank:=0;
currentParentGroupOrder:=0;
currentParentGroupID:=0;
enumeratedFlag:=false;
finalFlag:=false;

if end_id = GRPS39_TOTAL then
	end_id:=end_id-1;
	finalFlag := true;
fi;

while i <= Minimum(end_id,GRPS39_TOTAL) do

working:=SmallGroup(3^9,i);
# enumeratedFlag:=false;
# if enumeratedFlag then
# 	Print(StringFormatted("\nGroups {}",i));
# 	enumeratedFlag:= false;	
# fi;

if GRPS39_Heritage(working)[1] > 9 and GRPS39_Heritage(working)[2] in ValueGlobal(StringFormatted("Enumerated_{}",GRPS39_Heritage(working)[1])) then
#we finish off the last ones
	if not enumeratedFlag then
			Print(StringFormatted("-{} have rank {} and pclass {} \n",i-1,currentRank,currentPClass));
	 fi;

	currentParentGroupOrder:=GRPS39_Heritage(working)[1];

	currentParentGroupID:=GRPS39_Heritage(working)[2];

	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);
	numDescendants:=GRPS39NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);

	Print(StringFormatted("Groups {}-{} have rank {} and pclass {} ## not available parent group {}#{}\n",i,i+numDescendants-1,currentRank,currentPClass,currentParentGroupOrder,currentParentGroupID));
#there are 2 issues one is if i+numDescendants has the same rank and p-class as the enumerated one
#	skip printing this if it is the last group for that order	
	if not currentParentGroupID = NumberSmallGroups(currentParentGroupOrder) then
		# if 
			working:=SmallGroup(3^9,i+numDescendants);
			if not (GRPS39_Heritage(working)[1] > 9 and GRPS39_Heritage(working)[2] in ValueGlobal(StringFormatted("Enumerated_{}",GRPS39_Heritage(working)[1]))) then
 				Print(StringFormatted("Groups {}",i+numDescendants));
			fi;
	fi;

#we now print the info for the enumerated ones

enumeratedFlag:=true;
i:=i+numDescendants;
continue;

fi;

	
num_siblings:=GRPS39NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);


# working:=SmallGroup(3^9,AvailableMap(i));
if not currentParentGroupOrder=GRPS39_Heritage(working)[1] then
	if currentRank > 0 then
		if not enumeratedFlag then
			Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));
		fi;
	fi;

	Print(StringFormatted("######################Immediate Descendants of order {}#############\n",GRPS39_Heritage(working)[1]));
	currentParentGroupOrder:=GRPS39_Heritage(working)[1];

	currentParentGroupID:=GRPS39_Heritage(working)[2];

	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);

	Print(StringFormatted("Groups {}",i));
fi;

if not currentRank = RankPGroup(working) or not currentPClass = PClassPGroup(working) or not currentParentGroupOrder = GRPS39_Heritage(working)[1] then

		Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));

	currentParentGroupID:=GRPS39_Heritage(working)[2];
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);

	Print(StringFormatted("Groups {}",i));
fi;

i:=i+num_siblings;
enumeratedFlag:=false;
od;

# if not end_id
	working:=SmallGroup(3^9,GRPS39_AvailableMap(end_id));
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);
	Print(StringFormatted("-{} have rank {} and pclass {}\n",end_id,currentRank,currentPClass));

if finalFlag then
	working:=SmallGroup(3^9,GRPS39_TOTAL);
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);
	Print( "###############  Immediate Descendants of the trivial group  ####\n");
	Print(StringFormatted("Group {} has rank {} and pclass {}\n",GRPS39_TOTAL,currentRank,currentPClass));

fi;

end);

InstallGlobalFunction("GRPS39_ImmediateDescendantGroupShell", function()
# InstallGlobalFunction( SubmagmaWithInversesNC, function( M, gens )
  local group_shell, S;

	group_shell:=NewType(FamilyObj([]),IsGroup and IsAttributeStoringRep and IsFinitelyGeneratedGroup and IsFinite);

	# S:=rec();
	S:=Objectify(group_shell,rec());
	return S;
    # local K, S;

    # # if IsEmpty( gens ) then
    #   K:= NewType( FamilyObj(M),
    #                    IsMagmaWithInverses
    #                and IsTrivial
    #                and IsAttributeStoringRep
    #                and HasGeneratorsOfMagmaWithInverses);
    #   S:=rec();
    #   ObjectifyWithAttributes(S, K, GeneratorsOfMagmaWithInverses, [] );
    # # else
    # #   S:= MagmaWithInversesByGenerators(gens);
    # # fi;
    # # SetParent( S, M );
    # # SetIsElementaryAbelian(S,false);
    # return S;
end );

InstallGlobalFunction("GRPS39_FixGroupDescendants",function(order,id)

local step,toReturn,desc;

step:=9-PrimePowersInt(order)[2];

desc:=List(PqDescendants(SmallGroup(order,id):StepSize:=step),x->CodePcGroup(x));

toReturn:=[Length(desc)];
Append(toReturn,desc);
PrintTo(StringFormatted("{}.g",id),StringFormatted("desc_{}_{}:={};",order,id,toReturn));
PrintFormatted("File {}.g has been saved, move it to lib/Desc_{}/",id,order);
# return toReturn


end);

