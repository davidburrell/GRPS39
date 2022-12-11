for i in [1..GRPS39_AVAIL] do
	if not GRPS39_InverseAvailableMap(GRPS39_AvailableMap(i)) = i then
		Print(StringFormatted("\n\n issue with {} \n\n",i));
		Error("issue");
	fi;

	if i mod 10000000 = 0 then
		Print(StringFormatted(" working on {} \n",i));
	fi;
od;
