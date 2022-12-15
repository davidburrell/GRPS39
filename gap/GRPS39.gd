#
# GROUPS39:  
#
#! @Chapter Groups of Order 19683
#! @Section Overview
#!
#!
#! This library gives complete access to the following groups of order 19683:
#! * The rank 1 group
#! * All rank 2 groups
#! * All rank 3 groups with p-class not equal to 3
#! * All rank 4 groups with p-class at least 4
#! * All rank 5 groups with p-class at least 4
#! * All rank 6 groups with p-class at least 4
#! * All rank 7 groups with p-class at least 4
#! * All rank 8 groups with p-class at least 3
#! * The rank 9 group
#!
#! This library gives partial information on the remaining groups of order 19683:
#!
#! * Rank 3 groups with p-class 3 
#! * Rank 4 groups with p-class 2
#! * Rank 4 groups with p-class 3
#! * Rank 5 groups with p-class 2
#! * Rank 5 groups with p-class 3
#! * Rank 6 groups with p-class 2
#! * Rank 6 groups with p-class 3
#! * Rank 7 groups with p-class 2
#! * Rank 7 groups with p-class 3
#!
#! For the groups that are not explicity available the following information is available:
#!
#! * Parent Group ID
#! * Parent Group Order
#! * p-class
#! * Rank
#! * Age
#!
#!
#! The groups are sorted first by their parent group ids and then by the pc codes of the standard presentations for the groups. The data contained in this library was used in the 2022 enumeration of the groups of order 19683 <Cite Key="Burrell2022a"/>. The computational tools used were developed in the 2021 enumeration of the groups of order 1024 <Cite Key="Burrell2021a"/>. The available groups were generated using the p-group generation algorithm  <Cite Key="OBrien1990a"/> as implemented in the ANUPQ package <Cite Key="Gamble2019a"/>. The information on the remaining groups was calculated using the cohomological methods for enumerating p-groups as introduced in <Cite Key="Eick1999a"/>.
#!

DeclareAutoreadableVariables("GRPS39","gap/Capable_List3_2187.g",["Capable_3","Capable_9","Capable_27","Capable_81","Capable_243","Capable_729","Capable_2187"]);
DeclareAutoreadableVariables("GRPS39","gap/Capable_List_6561.g",["Capable_6561"]);
DeclareAutoreadableVariables("GRPS39","gap/Enumerated_List.g",["Enumerated_3","Enumerated_9","Enumerated_27","Enumerated_81","Enumerated_243","Enumerated_729","Enumerated_2187","Enumerated_6561"]);
DeclareGlobalFunction("ReloadGRPS39");
#! @Chapter Functionality
#!
#!
#! @Section Methods
#!
#! Once the package is loaded the user may call `SmallGroup(1024,i)` and receive either a group if available or a **partially constructed group** which has the following attributes set
#! * p-class
#! * Rank
#! * Heritage
#! * Order
#! 
#!
#! @BeginExampleSession
#! gap> SmallGroup(19683,1);
#! <pc group of size 19683 with 9 generators>
#! gap> G:=SmallGroup(19683,1);
#! <pc group of size 19683 with 9 generators>
#! gap> RankPGroup(G);
#! 3
#! gap> PClassPGroup(G);
#! 2
#! gap> GRPS39_Heritage(G);
#! [ 27, 5, 1 ]
#! gap> H:=SmallGroup(19683,2); #this is a partially constructed group
#! <pc group with 0 generators>
#! gap> PClassPGroup(H);
#! 2
#! gap> RankPGroup(H);
#! 4
#! gap> GRPS39_Heritage(H);
#! [ 81, 15, 1 ]
#! gap> K:=SmallGroup(19683,3); #this is a partially constructed group
#! <pc group with 0 generators>
#! gap> PClassPGroup(K);
#! 2
#! gap> RankPGroup(K);
#! 4
#! gap> GRPS39_Heritage(K);
#! [ 81, 15, 2 ]
#! #notice that H,K have the same parent group but their age differs
#! @EndExampleSession

DeclareGlobalFunction("CapableAndMissing");

DeclareGlobalFunction("GRPS39_IsAvailable");


#! @Description
#! For $1 \leq i \leq 203,045,160$ this function will return the SmallGroup ID of the $i$th available group among all the groups of order 19683.
#! @Arguments N
#! @Returns `int`
DeclareGlobalFunction("GRPS39_AvailableMap");
#! @BeginExampleSession
#! #group 1 is available
#! #groups 2-66668 are not available
#! #SmallGroup(19683,66668) is not available
#! gap> g:=SmallGroup(19683,66668);
#! <pc group with 0 generators> #this is a partially constructed group
#! gap> g:=SmallGroup(19683,66669);
#! <pc group of size 19683 with 9 generators> #this is an available group
#! gap> GRPS39_AvailableMap(2);
#! 66669
#! #access the ith available group of order 19683
#! gap> SmallGroup(19683,GRPS39_AvailableMap(i)); #for i <= 203,045,160
#! @EndExampleSession

#! @Description
#! For $1 \leq i \leq 5,937,876,645$ if `SmallGroup(19683,i)` is available this will return its position in the available groups list or else it will print a message telling you that it is not available and return 0.
#! @Arguments N
#! @Returns `int`
DeclareGlobalFunction("GRPS39_InverseAvailableMap");
#! @BeginExampleSession
#! gap> GRPS39_InverseAvailableMap(GRPS39_AvailableMap(i)) = i;
#! gap> GRPS39_InverseAvailableMap(2);
#! This is an immediate descendant of 81#15 and is not available
#! 0
#! @EndExampleSession


DeclareGlobalFunction("PrintAvailableClassificationTable39");
DeclareGlobalFunction("PrintClassificationTable39");
DeclareGlobalFunction("GRPS39NumDescendants");

DeclareGlobalFunction("AvailableGroups19683Information");
DeclareGlobalFunction("Groups19683Information");
DeclareGlobalFunction("GRPS39_CheckoutDescendants");

#! @Description
#! Returns as a list the following information for a group of order 19683 loaded from the library `[ParentGroupID, ParentGroupOrder, Age]`. The **Age** of a group is the position of the group among its siblings in the ordered list of their standard PC codes.
#! @Arguments G
#! @Returns `list`
DeclareAttribute("GRPS39_Heritage",IsGroup);
DeclareGlobalFunction("GRPS39_ImmediateDescendantGroupShell");

DeclareGlobalFunction("GRPS39_FixGroupDescendants");
