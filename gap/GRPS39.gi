InstallGlobalFunction("ReloadGRPS39",function()
Print(RereadPackage("GRPS39/gap/GRPS39.gd"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.gi"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.g"),"\n");
end);

BindGlobal("GRPS39_TOTAL",5937876645);
BindGlobal("GRPS39_AVAIL",203045160);


InstallGlobalFunction("AvailableGroups19683Information",function()
#######################Immediate Descendants of order 27#############
#Available Groups 1-1 have rank 3 and pclass 2
#######################Immediate Descendants of order 243#############
#Available Groups 2-12 have rank 2 and pclass 3
#Available Groups 13-350664 have rank 3 and pclass 3
#######################Immediate Descendants of order 729#############
#Available Groups 350665-350701 have rank 2 and pclass 4
#Available Groups 350702-581554 have rank 3 and pclass 3
#Available Groups 581555-12990044 have rank 4 and pclass 3
#######################Immediate Descendants of order 2187#############
#Available Groups 12990045-12990736 have rank 2 and pclass 4
#Available Groups 12990737-12994436 have rank 2 and pclass 5
#Available Groups 12994437-13374458 have rank 3 and pclass 3
#Available Groups 13374459-13564858 have rank 3 and pclass 4
#Available Groups 13564859-13569286 have rank 3 and pclass 5
#Available Groups 13569287-62464547 have rank 4 and pclass 3
#Available Groups 62464548-62602263 have rank 4 and pclass 4
#Available Groups 62602264-82534460 have rank 5 and pclass 3
#######################Immediate Descendants of order 6561#############
#Available Groups 82534461-82534461 have rank 1 and pclass 9
#Available Groups 82534462-82535151 have rank 2 and pclass 4
#Available Groups 82535152-82542502 have rank 2 and pclass 5
#Available Groups 82542503-82546628 have rank 2 and pclass 6
#Available Groups 82546629-82547612 have rank 2 and pclass 7
#Available Groups 82547613-82547620 have rank 2 and pclass 8
#Available Groups 82547621-82549225 have rank 3 and pclass 3
#Available Groups 82549226-85140112 have rank 3 and pclass 4
#Available Groups 85140113-85262450 have rank 3 and pclass 5
#Available Groups 85262451-85266440 have rank 3 and pclass 6
#Available Groups 85266441-85266465 have rank 3 and pclass 7
#Available Groups 85266466-87273520 have rank 4 and pclass 3
# Available Groups 87273521-101985068 have rank 4 and pclass 4
# Available Groups 101985069-102012675 have rank 4 and pclass 5
# Available Groups 102012676-102012725 have rank 4 and pclass 6


end);

InstallGlobalFunction("Groups19683Information",function()

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

InstallGlobalFunction("PrintClassificationTable39",function(start_id,end_id)
  local i, currentPClass, currentRank, currentParentGroupOrder, num_siblings, working, numDescendants;

# i:=1;
i:=start_id;
currentPClass:=0;
currentRank:=0;
currentParentGroupOrder:=0;

# while i <= end_id and i <= 5937876645 do
while i < Minimum(end_id,GRPS39_AVAIL) do
# # while i <= 875133 do
working:=SmallGroup(3^9,GRPS39_AvailableMap(i));
num_siblings:=GRPS39NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
# Print(StringFormatted("{} - {}\n",i,i+num_siblings-1));


# working:=SmallGroup(3^9,AvailableMap(i));
if not currentParentGroupOrder=GRPS39_Heritage(working)[1] then
	if currentRank > 0 then
	Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));
	fi;

	Print(StringFormatted("######################Immediate Descendants of order {}#############\n",GRPS39_Heritage(working)[1]));
	currentParentGroupOrder:=GRPS39_Heritage(working)[1];
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);

	Print(StringFormatted("Available Groups {}",i));
	numDescendants:=NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
fi;

if not currentRank = RankPGroup(working) or not currentPClass = PClassPGroup(working) or not currentParentGroupOrder = GRPS39_Heritage(working)[1] then
	Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));

	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);

	# Print(StringFormatted("Group {} has rank {} and pclass {}\n",AvailableMap(i),currentRank,currentPClass));
	Print(StringFormatted("Available Groups {}",i));
	numDescendants:=NumDescendants(GRPS39_Heritage(working)[1],GRPS39_Heritage(working)[2]);
fi;

i:=i+num_siblings;
od;


	working:=SmallGroup(3^9,GRPS39_AvailableMap(end_id));
	currentRank:=RankPGroup(working);
	currentPClass:=PClassPGroup(working);
	Print(StringFormatted("-{} have rank {} and pclass {}\n",end_id,currentRank,currentPClass));


end);
