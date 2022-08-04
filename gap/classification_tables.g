# InstallGlobalFunction("PrintClassificationTable",function(start_id,end_id,order)

# local working,i,currentPClass,currentRank;

# i:=start_id;
start_id:=1;
# orders:=[3,9,27,81,243,729,2187,6561];
orders:=[6561];
# orders:=[3,9,27,81,243,729,2187];
for order in orders do
# order:=9;
	Print(StringFormatted("\n############# Available Groups of order {} #############\n",order));

	end_id:=NumberSmallGroups(order);
	i:=start_id;
	currentPClass:=0;
	currentRank:=0;
        currentParentGroupOrder:=0;

	# while i <= end_id and i <= 683875133 do
	# while i < Minimum(end_id,GRPS1024_AVAIL) do
	while i <= end_id do
	# while i <= 875133 do
	working:=SmallGroup(order,i);
	# num_siblings:=NumDescendants(Heritage(working)[1],Heritage(working)[2]);
	# Print(StringFormatted("{} - {}\n",i,i+num_siblings-1));


	# working:=SmallGroup(1024,AvailableMap(i));
	if not currentParentGroupOrder=Heritage(working)[1] then
		if currentRank > 0 then
		Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));
		fi;

		Print(StringFormatted("######################Immediate Descendants of order {}#############\n",Heritage(working)[1]));
		currentParentGroupOrder:=Heritage(working)[1];
		currentRank:=RankPGroup(working);
		currentPClass:=PClassPGroup(working);

		Print(StringFormatted("Available Groups {}",i));
		numDescendants:=NumDescendants(Heritage(working)[1],Heritage(working)[2]);
	fi;

	if not currentRank = RankPGroup(working) or not currentPClass = PClassPGroup(working) then
		
		if not currentRank = 0 then 
		Print(StringFormatted("-{} have rank {} and pclass {}\n",i-1,currentRank,currentPClass));

		fi;

		currentRank:=RankPGroup(working);
		currentPClass:=PClassPGroup(working);

		# Print(StringFormatted("Group {} has rank {} and pclass {}\n",AvailableMap(i),currentRank,currentPClass));
		Print(StringFormatted("Available Groups {}",i));
		# numDescendants:=NumDescendants(Heritage(working)[1],Heritage(working)[2]);
	fi;

	i:=i+1;
	od;


		working:=SmallGroup(order,end_id);
		currentRank:=RankPGroup(working);
		currentPClass:=PClassPGroup(working);
		Print(StringFormatted("-{} have rank {} and pclass {}\n",end_id,currentRank,currentPClass));




od;

# ############# Groups of order 3 #############
# Groups 1-1 have rank 1 and pclass 1

# ############# Groups of order 9 #############
# Groups 1-1 have rank 1 and pclass 2
# Groups 2-2 have rank 2 and pclass 1

# ############# Groups of order 27 #############
# Groups 1-1 have rank 1 and pclass 3
# Groups 2-4 have rank 2 and pclass 2
# Groups 5-5 have rank 3 and pclass 1

# ############# Groups of order 81 #############
# Groups 1-1 have rank 1 and pclass 4
# Groups 2-4 have rank 2 and pclass 2
# Groups 5-10 have rank 2 and pclass 3
# Groups 11-14 have rank 3 and pclass 2
# Groups 15-15 have rank 4 and pclass 1

# ############# Groups of order 243 #############
# Groups 1-1 have rank 1 and pclass 5
# Groups 2-2 have rank 2 and pclass 2
# Groups 3-22 have rank 2 and pclass 3
# Groups 23-30 have rank 2 and pclass 4
# Groups 31-47 have rank 3 and pclass 2
# Groups 48-60 have rank 3 and pclass 3
# Groups 61-66 have rank 4 and pclass 2
# Groups 67-67 have rank 5 and pclass 1

# ############# Groups of order 729 #############
# Groups 1-1 have rank 1 and pclass 6
# Groups 2-33 have rank 2 and pclass 3
# Groups 34-92 have rank 2 and pclass 4
# Groups 93-101 have rank 2 and pclass 5
# Groups 102-137 have rank 3 and pclass 2
# Groups 138-390 have rank 3 and pclass 3
# Groups 391-414 have rank 3 and pclass 4
# Groups 415-474 have rank 4 and pclass 2
# Groups 475-496 have rank 4 and pclass 3
# Groups 497-503 have rank 5 and pclass 2
# Groups 504-504 have rank 6 and pclass 1

# ############# Groups of order 2187 #############
# Groups 1-1 have rank 1 and pclass 7
# Groups 2-63 have rank 2 and pclass 3
# Groups 64-223 have rank 2 and pclass 4
# Groups 224-383 have rank 2 and pclass 5
# Groups 384-391 have rank 2 and pclass 6
# Groups 392-408 have rank 3 and pclass 2
# Groups 409-4675 have rank 3 and pclass 3
# Groups 4676-5840 have rank 3 and pclass 4
# Groups 5841-5865 have rank 3 and pclass 5
# Groups 5866-7226 have rank 4 and pclass 2
# Groups 7227-9042 have rank 4 and pclass 3
# Groups 9043-9092 have rank 4 and pclass 4
# Groups 9093-9270 have rank 5 and pclass 2
# Groups 9271-9300 have rank 5 and pclass 3
# Groups 9301-9309 have rank 6 and pclass 2
# Groups 9310-9310 have rank 7 and pclass 1

# ############# Groups of order 6561 #############
# Groups 1-1 have rank 1 and pclass 8
# Groups 2-59 have rank 2 and pclass 3
# Groups 60-545 have rank 2 and pclass 4
# Groups 546-1888 have rank 2 and pclass 5
# Groups 1889-2218 have rank 2 and pclass 6
# Groups 2219-2227 have rank 2 and pclass 7
# Groups 2228-2231 have rank 3 and pclass 2
# Groups 2232-218978 have rank 3 and pclass 3
# Groups 218979-259499 have rank 3 and pclass 4
# Groups 259500-261662 have rank 3 and pclass 5
# Groups 261663-261686 have rank 3 and pclass 6
# Groups 261687-285047 have rank 4 and pclass 2
# Groups 285048-779713 have rank 4 and pclass 3
# Groups 779714-802056 have rank 4 and pclass 4
# Groups 802057-802107 have rank 4 and pclass 5
# Groups 802108-1380585 have rank 5 and pclass 2
# Groups 1380586-1395381 have rank 5 and pclass 3
# Groups 1395382-1395461 have rank 5 and pclass 4
# Groups 1395462-1396027 have rank 6 and pclass 2
# Groups 1396028-1396066 have rank 6 and pclass 3
# Groups 1396067-1396076 have rank 7 and pclass 2
# Groups 1396077-1396077 have rank 8 and pclass 1

