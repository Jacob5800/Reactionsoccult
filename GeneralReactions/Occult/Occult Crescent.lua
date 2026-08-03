local tbl = 
{
	
	{
		data = 
		{
			name = "Arrow objects",
			uuid = "5279deb8-3cc8-cbf9-83b4-eebdbf051f95",
			version = 2,
		},
		inheritedObjectUUID = "b4dea9fb-caa4-148e-9ae8-92c5564e94af",
		inheritedOverwrites = 
		{
			actions = 
			{
				
				{
					type = "add",
					value = 
					{
						data = 
						{
							name = "Modify List",
							uuid = "a756234d-f141-26d1-babb-e5b4df04e2c7",
							version = 2.1,
						},
						inheritedObjectUUID = "cd63cd05-6492-be10-a239-d2c45dd18bfa",
						inheritedOverwrites = 
						{
							actionLua = "local green,yellow,red,blue = 1677786914,1677787134,1677721855,1694449152\n\ndata.dedoTargetNames = data.dedoTargetNames or {\n    -- Non-treasure objects you want to track.\n    -- Treasure objects are detected by ent.type == 4.\n\n    [\"survey point\"] = yellow,\n    [\"2010139\"] = {color = red, forceVisible = true}, -- Carrots\n    -- [\"Random Test Name\"] = blue,\n\n    -- You can also use any U32 color value from Anyone's Dev Monitor.\n}\n\ndata.dedoArrowEnts = data.dedoArrowEnts or {}\ndata.dedoArrowTime = Now()\ntable.clear(data.dedoArrowEnts)\n\nfor id, ent in pairs(TensorCore.entityList(\"\")) do\n    local targetConfig\n\n    -- Track all treasure objects by type.\n    if ent.type == 4 then\n        targetConfig = green\n    else\n        -- All other tracked objects still use name/contentid matching.\n        local lowerName = string.lower(ent.name)\n        targetConfig = data.dedoTargetNames[lowerName] or data.dedoTargetNames[tostring(ent.contentid)]\n    end\n\n    if targetConfig then\n        local color, forceVisible\n\n        if type(targetConfig) == \"table\" then\n            color = targetConfig.color\n            forceVisible = targetConfig.forceVisible or false\n        else\n            color = targetConfig\n            forceVisible = false\n        end\n\n        local dist = TensorCore.getDistance2d(TensorCore.mGetPlayer().pos, ent.pos)\n\n        if dist > 5 then\n            data.dedoArrowEnts[id] = {\n                name = ent.name,\n                pos = ent.pos,\n                color = color,\n                dist = dist,\n            }\n        end\n    end\nend \n\nself.used = true",
						},
					},
				},
			},
		},
	}, 
	inheritedProfiles = 
	{
		"Occult\\Occult Crescent",
		"Lj\\base",
	},
}



return tbl