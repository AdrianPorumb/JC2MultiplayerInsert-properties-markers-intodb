--[[ writes to DB "properties" table
For admin usage only do not use on released and in usage servers.
	Or do it if you don't care.
]]--
function dbwite(args)
for player in Server:GetPlayers() do
local p= player
local pos,ltype,text=p:GetPosition(),"",tostring(args.character)
	if text=="y"  then  ltype= "adpannels" 		
		elseif text=="p"  then  ltype= "pipelines" 		
		elseif text=="i"  then  ltype= "windmills" 		
		elseif text=="u"  then  ltype= "pumpingstations" 	   
		elseif text=="v"  then  ltype= "villageshops" 		   
		elseif text=="l"  then  ltype= "lighthouses"  		   
		elseif text=="o"  then  ltype= "oilrigs" 			   
		elseif text=="k"  then  ltype= "cityshops" 		
		elseif text=="j"  then  ltype= "bighouseinteriors"	   
		elseif  text=="h"  then  ltype= "penthouses" 		
		elseif 	text=="n"  then  ltype= "villas" 			
		elseif 	text=="m"  then  ltype= "mansions" 			   
		elseif 	text=="g"  then  ltype= "palaces"			
		elseif 	text=="1"  then  ltype= "apartments" 		
		elseif 	text=="2"  then  ltype= "shacksinteriors" 	
		elseif 	text=="3"  then  ltype= "houses1lvl" 		
		elseif 	text=="4"  then  ltype= "smallshackinteriors" 
		elseif 	text=="5"  then  ltype= "housesinteriors" 	
		elseif 	text=="6"  then  ltype= "houses2lvl"		   
else return
	end     
local mb="0,0,0,0,0,"
local txtinsert=mb..ltype
local displaytoplayer=ltype.." marker at position "..tostring(pos)
--print(txtinsert,displaytoplayer)
SQL:Execute("create table if not exists properties (position VARCHAR, text VARCHAR)" )
cmd = SQL:Command("insert into properties (position,text) values (?,?)")
	cmd:Bind( 1, tostring(pos)) 
	cmd:Bind( 2, txtinsert)
cmd:Execute()	
p:SendChatMessage(displaytoplayer, Color.White)	
end
end
Network:Subscribe("WriteDB",dbwite)