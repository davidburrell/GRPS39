
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

#1 immediate descendant of 27#5
#2-66668 immediate descendants of 81#15
#66669-66679 immediate descendants of 243#2
#66680-417331 immediate descendnats of 243#37
#417332-3676839236 immediate descendants of 243#67 unavailable
#33676839237-3676839273 immediate descendants of 729#9
#

#TODO it makes sense to have a better idea of when the split happens i.e. if 20 <= i <= 40 then only load Capable_27 etc...

for group_order in capableMaster do
	order:=order*3;
	enum_unavailable:=ValueGlobal(StringFormatted("Enumerated_{}",order));
	step:=Length(FactorsInt(3^9)) - Length(FactorsInt(order));
	new:=true;
	Print(StringFormatted("\n################{}################\n",order));
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

