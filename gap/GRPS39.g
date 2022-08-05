layer_3_9 := Length(SMALL_AVAILABLE_FUNCS)+1;

pos_3_9:= Maximum(List([
        SMALL_GROUP_FUNCS,
        SMALL_GROUPS_INFORMATION,
        NUMBER_SMALL_GROUPS_FUNCS,
        ID_GROUP_FUNCS,
        SELECT_SMALL_GROUPS_FUNCS,
    ], Length)) + 1;


SMALL_AVAILABLE_FUNCS[layer_3_9] := function( size )
    if size = 19683 then
        return rec (
            lib := layer_3_9,
            func := pos_3_9,
            number := 5937876645);
    fi;
    return fail;
end;


ID_AVAILABLE_FUNCS[layer_3_9] := function( size )
    return fail;

end;


SMALL_GROUP_FUNCS[ pos_3_9 ] := function( size, n, inforec )
  local capableMaster, toRead, offset, order, step, parent_ID, parent_Order, heritage, toReturn, j, group_order, group, i,breakOuter,parent,enum_unavailable,initialLook,partial_construct;

    if n > inforec.number then 
        Error("there are just ",inforec.number," groups of order ",size );
    fi;

    if n <= inforec.number then
	# capableMaster:=[];
	# toRead:=StringFormatted("gap/CapableList3_256.g");

	#if ReadPackage("GRPS1024",toRead) then
	#	for j in [16,32,64,128,256] do
	#		Add(capableMaster,ValueGlobal(StringFormatted("Capable_{}",j)));
	#od;
	#fi;
	# for j in [27,81,243,729,2187,6561] do
	# 		Add(capableMaster,ValueGlobal(StringFormatted("Capable_{}",j)));
	# od;


	i:=0;
	offset:=0;
	order:=9;
	step:=0;
	heritage:=rec();
	breakOuter:=false;

if n = 1 then
#################27################
#[1,1]
i:=0;
order:=27;

elif n <= 66668 then
#################81################
#[2,66668] #enumerated immediate descendants of 81#15
i:=1;
order:=81;
# offset:=1;

elif n <= 3676839236 then
#################243################
#[66669,417331]
#[417332,3676839236] #enumerated immediate descendants of 243#67
i:=66668;
order:=243;

elif n<= 5163504924 then
#################729################
#[3676839237,3677017932]
#[3677017933,3765012316] #enumerated immediate descendants of 729#122
#[3765012317,3765352301]
#[3765352302,3882837164] #enumerated immediate descendants of 729#425
#[3882837165,3900892925] #enumerated immediate descendants of 729#440
#[3900892926,3931273585] #enumerated immediate descendants of 729#453
#[3931273586,3943394284]
#[3943394285,5163504924] #enumerated immediate descendants of 729#504
i:=3676839236;
order:=729;

elif n<= 5817365893 then
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
i:=5163504924;
order:=2187;

elif n<= 5937876644 then
#################6561################
#[5817365894,5937876592]
#[5937876593,5937876632] #enumerated immediate descendants of 6561#1396068
#[5937876633,5937876644] #enumerated immediate descendants of 6561#1396077
i:=5817365893;
order:=6561;

else
#n = 5937876645 then
#this is the elementary abelian group of order 3^9
		# toReturn:=ElementaryAbelianGroup(1024);
		# SetGRPS1024_Heritage(toReturn,[1,1,1]);

		# return toReturn;
	toReturn:=ElementaryAbelianGroup(3^9);
	SetGRPS39_Heritage(toReturn,[1,1,1]);

		# return ElementaryAbelianGroup(3^9);
	return toReturn;
fi;

	# 		Add(capableMaster,ValueGlobal(StringFormatted("Capable_{}",j)));
capableMaster:=ValueGlobal(StringFormatted("Capable_{}",order));
#TODO it makes sense to have a better idea of when the split happens i.e. if 20 <= i <= 40 then only load Capable_27 etc...
	# for group_order in capableMaster do
		# order:=order*3;
enum_unavailable:=ValueGlobal(StringFormatted("Enumerated_{}",order));
step:=Length(FactorsInt(3^9)) - Length(FactorsInt(order));
# Print(StringFormatted("for group_order# {},{}\n",i,offset));
# initialLook:=true;

for group in capableMaster do


	offset:=i;
	i:=i+group[2];

#the first time that i is greater than our number we have found our parent id
			if i >= n then
#n-offset is the position in the ordered list of descendants
#we are looking for i.e. the age of the nth group among its
#siblings

	heritage.ID:=group[1];
	heritage.Order:=order;
	heritage.Age:=n-offset;

	if group[1] in enum_unavailable then
		# Print(StringFormatted("Presentations Unvailable for {}#{}\n",order,group[1]));
		partial_construct:=NewType(FamilyObj(TrivialGroup()),
				       IsMagmaWithInverses
				   and IsTrivial
				   and IsAttributeStoringRep
				   and HasGeneratorsOfMagmaWithInverses);
		      toReturn:=rec();
		      ObjectifyWithAttributes(toReturn, partial_construct, GeneratorsOfMagmaWithInverses, [] );




	parent:=SmallGroup(heritage.Order,heritage.ID);

	SetGRPS39_Heritage(toReturn,[heritage.Order,heritage.ID,heritage.Age]);
	SetPClassPGroup(toReturn,PClassPGroup(parent)+1);
	SetRankPGroup(toReturn,RankPGroup(parent));
	SetOrder(toReturn,3^9);

	return toReturn;

	fi;

	if not IsBound(SMALL_GROUP_LIB[3^9]) then
		SMALL_GROUP_LIB[3^9]:=[];
	fi;

	if not IsBound(SMALL_GROUP_LIB[3^9][heritage.Order]) then
		SMALL_GROUP_LIB[3^9][heritage.Order]:=[];
	fi;

	if not IsBound(SMALL_GROUP_LIB[3^9][heritage.Order][heritage.ID]) then
		SMALL_GROUP_LIB[3^9][heritage.Order][heritage.ID]:=GRPS39_CheckoutDescendants(heritage.Order,heritage.ID);
	fi;

	toReturn:=PcGroupCode(SMALL_GROUP_LIB[3^9][heritage.Order][heritage.ID][heritage.Age],size);

	SetGRPS39_Heritage(toReturn,[heritage.Order,heritage.ID,heritage.Age]);
	
	parent:=SmallGroup(heritage.Order,heritage.ID);
	SetPClassPGroup(toReturn,PClassPGroup(parent)+1);
	SetRankPGroup(toReturn,RankPGroup(parent));
	
	return toReturn ;
else
	continue;
fi;
od;

	return [size,n,inforec];

	fi;
end;

# Method for selecting a subset of the groups which have a given list of properties, i.e. IsAbelian, IsNilpotent
SELECT_SMALL_GROUPS_FUNCS[ pos_3_9 ] := SELECT_SMALL_GROUPS_FUNCS[ 11 ];


# Method for SmallGroupsInformation(size):
# Inorder for this method to work lines 31-34 pkg/SmallGrp-1.5/gap/smlinfo.gi need to commented out
#
SMALL_GROUPS_INFORMATION[ pos_3_9 ] := function( size, inforec, num )

AvailableGroups19683Information();
# Groups1024Information();

end;

