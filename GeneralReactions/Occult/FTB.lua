local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						actionLua = "data.ocFTBRedPuddleCount = 0\ndata.ocFTBBluePuddleCount = 0\ndata.ocFTBSnowballTether = false\ndata.ocFTBSnowballTetherEntID = nil\nself.used=true",
						alertTTS = true,
						alertText = "Knockback",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Alert",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_ArmsLength\"] = true\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_Surecast\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "KB Immune",
						uuid = "89cb112f-541c-3035-8577-d0e5dd91a902",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41719,
						eventSpellName = "-1",
						name = "Is Expulsion Afar",
						spellIDList = 
						{
							41719,
							41701,
							41716,
							43521,
						},
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41719,
						eventSpellName = "-1",
						name = "Is Not Cometeor/Gravity",
						spellIDList = 
						{
							41719,
							41716,
						},
						uuid = "c0e6fa19-888b-1651-bcac-ba7d8c305266",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 1 KB",
			throttleTime = 5000,
			uuid = "cbf3a240-cf2f-8353-87d8-3e5b86fe00bc",
			version = 2,
		},
		inheritedIndex = 81,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local demonTabletPos\nfor _, foundEntity in pairs(TensorCore.entityList(\"contentid=13760,attackable\")) do\n\tdemonTabletPos = foundEntity.pos\n\tbreak\nend\n\nTensorCore.getStaticDrawer(1845559113):addTimedArrow(17000, demonTabletPos.x, demonTabletPos.y, demonTabletPos.z, 0, 5, 5, 3)",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Arrow South",
						uuid = "3372b1ce-ae0c-5571-b4ef-56b278eb8773",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						actionLua = "data.ocFTBRedPuddleCount = 0\ndata.ocFTBBluePuddleCount = 0\ndata.ocFTBSnowballTether = false\ndata.ocFTBSnowballTetherEntID = nil\nself.used=true",
						alertTTS = true,
						alertText = "Stack South On You",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Stack South Alert",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local demonTabletPos\nfor _, foundEntity in pairs(TensorCore.entityList(\"contentid=13760,attackable\")) do\n\tdemonTabletPos = foundEntity.pos\n\tbreak\nend\n\nTensorCore.getStaticDrawer(1845559113):addTimedArrow(17000, demonTabletPos.x, demonTabletPos.y, demonTabletPos.z, math.pi, 5, 5, 3)",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"a535218f-b5b9-a148-bece-48e45ad8a1aa",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Arrow North",
						uuid = "9566183f-51b6-e0b5-8b26-9ba80e2882b8",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						actionLua = "data.ocFTBRedPuddleCount = 0\ndata.ocFTBBluePuddleCount = 0\ndata.ocFTBSnowballTether = false\ndata.ocFTBSnowballTetherEntID = nil\nself.used=true",
						alertTTS = true,
						alertText = "Stack North On You",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"a535218f-b5b9-a148-bece-48e45ad8a1aa",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Stack North Alert",
						uuid = "55da4906-70e2-e294-ab7b-d1921e45c6e2",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						conditionLua = "return eventArgs.markerID == 575",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventMarkerID = 574,
						eventSpellID = 41719,
						eventSpellName = "-1",
						markerIDList = 
						{
							574,
							575,
						},
						name = "Is Stack South Marker",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						conditionLua = "return eventArgs.markerID == 575",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventMarkerID = 575,
						eventSpellID = 41719,
						eventSpellName = "-1",
						markerIDList = 
						{
							574,
							575,
						},
						name = "Is Stack North Marker",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "a535218f-b5b9-a148-bece-48e45ad8a1aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "return eventArgs.entityID == TensorCore.mGetPlayer().id",
						dequeueIfLuaFalse = true,
						eventSpellID = 41719,
						eventSpellName = "-1",
						name = "Is On You",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "c0e6fa19-888b-1651-bcac-ba7d8c305266",
						version = 3,
					},
				},
			},
			eventType = 4,
			name = "[FTB] Boss 1 Stack",
			uuid = "af791bd6-54d7-ce54-94ff-f1cecb96eae7",
			version = 2,
		},
		inheritedIndex = 87,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						alertTTS = true,
						alertText = "Bubble On You",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"a535218f-b5b9-a148-bece-48e45ad8a1aa",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						uuid = "d00bbbf1-b00e-36b1-97d5-2ebae8b28f5a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						conditionLua = "return eventArgs.markerID == 575",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventMarkerID = 23,
						eventSpellID = 41719,
						eventSpellName = "-1",
						markerIDList = 
						{
							574,
							575,
						},
						name = "Is Bubble Marker",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "a535218f-b5b9-a148-bece-48e45ad8a1aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "return eventArgs.entityID == TensorCore.mGetPlayer().id",
						dequeueIfLuaFalse = true,
						eventSpellID = 41719,
						eventSpellName = "-1",
						name = "Is On You",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "c0e6fa19-888b-1651-bcac-ba7d8c305266",
						version = 3,
					},
				},
			},
			eventType = 4,
			name = "[FTB] Boss 3 Bubble",
			uuid = "2bc97392-818d-2276-ac1e-c4697ee0498b",
			version = 2,
		},
		inheritedIndex = 91,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						actionLua = "data.ocFTBRedPuddleCount = 0\ndata.ocFTBBluePuddleCount = 0\ndata.ocFTBSnowballTether = false\ndata.ocFTBSnowballTetherEntID = nil\nself.used=true",
						alertTTS = true,
						alertText = "Meteor On You",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"c0e6fa19-888b-1651-bcac-ba7d8c305266",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Alert",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "return eventArgs.newActiveAura1 == 2452",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41719,
						eventSpellName = "-1",
						name = "Is Meteor",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "return eventArgs.entityID == TensorCore.mGetPlayer().id",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41719,
						eventSpellName = "-1",
						name = "Is On You",
						spellIDList = 
						{
							41719,
							41701,
						},
						uuid = "c0e6fa19-888b-1651-bcac-ba7d8c305266",
						version = 3,
					},
				},
			},
			eventType = 25,
			name = "[FTB] Boss 1 Meteor",
			uuid = "d102510c-195d-cfb7-85e5-d06371ff7dd9",
			version = 2,
		},
		inheritedIndex = 93,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal green = 1845559113\n\nlocal puddleCount = data.ocFTBBluePuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal redStacks = TensorCore.getBuff(player.id, 4441).stacks\n\nlocal drawer\nif puddleCount < redStacks then\n    drawer = TensorCore.getStaticDrawer(green)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBBluePuddleCount = data.ocFTBBluePuddleCount + 1\n\nself.used=true",
						conditions = 
						{
							
							{
								"9f7f42af-5bfa-0639-8083-1d406a4d052a",
								true,
							},
							
							{
								"92535bff-ee3c-5f24-bbd0-46bcbfa14b73",
								true,
							},
							
							{
								"9b30be4d-a71e-5880-8e8f-3b0a6fab5391",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Safe Blue",
						uuid = "f2b9facf-0284-5480-8d8e-cb01c5f469ec",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal red = 1845494015\n\nlocal puddleCount = data.ocFTBRedPuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal redStacks = TensorCore.getBuff(player.id, 4441).stacks\n\nlocal drawer\nif puddleCount < redStacks then\n    drawer = TensorCore.getStaticDrawer(red)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBRedPuddleCount = data.ocFTBRedPuddleCount + 1\n\nself.used=true",
						conditions = 
						{
							
							{
								"9f7f42af-5bfa-0639-8083-1d406a4d052a",
								true,
							},
							
							{
								"92535bff-ee3c-5f24-bbd0-46bcbfa14b73",
								true,
							},
							
							{
								"10cee0f3-7bdb-91eb-a9fc-b62b8e793715",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Unsafe Red",
						uuid = "3c23b6ba-7d70-00c8-bae5-0ae01d1e095e",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal green = 1845559113\n\nlocal puddleCount = data.ocFTBRedPuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal blueStacks = TensorCore.getBuff(player.id, 4442).stacks\n\nlocal drawer\nif puddleCount < blueStacks then\n    drawer = TensorCore.getStaticDrawer(green)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBRedPuddleCount = data.ocFTBRedPuddleCount + 1\n\nself.used=true",
						conditions = 
						{
							
							{
								"9f7f42af-5bfa-0639-8083-1d406a4d052a",
								true,
							},
							
							{
								"fa6aeb73-f777-ef1a-9c66-6b243dd22c87",
								true,
							},
							
							{
								"10cee0f3-7bdb-91eb-a9fc-b62b8e793715",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Safe Red",
						uuid = "8f8164d4-5036-a159-aa46-fc1cc49c5fe0",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal red = 1845494015\n\nlocal puddleCount = data.ocFTBBluePuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal blueStacks = TensorCore.getBuff(player.id, 4442).stacks\n\nlocal drawer\nif puddleCount < blueStacks then\n    drawer = TensorCore.getStaticDrawer(red)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBBluePuddleCount = data.ocFTBBluePuddleCount + 1\n\nself.used=true",
						conditions = 
						{
							
							{
								"9f7f42af-5bfa-0639-8083-1d406a4d052a",
								true,
							},
							
							{
								"fa6aeb73-f777-ef1a-9c66-6b243dd22c87",
								true,
							},
							
							{
								"9b30be4d-a71e-5880-8e8f-3b0a6fab5391",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Unsafe Blue",
						uuid = "f46e4807-f590-208e-b1df-df44fe58aa8e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "9f7f42af-5bfa-0639-8083-1d406a4d052a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4441,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Nova Ooze",
						uuid = "92535bff-ee3c-5f24-bbd0-46bcbfa14b73",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Ice Ooze",
						uuid = "fa6aeb73-f777-ef1a-9c66-6b243dd22c87",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 42463",
						dequeueIfLuaFalse = true,
						name = "Is Red Puddle",
						uuid = "10cee0f3-7bdb-91eb-a9fc-b62b8e793715",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 42464",
						dequeueIfLuaFalse = true,
						name = "Is Blue Puddle",
						uuid = "9b30be4d-a71e-5880-8e8f-3b0a6fab5391",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "[FTB] Boss 2 Puddles",
			uuid = "b9e788f8-17b8-b683-a975-3f90d2caae03",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal green = 1845559113\n\nlocal puddleCount = data.ocFTBBluePuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal redStacks = TensorCore.getBuff(player.id, 4441).stacks\n\nlocal drawer\nif puddleCount < redStacks then\n    drawer = TensorCore.getStaticDrawer(green)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBBluePuddleCount = data.ocFTBBluePuddleCount + 1\n\nself.used=true",
						alertTTS = true,
						alertText = "Stand in Green",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "TTS",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "2abe0922-6a71-5ad7-8451-5db61edcb31b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4441,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13732,
						name = "Is Phobos",
						uuid = "59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 42461,
						eventSpellName = "-1",
						name = "Is Frozen Fallout",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 2 Puddles TTS",
			uuid = "bd4e07f5-86c9-388b-946a-6b6a3f5c3044",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "TensorCore.getStaticDrawer(1845559113):addTimedCircleOnEnt(10500, eventArgs.entityID, 5)\nself.used=true",
						alertTTS = true,
						alertText = "Tether on You",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Track Nereid",
						uuid = "882c89d8-3cea-e041-9b35-6e9a2e49dba9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "TensorCore.getStaticDrawer(1862205570):addTimedCircleOnEnt(10500, eventArgs.entityID, 5)\nself.used=true",
						alertTTS = true,
						alertText = "Tether on You",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"833c5aa4-51fe-0b72-9f5e-1f711df544ba",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Track Phobos",
						uuid = "6a7a9fbc-2ebf-56c6-9913-9811f3a2a25e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "2abe0922-6a71-5ad7-8451-5db61edcb31b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4441,
						category = "Lua",
						conditionLua = "return eventArgs.isVisible and TensorCore.mGetEntity(eventArgs.entityID).contentid == 13857",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13730,
						name = "Is Nereid (Green)",
						uuid = "59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.isVisible and TensorCore.mGetEntity(eventArgs.entityID).contentid == 13733",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 42421,
						name = "Is Phobos (Purple)",
						uuid = "833c5aa4-51fe-0b72-9f5e-1f711df544ba",
						version = 3,
					},
				},
			},
			eventType = 22,
			name = "[FTB] Boss 2 Fireballs",
			uuid = "0bb35baa-a500-4695-82ac-47a37698b501",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						actionLua = "AnyoneCore.Shotcall(\"Tether on You\", true, timer, important, volume)\nself.used=true",
						alertTTS = true,
						alertText = "Tether on You",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						uuid = "882c89d8-3cea-e041-9b35-6e9a2e49dba9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local snowballPos = TensorCore.mGetEntity(eventArgs.sourceEntityID).pos\n\nlocal nereidPos\nfor _, foundEntity in pairs(TensorCore.entityList(\"contentid=13731,attackable\")) do\n\tnereidPos = foundEntity.pos\n\tbreak\nend\n\nlocal snowballToNereidHeading = TensorCore.getHeadingToTarget(snowballPos, nereidPos)\nTensorCore.getStaticDrawer(1845559113):addTimedArrow(6000, nereidPos.x, nereidPos.y, nereidPos.z, snowballToNereidHeading, \n\t\t\t\t\t\t\t\t\t\t\t\t\t\t10, 1)\n\nself.used=true",
						alertTTS = true,
						alertText = "Tether on You",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Draw Arrow",
						uuid = "6a7a9fbc-2ebf-56c6-9913-9811f3a2a25e",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "2abe0922-6a71-5ad7-8451-5db61edcb31b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4441,
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn eventArgs.newTargetID == player.id and eventArgs.newTetherID == 246",
						dequeueIfLuaFalse = true,
						name = "Has Tether",
						uuid = "59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
						version = 3,
					},
				},
			},
			eventType = 15,
			name = "[FTB] Boss 2 Snowball Tether",
			throttleTime = 1250,
			uuid = "df7f9cb5-3390-d09b-ad3f-d2cbdbf12c26",
			version = 2,
		},
		inheritedIndex = 76,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ocFTBRedPuddleCount = 0\ndata.ocFTBBluePuddleCount = 0\ndata.ocFTBSnowballTether = false\ndata.ocFTBSnowballTetherEntID = nil\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Reset State",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 42490,
						name = "Is Decisive Battle",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 2 Reset",
			uuid = "b8f19388-6f0a-8ca0-b77c-71e527c2cd32",
			version = 2,
		},
		inheritedIndex = 77,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[30210] = { label = \"Imitation Blizzard\", source = \"OC: FTB\" }\n\nlocal drawDuration = 4000\nlocal circleRadius = 20\n\nTensorCore.getMoogleDrawer():addTimedCircleOnEnt(drawDuration, eventArgs.entityID, circleRadius)\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"cf4289c9-28f0-8a1c-94fc-a51d35542198",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw AOE",
						uuid = "3c79ce5c-7f8d-7951-826a-d9fbeb724463",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[30228] = { label = \"Imitation Blizzard\", source = \"OC: FTB\" }\n\nlocal drawDuration = 4000\nlocal aoeLength = 60\nlocal aoeWidth = 16\n\nTensorCore.getMoogleDrawer():addTimedCrossOnEnt(drawDuration, eventArgs.entityID, aoeLength, aoeWidth)\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"dc629907-0710-3bbd-9a10-7bad90cba281",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Cross",
						uuid = "a840192c-7690-8d23-9d81-af3723905db6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.entityID)\nreturn entity.contentid == 2014546",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41569,
						name = "Is AOE Puddle",
						uuid = "cf4289c9-28f0-8a1c-94fc-a51d35542198",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "local entity = TensorCore.mGetEntity(eventArgs.entityID)\nreturn entity.contentid == 2014547",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41569,
						name = "Is Cross Puddle",
						uuid = "dc629907-0710-3bbd-9a10-7bad90cba281",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.a2 == 16 and eventArgs.a3 == 32 and eventArgs.a4 == 0",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13950,
						name = "Is Puddle Freezing",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
			},
			eventType = 19,
			name = "[FTB] Boss 3 Puddles",
			uuid = "3ddb1b39-4f7f-64da-9b53-79324d3bdc01",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawDuration = 6100\nlocal rectLength = 20\nlocal headings = {\n\tsouth = math.rad(45),\n\tnorthEast = math.rad(165),\n\tnorthWest = math.rad(285)\n}\n\nlocal entityPos = TensorCore.mGetEntity(eventArgs.entityID).pos\n\nlocal drawer = TensorCore.getStaticDrawer(1845559113)\nfor _, heading in pairs(headings) do\n\tlocal dx = ((rectLength / 2) * math.cos(heading))\n\tlocal dz = ((rectLength / 2) * math.sin(heading))\n\tdrawer:addTimedRect(drawDuration, entityPos.x - dx, entityPos.y, entityPos.z + dz, rectLength, rectLength, heading)\nend\nTensorCore.getMoogleDrawer():addTimedCircle(drawDuration, entityPos.x, entityPos.y, entityPos.z, rectLength)\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"e2528b8f-60d9-2cbe-aed2-09c6c8aa177f",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Axeblow",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawDuration = 6100\nlocal lanceDelay = 3250\nlocal rectLength = 20\nlocal headings = {\n\tsouth = math.rad(45),\n\tnorthEast = math.rad(165),\n\tnorthWest = math.rad(285)\n}\n\nlocal entityPos = TensorCore.mGetEntity(eventArgs.entityID).pos\n\nlocal drawer = TensorCore.getStaticDrawer(1845559113)\nfor direction, heading in pairs(headings) do\n\tlocal dx = ((rectLength / 2) * math.cos(heading))\n\tlocal dz = ((rectLength / 2) * math.sin(heading))\n\n\tif direction == \"northWest\" then\n\t\tdrawer:addTimedRect(drawDuration - lanceDelay, entityPos.x - dx, entityPos.y, entityPos.z + dz, rectLength, rectLength, heading, lanceDelay)\n\telse\n\t\tdrawer:addTimedRect(drawDuration, entityPos.x - dx, entityPos.y, entityPos.z + dz, rectLength, rectLength, heading)\n\tend\nend\nTensorCore.getMoogleDrawer():addTimedCircle(drawDuration, entityPos.x, entityPos.y, entityPos.z, rectLength)\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"e2528b8f-60d9-2cbe-aed2-09c6c8aa177f",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Lance Axeblow",
						uuid = "ab05f2c5-3015-451c-b4f8-3a8b606fe634",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local drawDuration = 6100\nlocal rectLength = 20\nlocal headings = {\n\tsouth = math.rad(45),\n\tnorthEast = math.rad(165),\n\tnorthWest = math.rad(285)\n}\n\nlocal entityPos = TensorCore.mGetEntity(eventArgs.entityID).pos\n\nlocal drawer = TensorCore.getMoogleDrawer()\nfor _, heading in pairs(headings) do\n\tlocal dx = ((rectLength / 2) * math.cos(heading))\n\tlocal dz = ((rectLength / 2) * math.sin(heading))\n\tdrawer:addTimedRect(drawDuration, entityPos.x - dx, entityPos.y, entityPos.z + dz, rectLength, rectLength, heading)\nend\ndrawer:addTimedDonut(drawDuration, entityPos.x, entityPos.y, entityPos.z, rectLength / 2, 32)\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"dc629907-0710-3bbd-9a10-7bad90cba281",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Lanceblow",
						uuid = "a840192c-7690-8d23-9d81-af3723905db6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13947,
						name = "Is Magitaur",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41543,
						name = "Is Axeblow",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41547,
						name = "Is Lanceblow",
						uuid = "dc629907-0710-3bbd-9a10-7bad90cba281",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return table.size(TensorCore.entityList(\"contentid=13948\")) > 0",
						dequeueIfLuaFalse = true,
						name = "Has Lance",
						uuid = "e2528b8f-60d9-2cbe-aed2-09c6c8aa177f",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 4 Axe/Lanceblow",
			uuid = "d0db41e8-7202-d2ee-af61-125c48f42cb6",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local rectLength = 20\nlocal magitaurPos = { x = 700.0, y = -476.0, z = -674.0 }\nlocal headings = {\n\tsouth = math.rad(45),\n\tnorthEast = math.rad(165),\n\tnorthWest = math.rad(285)\n}\nlocal lanceSquare = {\n\t[1] = headings.northEast,\n\t[2] = headings.northEast,\n\t[3] = headings.northEast,\n\t[5] = headings.south,\n\t[6] = headings.south,\n\t[7] = headings.south,\n\t[9] = headings.northWest,\n\t[10] = headings.northWest,\n\t[11] = headings.northWest\n}\n\nlocal baseDrawDelay = 12125\nlocal drawDuration = 2000\nlocal staticDrawer = TensorCore.getStaticDrawer(1845559113)\nlocal moogleDrawer = TensorCore.getMoogleDrawer()\n\nlocal function drawSquare(drawer, heading, drawDelay)\n    local dx = (rectLength / 2) * math.cos(heading)\n    local dz = (rectLength / 2) * math.sin(heading)\n    drawer:addTimedRect(drawDuration, magitaurPos.x - dx, magitaurPos.y, magitaurPos.z + dz, rectLength, rectLength, heading, drawDelay)\nend\n\nfor lanceCount = 0, 11 do\n\tlocal drawDelay = baseDrawDelay + (drawDuration * lanceCount)\n\n\tif lanceCount == 0 or lanceCount == 4 or lanceCount == 8 then\n\t\tfor _, heading in pairs(headings) do\n\t\t\tdrawSquare(staticDrawer, heading, drawDelay)\n\t\tend\n\telse\n\t\tlocal lanceSquareHeading = lanceSquare[lanceCount]\n\t\tif lanceSquareHeading then\n\t\t\tdrawSquare(moogleDrawer, lanceSquareHeading, drawDelay)\n\t\tend\n\tend\nend\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Throttle",
						uuid = "fcb99db5-6033-cc79-be4a-cb18db970341",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local players = TensorCore.entityList(\"chartype=4,alive,maxdistance=30\")\n\nlocal drawDuration = 8000\nlocal aoeRadius = 7\nlocal buffIDs = {4336, 4337, 4338}\n\nlocal drawer = TensorCore.getStaticDrawer(1677787134)\n\nfor playerEntID, _ in pairs(players) do\n\tfor _, buffID in ipairs(buffIDs) do\n\t\tif TensorCore.hasBuff(playerEntID, buffID) then\n\t\t\tlocal buff = TensorCore.getBuff(playerEntID, buffID)\n\t\t\tlocal buffDuration = buff.duration * 1000\n\t\t\tlocal drawDelay = buffDuration - drawDuration\n\t\t\tdrawer:addTimedCircleOnEnt(drawDuration, playerEntID, aoeRadius, drawDelay)\n\n\t\t\tbreak\n\t\tend\n\tend\nend\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Stack Circles",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13947,
						name = "Is Magitaur",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41557,
						name = "Is Holy Lance",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "[FTB] Boss 4 Holy Lance",
			throttleTime = 2000,
			uuid = "f5ccf38b-b678-552d-b018-6fed249e492a",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = 10000,
						alertTTS = true,
						alertText = "Kill Yellow",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"d198bb84-9cec-393c-b3bf-3115b23f937c",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Yellow Alert",
						uuid = "415ba831-e576-22b6-b689-833500a62ca3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertDuration = 10000,
						alertTTS = true,
						alertText = "Kill Blue",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"ab6a34ae-b2b2-a44d-ad9b-5c06d99e0b0d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Blue Alert",
						uuid = "5a78d1d5-acf2-3690-9793-50b612f00d16",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						conditionLua = "return eventArgs.entityContentID == 13947",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13947,
						name = "Is Magitaur",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						conditionLua = "return eventArgs.newActiveAura1 == 2387",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41562,
						name = "Is Aura Burst",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocMagitaurIsYellow == true",
						dequeueIfLuaFalse = true,
						name = "Is Yellow",
						uuid = "d198bb84-9cec-393c-b3bf-3115b23f937c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocMagitaurIsBlue == true",
						dequeueIfLuaFalse = true,
						name = "Is Blue",
						uuid = "ab6a34ae-b2b2-a44d-ad9b-5c06d99e0b0d",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 4 Aura Burst",
			uuid = "f4d2b409-ab99-98bd-a93e-632b7adfa451",
			version = 2,
		},
		inheritedIndex = 97,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Assassin's Dagger\", source = \"OC: FTB\" }\n\nlocal lineLength = eventArgs.aoeLength\nlocal lineWidth = eventArgs.aoeWidth\n\nlocal daggerCast = 5000\nlocal daggerDelay = 2000\n\nlocal drawDuration = 2000\n\nlocal originalHeading = eventArgs.heading\nlocal daggerRotation = math.rad(50)\n\nlocal magitaurPos = { x = 700.0, y = -476.0, z = -674.0 }\nlocal drawer = TensorCore.getMoogleDrawer()\n\nlocal function drawDagger(daggerSet, drawDelay)\n\tlocal daggerHeading = originalHeading - (daggerRotation * daggerSet)\n\tdrawer:addTimedRect(drawDuration, magitaurPos.x, magitaurPos.y, magitaurPos.z, lineLength, lineWidth, daggerHeading, drawDelay)\nend\n\nfor daggerSet = 0, 5 do\n\tif daggerSet == 0 then\n\t\tlocal daggerHeading = originalHeading\n\t\tdrawer:addTimedRect(daggerCast, magitaurPos.x, magitaurPos.y, magitaurPos.z, lineLength, lineWidth, daggerHeading)\n\t\tdrawer:addTimedRect(drawDuration, magitaurPos.x, magitaurPos.y, magitaurPos.z, lineLength, lineWidth, daggerHeading, daggerCast)\n\telse\n\t\tfor i = 1, 2 do\n\t\t\tlocal drawDelay = daggerCast + daggerDelay * (((daggerSet - 1) * 2) + i)\n\t\t\tdrawDagger(daggerSet, drawDelay)\n\t\tend\n\tend\nend\n\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"dc629907-0710-3bbd-9a10-7bad90cba281",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Daggers",
						uuid = "a840192c-7690-8d23-9d81-af3723905db6",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.contentID == 13950",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13950,
						name = "Is Dagger",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 41569",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41569,
						name = "Is Assassin's Dagger",
						uuid = "dc629907-0710-3bbd-9a10-7bad90cba281",
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "[FTB] Boss 4 Daggers",
			uuid = "ea940aa5-f6ea-d201-8adb-4094f8c8fe6d",
			version = 2,
		},
		inheritedIndex = 82,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ocMagitaurIsYellow = false\ndata.ocMagitaurIsBlue = false\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Reset State",
						uuid = "b43d4611-558a-5db0-b85b-fe143bda937f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						conditionLua = "return eventArgs.entityContentID == 13947",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13947,
						name = "Is Magitaur",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						conditionLua = "return eventArgs.newActiveAura1 == 2387",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41537,
						name = "Is Unseal",
						spellIDList = 
						{
							41537,
							41538,
						},
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 4 Reset",
			uuid = "5932e013-9a5b-5c5d-877d-28ccf9080732",
			version = 2,
		},
		inheritedIndex = 83,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ocMagitaurIsYellow = true\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Record Yellow",
						uuid = "b43d4611-558a-5db0-b85b-fe143bda937f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertTTS = true,
						alertText = "Party Out, Tanks In",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Yellow Alert",
						uuid = "415ba831-e576-22b6-b689-833500a62ca3",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ocMagitaurIsBlue = true\nself.used=true",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"a878103b-a511-fffd-bfca-5a55f901aa54",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Record Blue",
						uuid = "3abb03fb-8362-ee3e-a34a-1bacd4e1738d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Alert",
						alertTTS = true,
						alertText = "Party In, Tanks Out",
						conditions = 
						{
							
							{
								"d1e8a078-4fba-bdfe-837b-46756b2095f8",
								true,
							},
							
							{
								"5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
								true,
							},
							
							{
								"a878103b-a511-fffd-bfca-5a55f901aa54",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Blue Alert",
						uuid = "6ba6c4e2-9d93-8c04-b587-7bef1ef9b047",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						name = "In OC",
						uuid = "d1e8a078-4fba-bdfe-837b-46756b2095f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						conditionLua = "return eventArgs.entityContentID == 13947",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13947,
						name = "Is Magitaur",
						uuid = "5b1c757b-6687-3ee9-8daf-eb3da43eb1c0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Event",
						conditionLua = "return eventArgs.newActiveAura1 == 2387",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41537,
						name = "Is Yellow",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventSpellID = 41538,
						name = "Is Blue",
						uuid = "a878103b-a511-fffd-bfca-5a55f901aa54",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "[FTB] Boss 4 Blue/Yellow",
			uuid = "5fd52474-e1e5-db59-9cb1-8912f3b45eb5",
			version = 2,
		},
		inheritedIndex = 86,
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl