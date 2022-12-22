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
#! The groups are sorted first by their rank, then by p-class, then by parent group ids and finally by age. The data contained in this library was used in the 2022 enumeration of the groups of order 19683 <Cite Key="Burrell2022a"/>. The computational tools used were developed in the 2021 enumeration of the groups of order 1024 <Cite Key="Burrell2021a"/>. The available groups were generated using the p-group generation algorithm  <Cite Key="OBrien1990a"/> as implemented in the ANUPQ package <Cite Key="Gamble2019a"/>. The information on the remaining groups was calculated using the cohomological methods for enumerating p-groups as introduced in <Cite Key="Eick1999a"/>.
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
#! Once the package is loaded the user may call `SmallGroup(19683,i)` and receive either a group if available or a **partially constructed group** which has the following attributes set
#! * p-class
#! * Rank
#! * Heritage
#! * Order
#! Additional information can be obtained via `SmallGroupsInformation(19683)`. 
#!
#! @BeginExampleSession
#! gap> G:=SmallGroup(19683,1);
#! <pc group of size 19683 with 9 generators>
#! gap> RankPGroup(G);
#! 1
#! gap> PClassPGroup(G);
#! 9
#! gap> GRPS39_Heritage(G);
#! [ 6561, 1, 1 ]
#! gap> H:=SmallGroup(19683,546913);
#! <group> #this is a partially constructed group
#! gap> PClassPGroup(H);
#! 3
#! gap> RankPGroup(H);
#! 3
#! gap> GRPS39_Heritage(H);
#! [ 729, 122, 1 ]
#! gap> K:=SmallGroup(19683,546913+1);
#! <group> #this is a partially constructed group
#! gap> PClassPGroup(K);
#! 3
#! gap> RankPGroup(K);
#! 3
#! gap> GRPS39_Heritage(K);
#! [ 729, 122, 2 ]
#! #notice that H,K have the same parent group but their age differs
#! @EndExampleSession

DeclareGlobalFunction("CapableAndMissing");

DeclareGlobalFunction("GRPS39_IsAvailable");


## @Description
## For $1 \leq i \leq 203,045,160$ this function will return the SmallGroup ID of the $i$th available group among all the groups of order 19683.
## @Arguments N
## @Returns `int`
#DclareGlobalFunction("GRPS39_AvailableMap");
## @BeginExampleSession
## #group 1 is available
## #groups 2-66668 are not available
## #SmallGroup(19683,66668) is not available
## gap> g:=SmallGroup(19683,66668);
## <pc group with 0 generators> #this is a partially constructed group
## gap> g:=SmallGroup(19683,66669);
## <pc group of size 19683 with 9 generators> #this is an available group
## gap> GRPS39_AvailableMap(2);
## 66669
## #access the ith available group of order 19683
## gap> SmallGroup(19683,GRPS39_AvailableMap(i)); #for i <= 203,045,160
## @EndExampleSession
#
## @Description
## For $1 \leq i \leq 5,937,876,645$ if `SmallGroup(19683,i)` is available this will return its position in the available groups list or else it will print a message telling you that it is not available and return 0.
## @Arguments N
## @Returns `int`
DeclareGlobalFunction("GRPS39_InverseAvailableMap");
## @BeginExampleSession
## gap> GRPS39_InverseAvailableMap(GRPS39_AvailableMap(i)) = i;
## gap> GRPS39_InverseAvailableMap(2);
## This is an immediate descendant of 81#15 and is not available
## 0
## @EndExampleSession


# DeclareGlobalFunction("PrintAvailableClassificationTable39");
# DeclareGlobalFunction("PrintClassificationTable39");
DeclareGlobalFunction("GRPS39NumDescendants");

# DeclareGlobalFunction("AvailableGroups19683Information");
#! @Description
#! prints information on the groups of order 19683 (`SmallGroupsInformation(19683)` also works).
#! @BeginExampleSession
#! gap> Groups19683Information();
#! 
#! ###### Groups Information ###########################
#! There are 5,937,876,645 groups of order 19,683
#! They are sorted by rank, p-class, parent group and then age
#! 
#! Group 	1 			has rank 1 and pclass 9
#! Groups 	2-12 			have rank 2 and pclass 3
#! Groups 	13-1431 		have rank 2 and pclass 4
#! Groups 	1432-12482 		have rank 2 and pclass 5
#! Groups 	12483-16608 		have rank 2 and pclass 6
#! Groups 	16609-17592 		have rank 2 and pclass 7
#! Groups 	17593-17600 		have rank 2 and pclass 8
#! Group 	17601 			has rank 3 and pclass 2
#! Groups 	17602-88975117 		have rank 3 and pclass 3
#! Groups with IDs 546913-88541296 are not available and are immediate descendants of 729#122
#! 
#! Groups 	88975118-91756404 	have rank 3 and pclass 4
#! Groups 	91756405-91883170 	have rank 3 and pclass 5
#! Groups 	91883171-91887160 	have rank 3 and pclass 6
#! Groups 	91887161-91887185 	have rank 3 and pclass 7
#! Groups 	91887186-91953852 	have rank 4 and pclass 2
#! Groups with IDs 91887186-91953852 are not available and are immediate descendants of 81#15
#! 
#! Groups 	91953853-340943248 	have rank 4 and pclass 3
#! Groups with IDs 92241644-209726506 are not available and are immediate descendants of 729#425
#! Groups with IDs 209726507-227782267 are not available and are immediate descendants of 729#440
#! Groups with IDs 227782268-258162927 are not available and are immediate descendants of 729#453
#! Groups with IDs 274401608-281443634 are not available and are immediate descendants of 2187#6044
#! Groups with IDs 304813802-317529080 are not available and are immediate descendants of 2187#6576
#! 
#! Groups 	340943249-355792512 	have rank 4 and pclass 4
#! Groups 	355792513-355820119 	have rank 4 and pclass 5
#! Groups 	355820120-355820169 	have rank 4 and pclass 6
#! Groups 	355820170-4032242074 	have rank 5 and pclass 2
#! Groups with IDs 355820170-4032242074 are not available and are immediate descendants of 243#67
#! 
#! Groups 	4032242075-4717133004 	have rank 5 and pclass 3
#! Groups with IDs 4032242075-4032242205 are not available and are immediate descendants of 2187#9093
#! Groups with IDs 4045509432-4062606128 are not available and are immediate descendants of 2187#9118
#! Groups with IDs 4062606129-4103654980 are not available and are immediate descendants of 2187#9121
#! Groups with IDs 4110319952-4123052906 are not available and are immediate descendants of 2187#9128
#! Groups with IDs 4123052907-4451185904 are not available and are immediate descendants of 2187#9131
#! Groups with IDs 4451185905-4500755636 are not available and are immediate descendants of 2187#9134
#! Groups with IDs 4500755637-4599685634 are not available and are immediate descendants of 2187#9135
#! Groups with IDs 4599685635-4612426328 are not available and are immediate descendants of 2187#9138
#! Groups with IDs 4612426329-4616681990 are not available and are immediate descendants of 2187#9140
#! 
#! Groups 	4717133005-4717651022 	have rank 5 and pclass 4
#! Groups 	4717651023-4717651101 	have rank 5 and pclass 5
#! Groups 	4717651102-5937761741 	have rank 6 and pclass 2
#! Groups with IDs 4717651102-5937761741 are not available and are immediate descendants of 729#504
#! 
#! Groups 	5937761742-5937874762 	have rank 6 and pclass 3
#! Groups with IDs 5937761742-5937811556 are not available and are immediate descendants of 2187#9302
#! 
#! Groups 	5937874763-5937874872 	have rank 6 and pclass 4
#! Groups 	5937874873-5937876585 	have rank 7 and pclass 2
#! Groups with IDs 5937874873-5937876585 are not available and are immediate descendants of 2187#9310
#! 
#! Groups 	5937876586-5937876632 	have rank 7 and pclass 3
#! Groups with IDs 5937876593-5937876632 are not available and are immediate descendants of 6561#1396068
#! 
#! Groups 	5937876633-5937876644 	have rank 8 and pclass 2
#! Groups with IDs 5937876633-5937876644 are not available and are immediate descendants of 6561#1396077
#! 
#! Group 	5937876645 has rank 9 and pclass 1
#! This library was created by David Burrell (2022).
#! @EndExampleSession
DeclareGlobalFunction("Groups19683Information");
DeclareGlobalFunction("GRPS39_CheckoutDescendants");

#! @Description
#! Returns as a list the following information for a group of order 19683 loaded from the library `[ParentGroupID, ParentGroupOrder, Age]`. The **Age** of a group is the position of the group among its siblings in the ordered list of their standard PC codes (the order is determined by the output of the p-group generation algorithm).
#! @Arguments G
#! @Returns `list`
DeclareAttribute("GRPS39_Heritage",IsGroup);

DeclareGlobalFunction("GRPS39_ImmediateDescendantGroupShell");

# DeclareGlobalFunction("GRPS39_FixGroupDescendants");
