
capableMaster:=[];
# for j in [27,81,243,729,2187,6561] do
for j in [27,81,243,729,2187,6561] do
		Add(capableMaster,ValueGlobal(StringFormatted("Capable_{}",j)));
od;



i:=0;
offset:=0;
offset_old:=0;
order:=9;
step:=0;
heritage:=rec();
breakOuter:=false;


#TODO it makes sense to have a better idea of when the split happens i.e. if 20 <= i <= 40 then only load Capable_27 etc...

for group_order in capableMaster do
	order:=order*3;
	enum_unavailable:=ValueGlobal(StringFormatted("Enumerated_{}",order));
	step:=Length(FactorsInt(3^9)) - Length(FactorsInt(order));
	new:=true;
	Print(StringFormatted("######################Immediate Descendants of order {}#############\n",GRPS1024_Heritage(working)[1]));
	for group in group_order do

			offset:=i;
			i:=i+group[2];
			if order=27 then
				Print(StringFormatted("[{},{}]\n",1,1));
				continue;
			fi;
			
			if group[1] in enum_unavailable then
				# Print(new);
				if not new then
					Print(StringFormatted(",{}]\n",offset));
				fi;
				Print(StringFormatted("[{},{}] #enumerated immediate descendants of {}#{}\n",offset+1,i,order,group[1]));
				new:=true;
				continue;
			else 
				if new then
					Print(StringFormatted("[{}",offset+1));
					
					new := false;
				fi;
				continue;
			fi;

			
			# Print(StringFormatted("i = {}, ID = {}, Order = {}, Offset:={}, Next={}\n",i,group[1],order,offset,offset+group[2]));
			
			
			Print(StringFormatted(",{}]\n",offset));

	od;
od;
#################27################
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


