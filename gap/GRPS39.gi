InstallGlobalFunction("ReloadGRPS39",function()
Print(RereadPackage("GRPS39/gap/GRPS39.gd"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.gi"),"\n");
Print(RereadPackage("GRPS39/gap/GRPS39.g"),"\n");
end);

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
