InstallGlobalFunction("ReloadGRPS39",function()
Print(RereadPackage("GRPS39/gap/GRPS39.gd"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.gi"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.g"),"\n");
end);

BindGlobal("GRPS39_AVAIL",5937876645);


InstallGlobalFunction("AvailableGroups19683Information",function()

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
local offset1,offset2,offset3,offset4,offset5,offset6,offset7,offset8,offset9,offset10,offset11,offset12,offset13,offset14,offset15,offset16,offset17,offset18,offset19,offset20,offset21,offset22,offset23,length1,length2,length3,length4,length5,length6,length7,length8,length9,length10,length11;

offset1:=66667;
offset2:=3676421905;
offset3:=87994384;
offset4:=117484863;
offset5:=18055761;
offset6:=30380660;
offset7:=1220110640;
offset8:=7042027;
offset9:=12715279;
offset10:=131;
offset11:=17096697;
offset12:=41048852;
offset13:=12732955;
offset14:=328132998;
offset15:=49569732;
offset16:=98929998;
offset17:=12740694;
offset18:=4255662;
offset19:=49815;
offset20:=1713;
offset21:=40;
offset22:=12;

length1:=1;
length2:=350663;
length3:=178696;
length4:=339985;
length5:=12120699;
length6:=4697223;
length7:=23370167;
length8:=21544829;
length9:=13267226;
length10:=6664971;
length11:=120510699;


if n <= length1 then
	return n;
elif n > length1 and n<=length1+length2 then
	return n+offset1;
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

InstallGlobalFunction("PrintClassificationTable39",function(start_id,end_id)
  local i, currentPClass, currentRank, currentParentGroupOrder, num_siblings, working, numDescendants;

# i:=1;
i:=start_id;
currentPClass:=0;
currentRank:=0;
currentParentGroupOrder:=0;

# while i <= end_id and i <= 5937876645 do
# while i < Minimum(end_id,GRPS39_AVAIL) do
# # while i <= 875133 do
# working:=SmallGroup(1024,GRPS39_AvailableMap(i));
# num_siblings:=NumDescendants(GRPS1024_Heritage(working)[1],GRPS1024_Heritage(working)[2]);
# # Print(StringFormatted("{} - {}\n",i,i+num_siblings-1));


# working:=SmallGroup(1024,AvailableMap(i));
# if not currentParentGroupOrder=GRPS1024_Heritage(working)[1] then
# 	if currentRank > 0 then
# 	Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));
# 	fi;

# 	Print(StringFormatted("######################Immediate Descendants of order {}#############\n",GRPS1024_Heritage(working)[1]));
# 	currentParentGroupOrder:=GRPS1024_Heritage(working)[1];
# 	currentRank:=RankPGroup(working);
# 	currentPClass:=PClassPGroup(working);

# 	Print(StringFormatted("Available Groups {}",i));
# 	numDescendants:=NumDescendants(GRPS1024_Heritage(working)[1],GRPS1024_Heritage(working)[2]);
# fi;

# if not currentRank = RankPGroup(working) or not currentPClass = PClassPGroup(working) or not currentParentGroupOrder = GRPS1024_Heritage(working)[1] then
# 	Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));

# 	currentRank:=RankPGroup(working);
# 	currentPClass:=PClassPGroup(working);

# 	# Print(StringFormatted("Group {} has rank {} and pclass {}\n",AvailableMap(i),currentRank,currentPClass));
# 	Print(StringFormatted("Available Groups {}",i));
# 	numDescendants:=NumDescendants(GRPS1024_Heritage(working)[1],GRPS1024_Heritage(working)[2]);
# fi;

# i:=i+num_siblings;
# od;


# 	working:=SmallGroup(1024,AvailableMap(end_id));
# 	currentRank:=RankPGroup(working);
# 	currentPClass:=PClassPGroup(working);
# 	Print(StringFormatted("-{} have rank {} and pclass {}\n",end_id,currentRank,currentPClass));


end);
