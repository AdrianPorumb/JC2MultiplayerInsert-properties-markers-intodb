function sendonkeypress(args)
Network:Send("WriteDB",args )
end
function Displaytoplayer()
local widthfromleft = Render.Height
	local heightfromtop = Render.Width
	local Textsize= 14
	local display01	="p -- pipelines" 		
	local display02	="i -- windmills" 		
	local display03	="u -- pumping stations" 	
	local display04	="v -- village shops" 		
	local display05	="l -- lighthouses"  		
	local display06	="o -- oilrigs" 			
	local display07	="k -- city shops" 		
	local display08	="j -- big houses with interiors"	
	local display09	="h -- penthouses" 		
	local display10	="n -- villas" 			
	local display11	="m -- mansions" 			
	local display12	="g -- palaces"			
	local display13	="1 -- apartments" 		
	local display14	="2 -- shacks with interiors" 	
	local display15	="3 -- houses 1lvl" 		
	local display16	="4 -- small shack with interiors"
	local display17	="5 -- houses with interiors" 	
	local display18	="6 -- houses 2lvl"		
	local display19	="y -- advertisments"		
		
	
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.01)), display01 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.02)), display02 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.03)), display03 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.04)), display04 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.05)), display05 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.06)), display06 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.07)), display07 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.08)), display08 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.09)), display09 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.10)), display10 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.11)), display11 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.12)), display12 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.13)), display13 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.14)), display14 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.15)), display15 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.16)), display16 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.17)), display17 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.18)), display18 , Color(1,255,250,255 ), Textsize, 1)
	Render:DrawText(Vector2((widthfromleft*1.4),(heightfromtop*0.19)), display19 , Color(1,255,250,255 ), Textsize, 1)
	end      				                        
	
Events:Subscribe("Render",Displaytoplayer)
Events:Subscribe("CharPress",sendonkeypress)