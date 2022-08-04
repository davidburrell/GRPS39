#################27################
available_list:=[];
unavailable_list:=[];
Add(available_list,[1,1]);


#################81################
Add(unavailable_list,[2,66668]); #enumerated immediate descendants of 81#15

#################243################
Add(available_list,[66669,417331]);
Add(unavailable_list,[417332,3676839236]); #enumerated immediate descendants of 243#67

################729################
Add(available_list,[3676839237,3677017932]);

Add(unavailable_list,[3677017933,3765012316]); #enumerated immediate descendants of 729#122
Add(available_list,[3765012317,3765352301]);

Add(unavailable_list,[3765352302,3882837164]); #enumerated immediate descendants of 729#425
Add(unavailable_list,[3882837165,3900892925]); #enumerated immediate descendants of 729#440
Add(unavailable_list,[3900892926,3931273585]); #enumerated immediate descendants of 729#453
Add(available_list,[3931273586,3943394284]);

Add(unavailable_list,[3943394285,5163504924]); #enumerated immediate descendants of 729#504

################2187################
Add(available_list,[5163504925,5168202147]);

Add(unavailable_list,[5168202148,5175244174]); #enumerated immediate descendants of 2187#6044

Add(available_list,[5175244175,5198614341]);

Add(unavailable_list,[5198614342,5211329620]); #enumerated immediate descendants of 2187#6576

Add(available_list,[5211329621,5232874449]);

Add(unavailable_list,[5232874450,5232874580]);  #enumerated immediate descendants of 2187#9093

Add(available_list,[5232874581,5246141806]);

Add(unavailable_list,[5246141807,5263238503]);#enumerated immediate descendants of 2187#9118
Add(unavailable_list,[5263238504,5304287355]);#enumerated immediate descendants of 2187#9121

Add(available_list,[5304287356,5310952326]);

Add(unavailable_list,[5310952327,5323685281]); #enumerated immediate descendants of 2187#9128
Add(unavailable_list,[5323685282,5651818279]); #enumerated immediate descendants of 2187#9131
Add(unavailable_list,[5651818280,5701388011]); #enumerated immediate descendants of 2187#9134
Add(unavailable_list,[5701388012,5800318009]); #enumerated immediate descendants of 2187#9135
Add(unavailable_list,[5800318010,5813058703]); #enumerated immediate descendants of 2187#9138
Add(unavailable_list,[5813058704,5817314365]); #enumerated immediate descendants of 2187#9140
Add(unavailable_list,[5817314366,5817364180]); #enumerated immediate descendants of 2187#9302
Add(unavailable_list,[5817364181,5817365893]); #enumerated immediate descendants of 2187#9310

################6561################
Add(available_list,[5817365894,5937876592]);

Add(unavailable_list,[5937876593,5937876632]); #enumerated immediate descendants of 6561#1396068
Add(unavailable_list,[5937876633,5937876644]); #enumerated immediate descendants of 6561#1396077

i:=0;
offsets:=[];
lengths:=[];
total:=0;
for length in unavailable_list do
	i:=i+1;
	Print(StringFormatted("offset{}:={};\n",i,length[2]-length[1]+1));
	Add(offsets,length[2]-length[1]+1);
od;

j:=0;

for length in available_list do
	j:=j+1;
	Print(StringFormatted("length{}:={};\n",j,length[2]-length[1]+1));
	Add(lengths,length[2]-length[1]+1);
od;

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
