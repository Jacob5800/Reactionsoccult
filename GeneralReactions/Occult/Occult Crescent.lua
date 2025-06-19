local tbl = 
{
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			name = "-- Occulant Crescent",
			uuid = "7affaeba-16a3-388a-9c7a-193cccdb0287",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41590,
						conditions = 
						{
							
							{
								"f4209989-03cd-661a-b174-709466776706",
								true,
							},
							
							{
								"fc4b033f-a236-d271-893e-b6a0685a987b",
								true,
							},
							
							{
								"fe18441a-be3b-f7ca-999a-87e58634239f",
								true,
							},
							
							{
								"fd55e071-38c6-b8d4-a37d-7d73c5774bc4",
								true,
							},
							
							{
								"860ec568-237b-5474-a555-6d7322eadd4e",
								true,
							},
							
							{
								"8e8bebcf-8def-48b0-95df-ead928362b4a",
								true,
							},
							
							{
								"e8c03b24-c5e0-e4e4-be4c-c62e9247e2a2",
								true,
							},
							
							{
								"f53b0dc2-6eba-1d72-b91a-71833a2fe9cd",
								true,
							},
							
							{
								"890d87a5-7537-851b-bb9a-cf6de8658bef",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						targetType = "Detection Target",
						uuid = "fedf268d-51f4-43d2-b69e-eb93829982ba",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "f4209989-03cd-661a-b174-709466776706",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4358,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Knight",
						uuid = "fc4b033f-a236-d271-893e-b6a0685a987b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "fe18441a-be3b-f7ca-999a-87e58634239f",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 41591,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Occult Heal CD <= 1s",
						uuid = "fd55e071-38c6-b8d4-a37d-7d73c5774bc4",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Filter",
						comparator = 2,
						conditionType = 2,
						conditions = 
						{
							
							{
								"a4770a8e-440e-b868-b0cc-7cada37d0cc0",
								true,
							},
							
							{
								"19b10dcc-1465-7459-8e7d-1237fc6bde1c",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						hpValue = 50,
						name = "Party HP",
						uuid = "860ec568-237b-5474-a555-6d7322eadd4e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 50,
						name = "50% HP",
						partyTargetType = "Detection Target",
						uuid = "a4770a8e-440e-b868-b0cc-7cada37d0cc0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						inRangeValue = 30,
						name = "Within 30 Yards",
						partyTargetType = "Detection Target",
						uuid = "19b10dcc-1465-7459-8e7d-1237fc6bde1c",
						version = 2,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 3,
						dequeueIfLuaFalse = true,
						mpValue = 50,
						name = "Have MP",
						uuid = "8e8bebcf-8def-48b0-95df-ead928362b4a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 14,
						dequeueIfLuaFalse = true,
						jobIDList = 
						{
							31,
							21,
						},
						name = "No Mana Job",
						uuid = "e8c03b24-c5e0-e4e4-be4c-c62e9247e2a2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "f53b0dc2-6eba-1d72-b91a-71833a2fe9cd",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "890d87a5-7537-851b-bb9a-cf6de8658bef",
						version = 2,
					},
				},
			},
			name = "P. Knight Occult Heal",
			throttleTime = 1250,
			uuid = "d6d3830c-4f68-ae05-923c-9b2d8fd9bd5d",
			version = 2,
		},
		inheritedIndex = 2,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41589,
						conditions = 
						{
							
							{
								"db68b232-24e2-2a01-ac29-564ead6c714c",
								true,
							},
							
							{
								"bdffe94e-ca3f-daa9-9315-d147de5104f1",
								true,
							},
							
							{
								"0ac5688a-1497-b876-8173-72c5e7eedf35",
								true,
							},
							
							{
								"e56f8f40-375d-f91d-8679-de1f67ac0ed9",
								true,
							},
							
							{
								"e87ce4db-5846-ecda-afe6-4e02117886b7",
								true,
							},
							
							{
								"411a9ae6-6ddc-6156-8c1f-fdb4c91029f4",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Pray",
						uuid = "26bc4764-1c77-8b11-ac38-45f3ba906dd7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "db68b232-24e2-2a01-ac29-564ead6c714c",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4358,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Knight",
						uuid = "bdffe94e-ca3f-daa9-9315-d147de5104f1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "0ac5688a-1497-b876-8173-72c5e7eedf35",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 50,
						name = "HP <= 50%",
						uuid = "e56f8f40-375d-f91d-8679-de1f67ac0ed9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "e87ce4db-5846-ecda-afe6-4e02117886b7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "411a9ae6-6ddc-6156-8c1f-fdb4c91029f4",
						version = 2,
					},
				},
			},
			name = "P. Knight Pray",
			throttleTime = 1250,
			uuid = "e26a7d55-62ee-8f3a-a131-ad64aaef15c3",
			version = 2,
		},
		inheritedIndex = 3,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41591,
						conditions = 
						{
							
							{
								"db68b232-24e2-2a01-ac29-564ead6c714c",
								true,
							},
							
							{
								"bdffe94e-ca3f-daa9-9315-d147de5104f1",
								true,
							},
							
							{
								"0ac5688a-1497-b876-8173-72c5e7eedf35",
								true,
							},
							
							{
								"72d1c6d2-76ad-d6a3-9775-15d5ad51adaa",
								true,
							},
							
							{
								"e56f8f40-375d-f91d-8679-de1f67ac0ed9",
								true,
							},
							
							{
								"7539c735-58d4-57fb-9e3d-feb5062367cf",
								true,
							},
							
							{
								"4ff4a8ae-2218-199f-a6f3-0ecf3cd31311",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Pledge",
						uuid = "26bc4764-1c77-8b11-ac38-45f3ba906dd7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "db68b232-24e2-2a01-ac29-564ead6c714c",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4358,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Knight",
						uuid = "bdffe94e-ca3f-daa9-9315-d147de5104f1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "0ac5688a-1497-b876-8173-72c5e7eedf35",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41591,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Pledge CD <= 3s",
						uuid = "72d1c6d2-76ad-d6a3-9775-15d5ad51adaa",
						version = 2,
					},
					inheritedIndex = 4,
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 15,
						name = "HP <= 15%",
						uuid = "e56f8f40-375d-f91d-8679-de1f67ac0ed9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "7539c735-58d4-57fb-9e3d-feb5062367cf",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "4ff4a8ae-2218-199f-a6f3-0ecf3cd31311",
						version = 2,
					},
				},
			},
			name = "P. Knight Pledge",
			throttleTime = 1250,
			uuid = "149b85a5-bf49-2e66-a0f5-cc126faf37a0",
			version = 2,
		},
		inheritedIndex = 4,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41597,
						actionLua = "return ActionList:Get(5,32),Player.id,false,false",
						conditions = 
						{
							
							{
								"d6d91e2f-272b-5401-ad3f-f0a5c81c766e",
								true,
							},
							
							{
								"53db5447-8ce7-e699-b734-b9c0a383b622",
								true,
							},
							
							{
								"bcc88eba-f173-1e61-83c1-24f032463bc0",
								true,
							},
							
							{
								"ae21189b-8797-1f06-95ff-b20fb8e26e69",
								false,
							},
							
							{
								"1ceb8816-2ec9-abf4-9e91-eafe739ef659",
								true,
							},
							
							{
								"21f5a719-634c-c348-b3f6-fe1f01b33d86",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction3",
						luaNeedsWeaveWindow = true,
						luaReturnsAction = true,
						name = "Counterstance",
						uuid = "71f18f33-b51d-5c63-9bfb-fd57b9b189ad",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "d6d91e2f-272b-5401-ad3f-f0a5c81c766e",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4360,
						category = "Self",
						dequeueIfLuaFalse = true,
						filterTargetType = "ContentID",
						name = "Is P. Monk",
						uuid = "53db5447-8ce7-e699-b734-b9c0a383b622",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						inCombatType = 2,
						name = "Not In Combat",
						uuid = "bcc88eba-f173-1e61-83c1-24f032463bc0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 3,
						buffID = 4238,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Counterstance",
						uuid = "ae21189b-8797-1f06-95ff-b20fb8e26e69",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "1ceb8816-2ec9-abf4-9e91-eafe739ef659",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "21f5a719-634c-c348-b3f6-fe1f01b33d86",
						version = 2,
					},
				},
			},
			name = "P. Monk Counterstance",
			throttleTime = 1000,
			uuid = "dc88144f-02eb-1ddc-af3f-db7d95ca782b",
			version = 2,
		},
		inheritedIndex = 5,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41596,
						actionLua = "return ActionList:Get(5,32),Player.id,false,false",
						conditions = 
						{
							
							{
								"5236742b-6d45-ba4b-9afc-fb4fc5a75597",
								true,
							},
							
							{
								"428912a9-77fd-3cdc-967f-f611e385b71d",
								true,
							},
							
							{
								"3ecb5974-9132-edef-bc9c-2bbb38650199",
								true,
							},
							
							{
								"e25da5a1-e09f-13f7-a76c-4d9eb83a6848",
								true,
							},
							
							{
								"1c7f9078-12e7-990c-91ac-770991984265",
								true,
							},
							
							{
								"f7205721-6955-3735-ba96-99ffa9c751fd",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction2",
						luaNeedsWeaveWindow = true,
						luaReturnsAction = true,
						name = "Occult Counter",
						targetType = "Current Target",
						uuid = "46adab9a-0c98-5ad3-84c9-8f07366fc978",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "5236742b-6d45-ba4b-9afc-fb4fc5a75597",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4360,
						category = "Self",
						dequeueIfLuaFalse = true,
						filterTargetType = "ContentID",
						name = "Is P. Monk",
						uuid = "428912a9-77fd-3cdc-967f-f611e385b71d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "3ecb5974-9132-edef-bc9c-2bbb38650199",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41596,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Occult Counter CD <= 3s",
						uuid = "e25da5a1-e09f-13f7-a76c-4d9eb83a6848",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "1c7f9078-12e7-990c-91ac-770991984265",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "f7205721-6955-3735-ba96-99ffa9c751fd",
						version = 2,
					},
				},
			},
			name = "P. Monk Counter",
			throttleTime = 1000,
			uuid = "41d0f0ef-c4ea-6f7d-b4d5-b336f4d41284",
			version = 2,
		},
		inheritedIndex = 7,
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
						actionLua = "if not data.pMonkTogglesInitialised then\n\tdata.pMonkForceKickEnabled = false\n\tdata.pMonkNoKickEnabled = false\n\tdata.pMonkTogglesInitialised = true\nend",
						conditions = 
						{
							
							{
								"12bed729-8bf4-b235-b279-e5570f4b249b",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Init",
						uuid = "f824ba34-7a6a-8f76-aa79-e805614d632f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "GUI:SetNextWindowSize(225, 50, GUI.SetCond_Always)\nGUI:Begin(\"Monk Kick Toggles\", true, GUI.WindowFlags_NoTitleBar | GUI.WindowFlags_NoResize)\nlocal buttonWidth = 100\n\nif data.pMonkForceKickEnabled then\n\tGUI:PushStyleColor(GUI.Col_Button, 0.2, 0.7, 0.2, 1.0)\nend\n\nif GUI:Button(\"Force Kick\", buttonWidth, 35) then\n\tif data.pMonkNoKickEnabled then\n\t\tdata.pMonkNoKickEnabled = false\n\tend\n\n\tdata.pMonkForceKickEnabled = not data.pMonkForceKickEnabled\nend\n\nGUI:PopStyleColor()\n\nGUI:SameLine()\n\nif data.pMonkNoKickEnabled then\n\tGUI:PushStyleColor(GUI.Col_Button, 0.2, 0.7, 0.2, 1.0)\nend\n\nif GUI:Button(\"No Kick\", buttonWidth, 35) then\n\tif data.pMonkForceKickEnabled then\n\t\tdata.pMonkForceKickEnabled = false\n\tend\n\n\tdata.pMonkNoKickEnabled = not data.pMonkNoKickEnabled\nend\n\nGUI:PopStyleColor()\n\nGUI:End()",
						conditions = 
						{
							
							{
								"12bed729-8bf4-b235-b279-e5570f4b249b",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Draw",
						uuid = "b84116e5-badb-44c3-b04f-0a372aceb5b3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 4360,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Monk",
						uuid = "12bed729-8bf4-b235-b279-e5570f4b249b",
						version = 2,
					},
				},
			},
			eventType = 13,
			name = "P. Monk Kick Toggle",
			uuid = "4e2f6e7f-2afc-a411-b017-8a8bf5ddc247",
			version = 2,
		},
		inheritedIndex = 8,
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
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"80fa16e8-d4b7-cb1c-8e8c-59e26259ec36",
								true,
							},
							
							{
								"cf907d2d-9e97-8cd1-bc08-5de61635852f",
								true,
							},
							
							{
								"1e39a820-0470-b3d6-b953-37ee8ae56c84",
								true,
							},
							
							{
								"3eac1167-173e-1707-bb6c-86e58d4e12ef",
								true,
							},
							
							{
								"ae8c83cd-5f51-2d12-bade-38a7c6193da7",
								true,
							},
							
							{
								"da977cd9-925d-daf0-ba9f-ebaa1f25c7d4",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Phantom Kick Toggle",
						uuid = "ae921d8a-ff02-76e3-a1a4-663485d80bf7",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"80fa16e8-d4b7-cb1c-8e8c-59e26259ec36",
								true,
							},
							
							{
								"cf907d2d-9e97-8cd1-bc08-5de61635852f",
								true,
							},
							
							{
								"1e39a820-0470-b3d6-b953-37ee8ae56c84",
								true,
							},
							
							{
								"3eac1167-173e-1707-bb6c-86e58d4e12ef",
								true,
							},
							
							{
								"ae8c83cd-5f51-2d12-bade-38a7c6193da7",
								true,
							},
							
							{
								"03652a17-e335-3466-965d-ce830120cebe",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Phantom Kick AOE",
						uuid = "76136017-d5ae-7c80-92f3-73a3e1af1961",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"80fa16e8-d4b7-cb1c-8e8c-59e26259ec36",
								true,
							},
							
							{
								"cf907d2d-9e97-8cd1-bc08-5de61635852f",
								true,
							},
							
							{
								"1e39a820-0470-b3d6-b953-37ee8ae56c84",
								true,
							},
							
							{
								"3eac1167-173e-1707-bb6c-86e58d4e12ef",
								true,
							},
							
							{
								"ae8c83cd-5f51-2d12-bade-38a7c6193da7",
								true,
							},
							
							{
								"fe717d00-c7a5-f61e-be0a-4038932c2f67",
								true,
							},
							
							{
								"297bd7a0-a008-d8d5-be0f-1f90b900a388",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Phantom Kick Forced",
						uuid = "59161e23-4f81-7fe7-a42e-aeca951045b6",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"80fa16e8-d4b7-cb1c-8e8c-59e26259ec36",
								true,
							},
							
							{
								"cf907d2d-9e97-8cd1-bc08-5de61635852f",
								true,
							},
							
							{
								"1e39a820-0470-b3d6-b953-37ee8ae56c84",
								true,
							},
							
							{
								"3eac1167-173e-1707-bb6c-86e58d4e12ef",
								true,
							},
							
							{
								"ae8c83cd-5f51-2d12-bade-38a7c6193da7",
								true,
							},
							
							{
								"fe717d00-c7a5-f61e-be0a-4038932c2f67",
								true,
							},
							
							{
								"da977cd9-925d-daf0-ba9f-ebaa1f25c7d4",
								false,
							},
							
							{
								"03652a17-e335-3466-965d-ce830120cebe",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Phantom Kick",
						uuid = "bfa0f030-fde3-d881-b3bb-eb4ae1aa86c9",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"80fa16e8-d4b7-cb1c-8e8c-59e26259ec36",
								true,
							},
							
							{
								"cf907d2d-9e97-8cd1-bc08-5de61635852f",
								true,
							},
							
							{
								"1e39a820-0470-b3d6-b953-37ee8ae56c84",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Fallback Deactivate",
						uuid = "5df620a7-38a7-4c47-bd0e-07096f4c942a",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "80fa16e8-d4b7-cb1c-8e8c-59e26259ec36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4360,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Monk",
						uuid = "cf907d2d-9e97-8cd1-bc08-5de61635852f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "1e39a820-0470-b3d6-b953-37ee8ae56c84",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "3eac1167-173e-1707-bb6c-86e58d4e12ef",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41595,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Kick CD <= 3s",
						uuid = "ae8c83cd-5f51-2d12-bade-38a7c6193da7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 15,
						name = "Target <= 15y",
						uuid = "fe717d00-c7a5-f61e-be0a-4038932c2f67",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.pMonkForceKickEnabled",
						dequeueIfLuaFalse = true,
						name = "Force Kick Enabled",
						uuid = "297bd7a0-a008-d8d5-be0f-1f90b900a388",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.pMonkNoKickEnabled",
						dequeueIfLuaFalse = true,
						name = "No Kick Enabled",
						uuid = "da977cd9-925d-daf0-ba9f-ebaa1f25c7d4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local jumpDist = 15\nlocal playerPos = TensorCore.mGetPlayer().pos\nlocal target = TensorCore.mGetTarget()\n\nif target then\n\tlocal targetPos = target.pos\n\tlocal targetHeading = TensorCore.getHeadingToTarget(playerPos, targetPos)\n\tlocal jumpPos = TensorCore.getPosInDirection(playerPos, targetHeading, jumpDist)\n\n\treturn not TensorCore.Avoidance.inAnyAOE(jumpPos.x, jumpPos.y, jumpPos.z)\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "AOE Check",
						uuid = "03652a17-e335-3466-965d-ce830120cebe",
						version = 2,
					},
				},
			},
			name = "P. Monk Kick",
			throttleTime = 100,
			uuid = "c27a84af-fc0f-e48c-8c66-112f503d61b2",
			version = 2,
		},
		inheritedIndex = 9,
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
						actionLua = "local jumpDist = 15\nlocal player = TensorCore.mGetPlayer()\nlocal target = TensorCore.mGetTarget()\n\nif not target or target.id == player.id then return end\n\nlocal playerPos = player.pos\nlocal targetPos = target.pos\nlocal targetHeading = TensorCore.getHeadingToTarget(playerPos, targetPos)\nlocal jumpPos = TensorCore.getPosInDirection(playerPos, targetHeading, jumpDist)\n\nlocal inAOE = TensorCore.Avoidance.inAnyAOE(jumpPos.x, jumpPos.y, jumpPos.z)\nlocal indicatorColor = (inAOE and 1677721855) or 1677786914\n\nlocal drawer = TensorCore.getStaticDrawer(indicatorColor)\ndrawer.colorOutline = 0xFFFFFFFF\ndrawer:addCircle(jumpPos.x, jumpPos.y, jumpPos.z, 0.5, true)\ndrawer.colorOutline = nil",
						conditions = 
						{
							
							{
								"8cda3bac-be8c-b63c-8e06-ca48d73102b1",
								true,
							},
							
							{
								"f8f04c24-0e45-7c68-b56f-c69a4ad2f7de",
								true,
							},
							
							{
								"51b0116c-70ba-b338-bac7-0082efd72ccc",
								true,
							},
							
							{
								"ce2478f3-6f7a-4f4d-9944-6b484c1303ab",
								true,
							},
							
							{
								"e4fdc1a9-6695-72f4-a590-abd0c067c80c",
								true,
							},
							
							{
								"3df80ec7-5864-f5e1-bb33-e7a93a2c5519",
								true,
							},
							
							{
								"f543f117-46df-ba1c-a5c0-7dd9e1cee8f1",
								true,
							},
						},
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Jump Indicator",
						uuid = "bfa0f030-fde3-d881-b3bb-eb4ae1aa86c9",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local jumpDist = 15\nlocal player = TensorCore.mGetPlayer()\nlocal target = TensorCore.mGetTarget()\n\nif not target or target.id == player.id then return end\n\nlocal playerPos = player.pos\nlocal targetPos = target.pos\nlocal targetHeading = TensorCore.getHeadingToTarget(playerPos, targetPos)\nlocal jumpPos = TensorCore.getPosInDirection(playerPos, targetHeading, jumpDist)\n\nlocal inAOE = TensorCore.Avoidance.inAnyAOE(jumpPos.x, jumpPos.y, jumpPos.z)\nlocal indicatorColor = 1677787134\n\nlocal drawer = TensorCore.getStaticDrawer(indicatorColor)\ndrawer.colorOutline = 0xFFFFFFFF\ndrawer:addCircle(jumpPos.x, jumpPos.y, jumpPos.z, 0.5, true)\ndrawer.colorOutline = nil",
						conditions = 
						{
							
							{
								"8cda3bac-be8c-b63c-8e06-ca48d73102b1",
								true,
							},
							
							{
								"f8f04c24-0e45-7c68-b56f-c69a4ad2f7de",
								true,
							},
							
							{
								"51b0116c-70ba-b338-bac7-0082efd72ccc",
								true,
							},
							
							{
								"ce2478f3-6f7a-4f4d-9944-6b484c1303ab",
								true,
							},
							
							{
								"e4fdc1a9-6695-72f4-a590-abd0c067c80c",
								true,
							},
							
							{
								"3df80ec7-5864-f5e1-bb33-e7a93a2c5519",
								false,
							},
							
							{
								"f543f117-46df-ba1c-a5c0-7dd9e1cee8f1",
								true,
							},
						},
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Jump Indicator OOR",
						uuid = "37651124-5042-908b-8bf4-b0824f1e01b5",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "8cda3bac-be8c-b63c-8e06-ca48d73102b1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4360,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Monk",
						uuid = "f8f04c24-0e45-7c68-b56f-c69a4ad2f7de",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Am Alive",
						uuid = "51b0116c-70ba-b338-bac7-0082efd72ccc",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "ce2478f3-6f7a-4f4d-9944-6b484c1303ab",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "e4fdc1a9-6695-72f4-a590-abd0c067c80c",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 15,
						name = "Target <= 15y",
						uuid = "3df80ec7-5864-f5e1-bb33-e7a93a2c5519",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 10,
						actionID = 41595,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Kick CD <= 10s",
						uuid = "f543f117-46df-ba1c-a5c0-7dd9e1cee8f1",
						version = 2,
					},
				},
			},
			eventType = 12,
			name = "P. Monk Jump Indicator",
			uuid = "d02f1d00-64c8-7239-8291-fef76f74db52",
			version = 2,
		},
		inheritedIndex = 10,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41598,
						actionLua = "return ActionList:Get(5,32),Player.id,false,false",
						conditions = 
						{
							
							{
								"5236742b-6d45-ba4b-9afc-fb4fc5a75597",
								true,
							},
							
							{
								"428912a9-77fd-3cdc-967f-f611e385b71d",
								true,
							},
							
							{
								"3ecb5974-9132-edef-bc9c-2bbb38650199",
								true,
							},
							
							{
								"e25da5a1-e09f-13f7-a76c-4d9eb83a6848",
								true,
							},
							
							{
								"33a629ca-2bb9-8afb-8998-af2275f38bbe",
								true,
							},
							
							{
								"1c7f9078-12e7-990c-91ac-770991984265",
								true,
							},
							
							{
								"f7205721-6955-3735-ba96-99ffa9c751fd",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction2",
						luaNeedsWeaveWindow = true,
						luaReturnsAction = true,
						name = "Occult Chakra",
						uuid = "46adab9a-0c98-5ad3-84c9-8f07366fc978",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "5236742b-6d45-ba4b-9afc-fb4fc5a75597",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4360,
						category = "Self",
						dequeueIfLuaFalse = true,
						filterTargetType = "ContentID",
						name = "Is P. Monk",
						uuid = "428912a9-77fd-3cdc-967f-f611e385b71d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "3ecb5974-9132-edef-bc9c-2bbb38650199",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41598,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Occult Chakra CD <= 3s",
						uuid = "e25da5a1-e09f-13f7-a76c-4d9eb83a6848",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 29.89999961853,
						name = "HP < 30%",
						uuid = "33a629ca-2bb9-8afb-8998-af2275f38bbe",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "1c7f9078-12e7-990c-91ac-770991984265",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "f7205721-6955-3735-ba96-99ffa9c751fd",
						version = 2,
					},
				},
			},
			name = "P. Monk Occult Chakra",
			throttleTime = 1000,
			uuid = "002ce728-0d37-9d87-9218-caf9da0b1a65",
			version = 2,
		},
		inheritedIndex = 11,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41647,
						conditions = 
						{
							
							{
								"bead46c3-17fe-4bf8-a9cb-2e315439988f",
								true,
							},
							
							{
								"43b369ad-2b19-c673-8478-6db60cf737fb",
								true,
							},
							
							{
								"b35fdc9a-5bdd-3401-aab1-7b46c2f170ed",
								true,
							},
							
							{
								"77b8eed8-0cfb-695a-a37c-568bb356cfeb",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_Hotbar_DutyAction3",
						ignoreWeaveRules = true,
						name = "Vigilance",
						uuid = "b5b7bdaf-d738-0790-9675-a5b28a36f08b",
						variableTogglesType = 2,
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
						name = "South Horn",
						uuid = "bead46c3-17fe-4bf8-a9cb-2e315439988f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						inCombatType = 2,
						name = "Out of Combat",
						uuid = "43b369ad-2b19-c673-8478-6db60cf737fb",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4369,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Phantom Thief",
						uuid = "b35fdc9a-5bdd-3401-aab1-7b46c2f170ed",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "77b8eed8-0cfb-695a-a37c-568bb356cfeb",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "269ed8e2-ad8e-db38-bd40-81e0877c72b2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "162cf644-0e36-bb8c-bd7f-20fa627e9638",
						version = 2,
					},
				},
			},
			name = "[Thief] Vigilance",
			throttleTime = 1250,
			uuid = "1017b58d-f39f-e551-a652-11aaff349c79",
			version = 2,
		},
		inheritedIndex = 12,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41645,
						conditions = 
						{
							
							{
								"bead46c3-17fe-4bf8-a9cb-2e315439988f",
								true,
							},
							
							{
								"43b369ad-2b19-c673-8478-6db60cf737fb",
								true,
							},
							
							{
								"b35fdc9a-5bdd-3401-aab1-7b46c2f170ed",
								true,
							},
							
							{
								"efaf9868-fc91-e133-b7ee-62e8133bbcc0",
								true,
							},
							
							{
								"5fdd4621-9183-81d3-a553-2ad42b69ce8d",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction2",
						name = "Steal",
						targetType = "Current Target",
						uuid = "b5b7bdaf-d738-0790-9675-a5b28a36f08b",
						variableTogglesType = 2,
						version = 2.1,
					},
					inheritedIndex = 1,
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
						name = "South Horn",
						uuid = "bead46c3-17fe-4bf8-a9cb-2e315439988f",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In Combat",
						uuid = "43b369ad-2b19-c673-8478-6db60cf737fb",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4369,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Phantom Thief",
						uuid = "b35fdc9a-5bdd-3401-aab1-7b46c2f170ed",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41645,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Not on CD",
						uuid = "efaf9868-fc91-e133-b7ee-62e8133bbcc0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "5fdd4621-9183-81d3-a553-2ad42b69ce8d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "7c1ff095-31ec-f18b-a239-a2c53c4b9b18",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "371775fb-5512-90e4-9fa6-988f18d03203",
						version = 2,
					},
				},
			},
			name = "[Thief] Steal",
			throttleTime = 1250,
			uuid = "673b17b8-6cfc-7024-b198-23ab7a53080b",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41649,
						conditions = 
						{
							
							{
								"f63493bb-f733-119c-a758-9b0599d8d1bc",
								true,
							},
							
							{
								"183e2fda-dc8b-df87-805b-a860fc5177a9",
								true,
							},
							
							{
								"c3f5e16a-bd98-c5b2-8260-e5b2d04a1ed0",
								true,
							},
							
							{
								"58f4e568-e03e-81de-9f7a-54fcb24e80ed",
								true,
							},
							
							{
								"a81e78f1-987b-edbd-a012-344d8863f871",
								false,
							},
							
							{
								"0871ec24-fb24-fa3d-97e0-3425718700b7",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						targetType = "Current Target",
						uuid = "41eee827-c894-0837-946e-33eee9b4e04b",
						version = 2.1,
					},
					inheritedIndex = 1,
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
						name = "South Horn",
						uuid = "f63493bb-f733-119c-a758-9b0599d8d1bc",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4369,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Phantom Thief",
						uuid = "183e2fda-dc8b-df87-805b-a860fc5177a9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "c3f5e16a-bd98-c5b2-8260-e5b2d04a1ed0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41649,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Not on CD",
						uuid = "58f4e568-e03e-81de-9f7a-54fcb24e80ed",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 10,
						buffID = 4279,
						dequeueIfLuaFalse = true,
						uuid = "a81e78f1-987b-edbd-a012-344d8863f871",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "0871ec24-fb24-fa3d-97e0-3425718700b7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "e9f60f80-5778-5e4b-ba59-cd5f54756373",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "b706117d-8923-19ff-bc0b-fa0c15b28328",
						version = 2,
					},
				},
			},
			name = "[Thief] Pilfer Weapon",
			throttleTime = 1250,
			uuid = "2d05af6c-3473-685c-8e8e-4dd6f5e6bf09",
			version = 2,
		},
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41611,
						conditions = 
						{
							
							{
								"a9b88350-2ec7-4cf1-b280-4a09d50599df",
								true,
							},
							
							{
								"15e5b8fb-df9c-820c-b1a5-52018a844a0b",
								true,
							},
							
							{
								"c9323a23-d798-92ea-a934-5808aff57633",
								true,
							},
							
							{
								"c0b2345f-4fbe-2e11-883b-6f1a10584769",
								false,
							},
							
							{
								"29f23351-52ca-b461-91cc-93f0b0e10321",
								true,
							},
							
							{
								"f66ceece-6cb6-90e8-b592-76a5836dbf06",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						ignoreWeaveRules = true,
						name = "Battle Bell Not In Combat",
						uuid = "17997d14-5af1-4dea-9340-bdbc1e2c0b93",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						actionID = 41611,
						conditions = 
						{
							
							{
								"a9b88350-2ec7-4cf1-b280-4a09d50599df",
								true,
							},
							
							{
								"15e5b8fb-df9c-820c-b1a5-52018a844a0b",
								true,
							},
							
							{
								"bfce063d-cda4-aae4-8cb4-47aaa5bd4c9e",
								true,
							},
							
							{
								"c9323a23-d798-92ea-a934-5808aff57633",
								true,
							},
							
							{
								"c0b2345f-4fbe-2e11-883b-6f1a10584769",
								true,
							},
							
							{
								"29f23351-52ca-b461-91cc-93f0b0e10321",
								true,
							},
							
							{
								"f66ceece-6cb6-90e8-b592-76a5836dbf06",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Battle Bell In Combat",
						uuid = "86fc8ed6-5ccb-dbf3-bcb5-e4e38d195053",
						version = 2.1,
					},
					inheritedIndex = 2,
					inheritedOverwrites = 
					{
						conditions = 
						{
							
							{
								type = "remove",
								value = 
								{
									"d8720967-962e-a798-b184-d2ca5366f741",
									true,
								},
							},
							
							{
								position = 1,
								type = "add",
								value = 
								{
									"4bf7209d-8c34-782c-a4dd-63b77e3e4ae6",
									true,
								},
							},
							
							{
								type = "add",
								value = 
								{
									"c4ae7583-ea9c-83b4-819e-c3f5d969fec1",
									true,
								},
							},
							
							{
								type = "add",
								value = 
								{
									"1bd49bca-4e66-cdf9-b946-1b57d123c7d8",
									true,
								},
							},
						},
					},
				},
				
				{
					data = 
					{
						actionID = 41611,
						conditions = 
						{
							
							{
								"a9b88350-2ec7-4cf1-b280-4a09d50599df",
								true,
							},
							
							{
								"15e5b8fb-df9c-820c-b1a5-52018a844a0b",
								true,
							},
							
							{
								"bfce063d-cda4-aae4-8cb4-47aaa5bd4c9e",
								true,
							},
							
							{
								"c9323a23-d798-92ea-a934-5808aff57633",
								true,
							},
							
							{
								"c0b2345f-4fbe-2e11-883b-6f1a10584769",
								true,
							},
							
							{
								"29f23351-52ca-b461-91cc-93f0b0e10321",
								true,
							},
							
							{
								"f66ceece-6cb6-90e8-b592-76a5836dbf06",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Battle Bell Tank",
						targetType = "Target of Current Target",
						uuid = "8c8bb21a-4351-26f6-b8e2-4a528e484a5b",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "a9b88350-2ec7-4cf1-b280-4a09d50599df",
						version = 2,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 4364,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Geomancer",
						uuid = "15e5b8fb-df9c-820c-b1a5-52018a844a0b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "bfce063d-cda4-aae4-8cb4-47aaa5bd4c9e",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						actionCDValue = 1.5,
						actionID = 41611,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Battle Bell CD <= 1.5s",
						uuid = "c9323a23-d798-92ea-a934-5808aff57633",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 3,
						buffID = 4251,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Battle Bell",
						uuid = "c0b2345f-4fbe-2e11-883b-6f1a10584769",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "29f23351-52ca-b461-91cc-93f0b0e10321",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "f66ceece-6cb6-90e8-b592-76a5836dbf06",
						version = 2,
					},
				},
			},
			name = "P. Geomancer Battle Bell",
			throttleTime = 1250,
			uuid = "f54a354e-293a-9e76-98e9-0251950cb971",
			version = 2,
		},
		inheritedIndex = 14,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41619,
						conditions = 
						{
							
							{
								"d8720967-962e-a798-b184-d2ca5366f741",
								true,
							},
							
							{
								"15447371-b7b2-205c-879f-6c9b8f3492f4",
								true,
							},
							
							{
								"e930a2b8-8623-f4bd-a86a-4025d41e6e91",
								true,
							},
							
							{
								"4bf7209d-8c34-782c-a4dd-63b77e3e4ae6",
								true,
							},
							
							{
								"545c4e2e-fb48-d9e3-b695-3ab27bf011ad",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						targetType = "Target of Current Target",
						uuid = "8020dfc9-8a08-9162-91c4-c9a4a69daab4",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						actionID = 41619,
						conditions = 
						{
							
							{
								"d8720967-962e-a798-b184-d2ca5366f741",
								true,
							},
							
							{
								"15447371-b7b2-205c-879f-6c9b8f3492f4",
								true,
							},
							
							{
								"e930a2b8-8623-f4bd-a86a-4025d41e6e91",
								true,
							},
							
							{
								"4bf7209d-8c34-782c-a4dd-63b77e3e4ae6",
								true,
							},
							
							{
								"545c4e2e-fb48-d9e3-b695-3ab27bf011ad",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						ignoreWeaveRules = true,
						uuid = "ba53d819-261f-6c17-aafe-5a272d9b52fd",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
						},
						name = "South Horn",
						uuid = "d8720967-962e-a798-b184-d2ca5366f741",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4364,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Geomancer",
						uuid = "15447371-b7b2-205c-879f-6c9b8f3492f4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 2.5,
						actionID = 41619,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						uuid = "e930a2b8-8623-f4bd-a86a-4025d41e6e91",
						version = 2,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "4bf7209d-8c34-782c-a4dd-63b77e3e4ae6",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 5,
						buffID = 4257,
						category = "Self",
						name = "Has Ringing Respite",
						uuid = "545c4e2e-fb48-d9e3-b695-3ab27bf011ad",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "9e163534-7e2d-de04-9fca-c1039077a3ef",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "ad5d769a-5e84-6753-a3d4-8b35add04643",
						version = 2,
					},
				},
			},
			name = "[Geo] Ringing Respite",
			uuid = "124cd983-fe7a-d7f9-9ed9-ad6f8a38cf30",
			version = 2,
		},
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
						actionLua = "local deadPlayers = TensorCore.entityList(\"chartype=4,los,dead,maxdistance=30\")\nlocal raisablePlayers = {}\nlocal raisableChemists = {}\nif (table.valid(deadPlayers)) then\n\tfor id, player in pairs(deadPlayers) do\n\t\tlocal buffs = player.buffs\n\t\tlocal raised = false\n        local outOfRaises = false\n\t\tlocal chemist = false \n\n\t\tif (TableSize(buffs) > 0) then\n\t\t\tfor id, b in pairs(buffs) do\n\t\t\t\tif (b.id == 148) then\n\t\t\t\t\traised = true\n\t\t\t\tend\n                if (b.id == 4263) then\n                    outOfRaises = true\n                end\n\t\t\t\tif (b.id == 4367) then\n\t\t\t\t\tchemist = true\n\t\t\t\tend\n\t\t\tend\n\t\tend\n\t\t\n\t\tif(raised == false and outOfRaises == false) then\n\t\t\tif (chemist == true) then\n\t\t\t\ttable.insert(raisableChemists, player)\n\t\t\telse\n\t\t\t\ttable.insert(raisablePlayers, player)\n\t\t\tend\n\t\tend\n\tend\nend\nif (table.valid(raisableChemists)) then\n\tfor id, player in pairs(raisableChemists) do\n\t\tif (data.lastRaiseNotification == nil or TimeSince(data.lastRaiseNotification) > 5000) then\n\t\t\tdata.lastRaiseNotification = Now()\n\t\t\tSendTextCommand(\"/e Raising \" .. player.name .. \" <se.3>\")\n\t\tend\n\t\treturn ActionList:Get(1,41634), player.id, true, true\n\tend\nend\nif (table.valid(raisablePlayers)) then\n\tfor id, player in pairs(raisablePlayers) do\n\t\tif (data.lastRaiseNotification == nil or TimeSince(data.lastRaiseNotification) > 5000) then\n\t\t\tdata.lastRaiseNotification = Now()\n\t\t\tSendTextCommand(\"/e Raising \" .. player.name .. \" <se.2>\")\n\t\tend\n\t\treturn ActionList:Get(1,41634), player.id, true, false\n\tend\nend\nself.used = true",
						conditions = 
						{
							
							{
								"47e6a211-bd39-977b-a824-489c3cf0978a",
								true,
							},
							
							{
								"598575f8-788c-e333-afb1-b0807ff3b36b",
								true,
							},
							
							{
								"dcc00f33-64a3-4d4c-8a66-3bd6d9e905aa",
								true,
							},
							
							{
								"3dae1027-5a9e-e761-bd88-4af39d6b83dc",
								true,
							},
							
							{
								"17813282-8c8c-d3b1-a141-96800344f60b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						luaReturnsAction = true,
						uuid = "9ef9392a-2098-01bc-9da6-ec288fb7b803",
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
						},
						name = "South Horn",
						uuid = "47e6a211-bd39-977b-a824-489c3cf0978a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4367,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Chemist",
						uuid = "598575f8-788c-e333-afb1-b0807ff3b36b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TableSize(TensorCore.entityList(\"chartype=4,los,dead,maxdistance=30\")) ~= 0",
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "Dead Player",
						uuid = "dcc00f33-64a3-4d4c-8a66-3bd6d9e905aa",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41634,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						uuid = "3dae1027-5a9e-e761-bd88-4af39d6b83dc",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "17813282-8c8c-d3b1-a141-96800344f60b",
						version = 2,
					},
				},
			},
			mechanicTime = 433,
			name = "[Chemist] Rez",
			timelineIndex = 74,
			uuid = "c944e914-e7fe-ad3d-b61d-adeb57939f5f",
			version = 2,
		},
		inheritedIndex = 21,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41624,
						conditions = 
						{
							
							{
								"f63493bb-f733-119c-a758-9b0599d8d1bc",
								true,
							},
							
							{
								"183e2fda-dc8b-df87-805b-a860fc5177a9",
								true,
							},
							
							{
								"c3f5e16a-bd98-c5b2-8260-e5b2d04a1ed0",
								true,
							},
							
							{
								"58f4e568-e03e-81de-9f7a-54fcb24e80ed",
								true,
							},
							
							{
								"a81e78f1-987b-edbd-a012-344d8863f871",
								false,
							},
							
							{
								"0871ec24-fb24-fa3d-97e0-3425718700b7",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						targetType = "Current Target",
						uuid = "41eee827-c894-0837-946e-33eee9b4e04b",
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
						name = "South Horn",
						uuid = "f63493bb-f733-119c-a758-9b0599d8d1bc",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4365,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Time Mage",
						uuid = "183e2fda-dc8b-df87-805b-a860fc5177a9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In Combat",
						uuid = "c3f5e16a-bd98-c5b2-8260-e5b2d04a1ed0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41624,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "Not on CD",
						uuid = "58f4e568-e03e-81de-9f7a-54fcb24e80ed",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 10,
						buffID = 4259,
						uuid = "a81e78f1-987b-edbd-a012-344d8863f871",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "0871ec24-fb24-fa3d-97e0-3425718700b7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "e9f60f80-5778-5e4b-ba59-cd5f54756373",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "b706117d-8923-19ff-bc0b-fa0c15b28328",
						version = 2,
					},
				},
			},
			enabled = false,
			name = "[Time mage] Mage Masher",
			throttleTime = 1250,
			uuid = "f002c1b7-06d1-6521-a194-18da8de47602",
			version = 2,
		},
		inheritedIndex = 22,
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"cf209713-cd07-baf7-af6e-1000879b86cb",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"b3f3779f-97e1-26c8-aab2-1d54bd11306a",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Phantom Aim",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 4361,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Ranger",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "cf209713-cd07-baf7-af6e-1000879b86cb",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "1e471142-f907-e1dd-abd5-6325e970db36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 4240,
						buffIDList = 
						{
							4240,
							4241,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Phantom Aim",
						uuid = "b3f3779f-97e1-26c8-aab2-1d54bd11306a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41599,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Phantom Aim CD <= 3s",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "68842e46-8c8e-f38e-80f1-1c565d84de04",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "36e0cdc9-6f67-832d-af9d-962934e8d8cc",
						version = 2,
					},
				},
			},
			name = "P. Ranger Phantom Aim",
			throttleTime = 1000,
			uuid = "a2c85c0f-8023-3f9f-803e-b42c3527bb7a",
			version = 2,
		},
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"b3f3779f-97e1-26c8-aab2-1d54bd11306a",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Hero's Rime",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 4363,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Bard",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "1e471142-f907-e1dd-abd5-6325e970db36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4249,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Hero's Rime",
						uuid = "b3f3779f-97e1-26c8-aab2-1d54bd11306a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41610,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Hero's Rime CD <= 3s",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "68842e46-8c8e-f38e-80f1-1c565d84de04",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "36e0cdc9-6f67-832d-af9d-962934e8d8cc",
						version = 2,
					},
				},
			},
			name = "P. Bard Hero's Rime",
			throttleTime = 1000,
			uuid = "eacd6793-87f1-e1b3-adc0-3d72977ab319",
			version = 2,
		},
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
						actionID = 41608,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"9f487160-bb6b-c2c6-9ed3-d248843da14e",
								true,
							},
							
							{
								"560745ad-72be-9478-9030-f84b2e588114",
								true,
							},
							
							{
								"86359e53-d419-7fc3-be4f-446c03d27d6a",
								true,
							},
							
							{
								"7fb3672e-4cb4-359f-96c7-9d17abfd989d",
								true,
							},
							
							{
								"4aba1362-c85a-a3c9-96c8-5cc50660875f",
								true,
							},
							
							{
								"a1a93af6-59f8-c186-bee4-8f08721cf800",
								true,
							},
							
							{
								"c36577af-0090-d074-a4e6-1ab4f07eab99",
								true,
							},
							
							{
								"c4c610e0-470e-2610-bd7f-52d1f5c17a0c",
								true,
							},
							
							{
								"4a74a1ed-df08-9e67-b4de-a00f7e3e1512",
								true,
							},
							
							{
								"f94d6587-e826-5a9f-8436-eafbd600aa75",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction1",
						name = "Refresh My Aria",
						uuid = "82ea7f57-f613-c0c6-930d-add9b1812856",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"9f487160-bb6b-c2c6-9ed3-d248843da14e",
								true,
							},
							
							{
								"560745ad-72be-9478-9030-f84b2e588114",
								true,
							},
							
							{
								"86359e53-d419-7fc3-be4f-446c03d27d6a",
								true,
							},
							
							{
								"7fb3672e-4cb4-359f-96c7-9d17abfd989d",
								true,
							},
							
							{
								"4aba1362-c85a-a3c9-96c8-5cc50660875f",
								true,
							},
							
							{
								"a1a93af6-59f8-c186-bee4-8f08721cf800",
								true,
							},
							
							{
								"3907f741-1e38-d5dd-837f-97a9b20d6992",
								true,
							},
							
							{
								"4a74a1ed-df08-9e67-b4de-a00f7e3e1512",
								true,
							},
							
							{
								"f94d6587-e826-5a9f-8436-eafbd600aa75",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Cast Aria",
						uuid = "38cacc9b-28f6-373b-ae20-00f75f67c63a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "9f487160-bb6b-c2c6-9ed3-d248843da14e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4363,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Bard",
						uuid = "560745ad-72be-9478-9030-f84b2e588114",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "86359e53-d419-7fc3-be4f-446c03d27d6a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "7fb3672e-4cb4-359f-96c7-9d17abfd989d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "4aba1362-c85a-a3c9-96c8-5cc50660875f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4249,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Hero's Rime",
						uuid = "a1a93af6-59f8-c186-bee4-8f08721cf800",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffDuration = 5,
						buffID = 4247,
						buffIDList = 
						{
							4247,
						},
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Aria <= 5s",
						uuid = "c36577af-0090-d074-a4e6-1ab4f07eab99",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.hasBuff(Player.id, 4247, Player.id)",
						dequeueIfLuaFalse = true,
						name = "Aria Belongs To Me",
						uuid = "c4c610e0-470e-2610-bd7f-52d1f5c17a0c",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4247,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Aria",
						uuid = "3907f741-1e38-d5dd-837f-97a9b20d6992",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						hpValue = 30,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "4a74a1ed-df08-9e67-b4de-a00f7e3e1512",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "f94d6587-e826-5a9f-8436-eafbd600aa75",
						version = 2,
					},
				},
			},
			name = "P. Bard Aria",
			throttleTime = 1500,
			uuid = "a6c7e7ac-46cf-12e7-ae07-883da63ba66c",
			version = 2,
		},
		inheritedIndex = 27,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41607,
						conditions = 
						{
							
							{
								"8cd3436d-3f52-7195-90f3-7354696e0e09",
								true,
							},
							
							{
								"5472c749-32d6-8d4c-b3dc-bd0a41b9787a",
								true,
							},
							
							{
								"0d62082a-d701-5772-8641-fb8d84a24bf7",
								true,
							},
							
							{
								"c0446da6-224a-0bad-b444-34dd96794f7a",
								true,
							},
							
							{
								"cf49c056-57f6-b2f0-a13f-7c5b3f558a70",
								true,
							},
							
							{
								"9c7bd453-33e3-3ea8-9777-3b6372f24f23",
								true,
							},
							
							{
								"ab8ab672-de83-07a8-9e0d-d32ef9196663",
								true,
							},
						},
						gVar = "ACR_TensorMagnum3_CD",
						name = "Mighty March",
						uuid = "ddfada01-585e-ed16-bbb8-c1a4e7ebc51d",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "8cd3436d-3f52-7195-90f3-7354696e0e09",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4363,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Bard",
						uuid = "5472c749-32d6-8d4c-b3dc-bd0a41b9787a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						name = "In Combat",
						uuid = "0d62082a-d701-5772-8641-fb8d84a24bf7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 41607,
						buffCheckType = 6,
						buffDuration = 5,
						buffID = 4247,
						buffIDList = 
						{
							4247,
						},
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Mighty March CD <= 1s",
						uuid = "c0446da6-224a-0bad-b444-34dd96794f7a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 50,
						name = "HP <= 50%",
						uuid = "cf49c056-57f6-b2f0-a13f-7c5b3f558a70",
						version = 2,
					},
					inheritedIndex = 5,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						hpValue = 30,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "9c7bd453-33e3-3ea8-9777-3b6372f24f23",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "ab8ab672-de83-07a8-9e0d-d32ef9196663",
						version = 2,
					},
				},
			},
			name = "P. Bard Mighty March",
			throttleTime = 1500,
			uuid = "c18517b0-1e34-1d83-8176-9f1d38d51541",
			version = 2,
		},
		inheritedIndex = 22,
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
						actionLua = "data.isRezzed = true\nself.used = true",
						conditions = 
						{
							
							{
								"9e45f944-072d-e047-b62e-393353080bac",
								true,
							},
							
							{
								"0ace1003-5839-1467-a022-b288a25b9b23",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Record Rezzed",
						uuid = "f2218a47-49cc-308a-8bbe-71548f36c847",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.isRezzed == nil or data.isRezzed == false",
						dequeueIfLuaFalse = true,
						name = "Check Variable",
						uuid = "9e45f944-072d-e047-b62e-393353080bac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 148,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Rezzed",
						uuid = "0ace1003-5839-1467-a022-b288a25b9b23",
						version = 2,
					},
				},
			},
			name = "Record Rezzed",
			uuid = "7163d586-f39c-0cbc-bc73-54fd77394c79",
			version = 2,
		},
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
						actionLua = "data.wasRezzed = true\ndata.rezzTimer = Now()\nself.used = true",
						conditions = 
						{
							
							{
								"2fa68570-4c16-0b05-8ff2-41fdb94e5df0",
								true,
							},
							
							{
								"0ace1003-5839-1467-a022-b288a25b9b23",
								true,
							},
							
							{
								"ef2ee77d-190e-cd39-a12d-01014fccf2ca",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Record Was Rezzed",
						uuid = "f2218a47-49cc-308a-8bbe-71548f36c847",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.wasRezzed == nil or data.wasRezzed == false",
						dequeueIfLuaFalse = true,
						name = "Check Variable",
						uuid = "2fa68570-4c16-0b05-8ff2-41fdb94e5df0",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 148,
						category = "Lua",
						conditionLua = "return data.isRezzed == true",
						dequeueIfLuaFalse = true,
						name = "Has Been Rezzed",
						uuid = "0ace1003-5839-1467-a022-b288a25b9b23",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 148,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Rezzing",
						uuid = "ef2ee77d-190e-cd39-a12d-01014fccf2ca",
						version = 2,
					},
				},
			},
			name = "Record Was Rezzed",
			uuid = "9f00e291-a1de-4adf-8ae0-c21f1280e8d4",
			version = 2,
		},
		inheritedIndex = 29,
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
						actionLua = "data.isRezzed = false\ndata.wasRezzed = false\ndata.rezzTimer = nil\nself.used = true",
						conditions = 
						{
							
							{
								"dd1ab9c9-a03e-cece-b5a1-c2d2a386a331",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Reset Rezz State",
						uuid = "ff4ba863-d13d-8ced-b1fc-d922b8d7fe6a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.wasRezzed == true and TimeSince(data.rezzTimer) >= 3000",
						dequeueIfLuaFalse = true,
						name = "Was Rezzed >= 5s",
						uuid = "dd1ab9c9-a03e-cece-b5a1-c2d2a386a331",
						version = 2,
					},
				},
			},
			name = "Reset Rezzed",
			uuid = "73a56b2a-c698-d163-9526-15eaa4774a78",
			version = 2,
		},
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
						actionLua = "data.oraclePredictJudgement = false\ndata.oraclePredictBlessing = false\ndata.oraclePredictCleansing = false\ndata.oraclePredictStarfall = false\nself.used = true",
						conditions = 
						{
							
							{
								"2f5da793-8d62-b900-91b7-d2287c31ad94",
								true,
							},
							
							{
								"689d986b-3892-68da-9d97-7ffdb0c20ed3",
								true,
							},
							
							{
								"19d6b4d2-cb63-d3a0-9701-23ac8a56f8d4",
								true,
							},
							
							{
								"7a9be408-97e3-401a-a51a-b2d1c1da02d1",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Set New Predict",
						uuid = "f2218a47-49cc-308a-8bbe-71548f36c847",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "2f5da793-8d62-b900-91b7-d2287c31ad94",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4368,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Oracle",
						uuid = "689d986b-3892-68da-9d97-7ffdb0c20ed3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4265,
						buffIDList = 
						{
							4265,
							4266,
							4267,
						},
						category = "Self",
						conditionType = 5,
						dequeueIfLuaFalse = true,
						lastSkillID = 41636,
						matchAnyBuff = true,
						name = "Used Predict",
						uuid = "19d6b4d2-cb63-d3a0-9701-23ac8a56f8d4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						uuid = "7a9be408-97e3-401a-a51a-b2d1c1da02d1",
						version = 2,
					},
				},
			},
			name = "P. Oracle New Predict",
			throttleTime = 5000,
			uuid = "c0c15129-4bca-c1c3-b7ef-380107a82ec0",
			version = 2,
		},
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
						actionLua = "if data.oraclePredictJudgement == false then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictJudgement = true\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"c98fc8ca-3024-f3e1-b80d-5a6ca8a4846b",
								true,
							},
							
							{
								"689d986b-3892-68da-9d97-7ffdb0c20ed3",
								true,
							},
							
							{
								"da2fea5f-44e3-b375-9f26-908381110868",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Count Judgement",
						uuid = "f2218a47-49cc-308a-8bbe-71548f36c847",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data.oraclePredictCleansing == false then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictCleansing = true\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"c98fc8ca-3024-f3e1-b80d-5a6ca8a4846b",
								true,
							},
							
							{
								"689d986b-3892-68da-9d97-7ffdb0c20ed3",
								true,
							},
							
							{
								"f9772982-5571-e7ca-8ce8-d0b95106091b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Count Cleansing",
						uuid = "ecdfcd96-d545-614a-90e9-e8d1b9b60fc9",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data.oraclePredictBlessing == false then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictBlessing = true\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"c98fc8ca-3024-f3e1-b80d-5a6ca8a4846b",
								true,
							},
							
							{
								"689d986b-3892-68da-9d97-7ffdb0c20ed3",
								true,
							},
							
							{
								"ffe9b916-3ab0-da65-92bd-6fc5317d7207",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Count Blessing",
						uuid = "8644771d-e09e-cec0-9719-c9b5718640ef",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if data.oraclePredictStarfall == false then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictStarfall = true\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"c98fc8ca-3024-f3e1-b80d-5a6ca8a4846b",
								true,
							},
							
							{
								"689d986b-3892-68da-9d97-7ffdb0c20ed3",
								true,
							},
							
							{
								"8e665495-c2d2-d8bc-bcd2-4047503e7449",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Count Starfall",
						uuid = "212bae4d-09cb-b35f-90ba-98f73e3908bc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "c98fc8ca-3024-f3e1-b80d-5a6ca8a4846b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4368,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Oracle",
						uuid = "689d986b-3892-68da-9d97-7ffdb0c20ed3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4265,
						buffIDList = 
						{
							4265,
							4266,
							4267,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has Judgement",
						uuid = "da2fea5f-44e3-b375-9f26-908381110868",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4266,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Cleansing",
						uuid = "f9772982-5571-e7ca-8ce8-d0b95106091b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4267,
						buffIDList = 
						{
							4265,
							4266,
							4267,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has Blessing",
						uuid = "ffe9b916-3ab0-da65-92bd-6fc5317d7207",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4268,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has Starfall",
						uuid = "8e665495-c2d2-d8bc-bcd2-4047503e7449",
						version = 2,
					},
				},
			},
			name = "P. Oracle Record Predict Count",
			throttleTime = 250,
			uuid = "05cc6353-51fa-5b8d-bf3a-86629e0af099",
			version = 2,
		},
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"2ade3bb0-fe6c-ce0d-8fb3-6e7565b3a2e2",
								true,
							},
							
							{
								"ac335586-7de4-5e38-b9da-8495a9efdd41",
								true,
							},
							
							{
								"12a0f8c6-a507-a2e4-9c4a-c1dc0385b35d",
								true,
							},
							
							{
								"4ad26c8e-1973-b537-836b-8dec4032deef",
								true,
							},
							
							{
								"ef2c81f6-7b6a-3ed2-ac82-95bca89dccb2",
								true,
							},
							
							{
								"adea2d2c-d0b5-b568-9ad7-b74b309a9b6b",
								true,
							},
							
							{
								"6c4525ee-9fd0-41dd-bc57-c766de237b22",
								true,
							},
							
							{
								"20fa62b1-a245-0e9c-af9b-4fabfedcb7b6",
								true,
							},
							
							{
								"5d1b2ae3-f7bd-35b6-8cfc-33cc3f39b9c9",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Predict",
						uuid = "5072d63a-a97a-96e3-9571-5609b0c0c8aa",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "2ade3bb0-fe6c-ce0d-8fb3-6e7565b3a2e2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4368,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Oracle",
						uuid = "ac335586-7de4-5e38-b9da-8495a9efdd41",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Am Alive",
						uuid = "12a0f8c6-a507-a2e4-9c4a-c1dc0385b35d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "4ad26c8e-1973-b537-836b-8dec4032deef",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "ef2c81f6-7b6a-3ed2-ac82-95bca89dccb2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "adea2d2c-d0b5-b568-9ad7-b74b309a9b6b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41636,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Predict CD <= 3s",
						uuid = "6c4525ee-9fd0-41dd-bc57-c766de237b22",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "20fa62b1-a245-0e9c-af9b-4fabfedcb7b6",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "5d1b2ae3-f7bd-35b6-8cfc-33cc3f39b9c9",
						version = 2,
					},
				},
			},
			name = "P. Oracle Use Predict",
			throttleTime = 1500,
			uuid = "dc304137-5b9c-951b-b18a-6efe4661c609",
			version = 2,
		},
		inheritedIndex = 30,
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
						actionLua = "d(\"Avoid Suicide\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"3d9c3f4a-8ce0-f2d3-b8b1-12171b7f545a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Avoid Suicide",
						uuid = "9fbf0baa-858f-9f38-908e-a73861e24981",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Avoid Starfall HP\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90bd2c89-b805-648a-943e-2651ec846a83",
								true,
							},
							
							{
								"d0114ab1-f77d-bcda-b85a-1193128632d9",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Avoid Starfall HP",
						uuid = "3b198a46-3c08-ea17-9888-3e563681bb74",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Avoid Starfall AOE\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90bd2c89-b805-648a-943e-2651ec846a83",
								true,
							},
							
							{
								"fca8e097-eb58-55db-8cbe-c09478e3b8c4",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Avoid Starfall Incoming AOE",
						uuid = "c9e48789-caa4-8e96-8c32-da86be522993",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Avoid Starfall Raidwide\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90bd2c89-b805-648a-943e-2651ec846a83",
								true,
							},
							
							{
								"5f8d1ae3-46bc-c924-b723-8fcaf972e588",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Avoid Starfall Incoming Raidwide",
						uuid = "b5b4d8fb-a955-df08-bdab-846e151c3443",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Judgement Expiring\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Judgement Expiring",
						uuid = "d16d64a3-4a34-d445-a679-a04eb6ee71f4",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Judgement Heal Self\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"8b811cff-e495-3a1a-82de-ac18b1db3488",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Judgement Heal Self",
						uuid = "a2e00158-dfb3-0cf7-bf6f-b7c07d984820",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Judgement Heal Party\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"c5a030dc-35ca-0d59-b78b-5192da2dbeb1",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Judgement Heal Party",
						uuid = "0aaea4ed-72b9-6d8d-8dcf-01d93020b077",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Judgement Range\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"03bfca6e-1de2-8b8d-aff6-d37b42f92737",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Judgement Range",
						uuid = "28391740-dbc0-873f-863b-1be55a9ae95c",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Judgement Heal Self\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								true,
							},
							
							{
								"8b811cff-e495-3a1a-82de-ac18b1db3488",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Judgement Heal Self",
						uuid = "9ea53d04-334f-976b-ab7f-01a100e1184b",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Judgement Heal Party\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								true,
							},
							
							{
								"c5a030dc-35ca-0d59-b78b-5192da2dbeb1",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Judgement Heal Party",
						uuid = "d3445634-2d11-25bd-a024-2b2201d290bc",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Cleansing Expiring\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93bd23e8-5273-57ec-8a76-b5c3e6af25c2",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Cleansing Expiring",
						uuid = "f5e195a1-40b1-0d84-86ec-3593694c1212",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Cleansing HP\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93bd23e8-5273-57ec-8a76-b5c3e6af25c2",
								true,
							},
							
							{
								"45342af4-4935-a543-888f-f175121b510a",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Cleansing HP",
						uuid = "00e024d7-2e1c-1da2-a10b-730f4be95b89",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Cleansing Range\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93bd23e8-5273-57ec-8a76-b5c3e6af25c2",
								true,
							},
							
							{
								"03bfca6e-1de2-8b8d-aff6-d37b42f92737",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Cleansing Range",
						uuid = "bf160465-9564-9a60-b273-2e9f28a05f7d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Cleansing\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93bd23e8-5273-57ec-8a76-b5c3e6af25c2",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								true,
							},
							
							{
								"03bfca6e-1de2-8b8d-aff6-d37b42f92737",
								true,
							},
							
							{
								"45342af4-4935-a543-888f-f175121b510a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Cleansing",
						uuid = "926853c0-f80c-8b24-ab70-7b8d0536d818",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Blessing Expiring\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"902b4fee-08f0-ccc3-93e5-8387b8bdba36",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Blessing Expiring",
						uuid = "9d73265f-54c8-35b6-a024-2af1c9f72da4",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Blessing Heal Self\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"902b4fee-08f0-ccc3-93e5-8387b8bdba36",
								true,
							},
							
							{
								"ca2e91c7-e9ed-3e99-86e7-f8e32e91062f",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Blessing Heal Self",
						uuid = "b21145a4-b38d-b20e-909f-2232eba0b2df",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Blessing Heal Party\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"902b4fee-08f0-ccc3-93e5-8387b8bdba36",
								true,
							},
							
							{
								"e5546d6b-eaa9-44d6-84f5-dd3c73e379d2",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Blessing Heal Party",
						uuid = "80d1e0ab-2bf4-d8b1-ab19-2f6888beab95",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Blessing Heal Self\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"902b4fee-08f0-ccc3-93e5-8387b8bdba36",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								true,
							},
							
							{
								"ca2e91c7-e9ed-3e99-86e7-f8e32e91062f",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Blessing Heal Self",
						uuid = "5d2b3e66-2450-2444-97a1-9c8a9814c7c4",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Blessing Heal Party\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"902b4fee-08f0-ccc3-93e5-8387b8bdba36",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								true,
							},
							
							{
								"e5546d6b-eaa9-44d6-84f5-dd3c73e379d2",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Blessing Heal Party",
						uuid = "3558f6d8-52e5-f450-9a27-564a190a0aad",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Starfall Expiring\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90d5d356-377c-d333-89cc-42097385bb58",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Starfall Expiring",
						uuid = "07d9df36-64fb-a3fc-bf11-2af4a56c8607",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Starfall HP\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90d5d356-377c-d333-89cc-42097385bb58",
								true,
							},
							
							{
								"d0114ab1-f77d-bcda-b85a-1193128632d9",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Starfall HP",
						uuid = "7d46c830-898c-cc59-b6f3-47f2ee061469",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Starfall AOE\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90d5d356-377c-d333-89cc-42097385bb58",
								true,
							},
							
							{
								"fca8e097-eb58-55db-8cbe-c09478e3b8c4",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Starfall AOE",
						uuid = "482c679c-a9d1-7f4e-bf19-279621eef893",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Starfall Raidwide\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90d5d356-377c-d333-89cc-42097385bb58",
								true,
							},
							
							{
								"5f8d1ae3-46bc-c924-b723-8fcaf972e588",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Starfall Raidwide",
						uuid = "84a31664-323c-6654-9adc-682f7e81ff77",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Starfall Range\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90d5d356-377c-d333-89cc-42097385bb58",
								true,
							},
							
							{
								"03bfca6e-1de2-8b8d-aff6-d37b42f92737",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Stop Starfall Range",
						uuid = "78d6fb3f-532d-bc68-aff0-574ba9347f40",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Starfall\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"90d5d356-377c-d333-89cc-42097385bb58",
								true,
							},
							
							{
								"7ff1f06b-6b0b-6d46-9485-a73af78c7796",
								true,
							},
							
							{
								"03bfca6e-1de2-8b8d-aff6-d37b42f92737",
								true,
							},
							
							{
								"d0114ab1-f77d-bcda-b85a-1193128632d9",
								true,
							},
							
							{
								"fca8e097-eb58-55db-8cbe-c09478e3b8c4",
								false,
							},
							
							{
								"5f8d1ae3-46bc-c924-b723-8fcaf972e588",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Starfall",
						uuid = "03079be3-c6fc-b719-b08f-870e71da59ce",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 4368,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Oracle",
						uuid = "b7995653-e4e2-e753-91d9-89e71703711c",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4265,
						buffIDList = 
						{
							4265,
							4266,
							4267,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has Judgement",
						uuid = "93783665-3a39-218a-b4c7-05aeb1a3a810",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4266,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Cleansing",
						uuid = "93bd23e8-5273-57ec-8a76-b5c3e6af25c2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4267,
						buffIDList = 
						{
							4265,
							4266,
							4267,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has Blessing",
						uuid = "902b4fee-08f0-ccc3-93e5-8387b8bdba36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 20,
						name = "Range - 20y",
						partyTargetType = "Detection Target",
						uuid = "6c75bd01-ee49-a6f7-9621-25854eb1a9d9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4268,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has Starfall",
						uuid = "90d5d356-377c-d333-89cc-42097385bb58",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffDuration = 0.80000001192093,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Predict Not Expiring",
						uuid = "7ff1f06b-6b0b-6d46-9485-a73af78c7796",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 20,
						name = "Target <= 20y",
						uuid = "03bfca6e-1de2-8b8d-aff6-d37b42f92737",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 95,
						name = "Self HP >= 95%",
						uuid = "d0114ab1-f77d-bcda-b85a-1193128632d9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 92,
						name = "Self HP <= 92%",
						uuid = "45342af4-4935-a543-888f-f175121b510a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 60,
						name = "Self HP <= 60%",
						uuid = "8b811cff-e495-3a1a-82de-ac18b1db3488",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						comparator = 2,
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 30,
						name = "Self HP <= 30%",
						uuid = "ca2e91c7-e9ed-3e99-86e7-f8e32e91062f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 60,
						name = "HP - 60%",
						partyTargetType = "Detection Target",
						uuid = "719eacd0-1e7f-4dc5-b935-49c94ac8e657",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 30,
						name = "HP - 30%",
						partyTargetType = "Detection Target",
						uuid = "b8396ed7-b2fe-05d8-a878-4de57d821578",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditionType = 2,
						conditions = 
						{
							
							{
								"6c75bd01-ee49-a6f7-9621-25854eb1a9d9",
								true,
							},
							
							{
								"719eacd0-1e7f-4dc5-b935-49c94ac8e657",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "AOE 60% @ 20y",
						partyTargetNumber = 5,
						uuid = "c5a030dc-35ca-0d59-b78b-5192da2dbeb1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditionType = 2,
						conditions = 
						{
							
							{
								"6c75bd01-ee49-a6f7-9621-25854eb1a9d9",
								true,
							},
							
							{
								"b8396ed7-b2fe-05d8-a878-4de57d821578",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "AOE 30% @ 20y",
						partyTargetNumber = 5,
						uuid = "e5546d6b-eaa9-44d6-84f5-dd3c73e379d2",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.oraclePredictCounter == 3 and data.oraclePredictStarfall == false",
						dequeueIfLuaFalse = true,
						name = "Starfall Is Last",
						uuid = "90bd2c89-b805-648a-943e-2651ec846a83",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.oraclePredictCounter == 4",
						dequeueIfLuaFalse = true,
						name = "Is Last Predict",
						uuid = "3d9c3f4a-8ce0-f2d3-b8b1-12171b7f545a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dangerTime = 1.5\nlocal safetyTime = 3\n\nlocal player = TensorCore.mGetPlayer()\nlocal playerPos = player.pos\n\nlocal function getRemainingTime(entity)\n\tif not entity then return nil end\n\treturn entity.castinginfo.casttime - entity.castinginfo.channeltime\nend\n\nlocal function getPredictDuration()\n\tfor _, buffID in ipairs({4265, 4266, 4267}) do\n\t\tlocal buff = TensorCore.getBuff(player.id, buffID)\n\t\tif buff then\n\t\t\treturn buff.duration\n\t\tend\n\tend\n\treturn 0\nend\n\nlocal function willBoom(remainingTime, aoeType)\n\tif remainingTime <= dangerTime then\n\t\td(aoeType .. \" AOE GONNA GO BOOM!!!\")\n\t\treturn true\n\telseif data.oraclePredictCounter == 3 and not data.oraclePredictStarfall then\n\t\tlocal predictDuration = getPredictDuration()\n\t\tif remainingTime > predictDuration and remainingTime <= safetyTime then\n\t\t\td(aoeType .. \" AOE GONNA GO BOOM DURING STARFALL!!!\")\n\t\t\treturn true\n\t\tend\n\tend\n\treturn false\nend\n\nif TensorCore.Avoidance.inAnyAOE(playerPos.x, playerPos.y, playerPos.z) and table.size(data.ocAOETbl) > 0 then\n\tfor _, aoe in pairs(data.ocAOETbl) do\n\t\tlocal entityID, aoePos, aoeLength, aoeWidth = aoe.entityID, aoe.aoePos, aoe.aoeLength, aoe.aoeWidth\n\t\tlocal distToAOE = TensorCore.getDistance2d(playerPos, aoePos)\n\t\tlocal entity = TensorCore.mGetEntity(entityID)\n\t\tlocal remainingTime = getRemainingTime(entity)\n\n\t\tif aoeWidth > 0 or castType == 11 then -- Line/Cross\n\t\t\tif distToAOE <= aoeLength then\n\t\t\t\tlocal heading = aoe.aoeHeading\n\t\t\t\tlocal dirX, dirZ = math.sin(heading), math.cos(heading)\n\t\t\t\tlocal relX, relZ = playerPos.x - aoePos.x, playerPos.z - aoePos.z\n\t\t\t\tlocal forward = (relX * dirX) + (relZ * dirZ)\n\t\t\t\tlocal side = (-relX * dirZ) + (relZ * dirX)\n\t\t\t\tlocal halfWidth = aoeWidth / 2\n\t\t\t\t\n\t\t\t\tif castType == 11 then\n\t\t\t\t\tlocal inVertical = math.abs(forward) <= aoeLength and math.abs(side) <= halfWidth\n\t\t\t\t\tlocal inHorizontal = math.abs(side) <= aoeLength and math.abs(forward) <= halfWidth\n\n\t\t\t\t\tif inVertical or inHorizontal then\n\t\t\t\t\t\tif willBoom(remainingTime, \"Cross\") then return true end\n\t\t\t\t\tend\n\t\t\t\telse\n\t\t\t\t\tif forward >= 0 and forward <= aoeLength and math.abs(side) <= (halfWidth) then\n\t\t\t\t\t\tif willBoom(remainingTime, \"Line\") then return true end\n\t\t\t\t\tend\n\t\t\t\tend\n\t\t\tend\n\t\telse\n\t\t\tlocal omen = aoe.aoeOmen or \"\"\n\t\t\tlocal subStr = omen:gsub(\"o\", \"\"):sub(6)\n\t\t\tlocal omenInfo = subStr:match(\"%D(%d+)%D\") or \"\"\n\t\t\tlocal aoeID = aoe.aoeID\n\t\t\tlocal castType = aoe.aoeCastType\n\n\t\t\tif #omenInfo == 4 or omen:match(\"don\") or omen:match(\"sircle\") or castType == 10 then -- Donut\n\t\t\t\tlocal omenInnerRadius = tonumber(omenInfo:sub(-2)) or 0\n\t\t\t\tlocal innerRadius = 10\n\t\t\t\tlocal telegraphDonut = MoogleTelegraphs.Settings.aoeIDUserSetDonuts[aoeID]\n\t\t\t\tif telegraphDonut then innerRadius = telegraphDonut.radius\n\t\t\t\telseif omenInnerRadius > 0 then innerRadius = omenInnerRadius\n\t\t\t\tend\n\n\t\t\t\tif distToAOE >= innerRadius and distToAOE <= aoeLength then\n\t\t\t\t\tif willBoom(remainingTime, \"Donut\") then return true end\n\t\t\t\tend\n\t\t\telseif (#omenInfo == 3 and not aoe.aoeIsAreaTarget) or omen:match(\"fan\") or castType == 3 or castType == 13 then -- Cone\n\t\t\t\tlocal omenAngle = tonumber(omenInfo) or 0\n\t\t\t\tlocal angle = 90\n\t\t\t\tlocal telegraphCone = MoogleTelegraphs.Settings.aoeIDUserSetCones[aoeID]\n\t\t\t\tif telegraphCone then angle = telegraphCone.angle\n\t\t\t\telseif omenAngle > 0 then angle = omenAngle\n\t\t\t\tend\n\n\t\t\t\tlocal heading = aoe.aoeHeading\n\t\t\t\tlocal dirX, dirZ = math.sin(heading), math.cos(heading)\n\t\t\t\tlocal relX, relZ = playerPos.x - aoePos.x, playerPos.z - aoePos.z\n\t\t\t\tlocal forward = (relX * dirX) + (relZ * dirZ)\n\t\t\t\tlocal halfAngle = angle / 2\n\t\t\t\tlocal cosAngle = math.cos(math.rad(halfAngle))\n\t\t\t\t\n\t\t\t\tif angle <= 180 then\n\t\t\t\t\tif (forward / distToAOE) >= cosAngle then\n\t\t\t\t\t\tif willBoom(remainingTime, \"Cone\") then return true end\n\t\t\t\t\tend\n\t\t\t\telse\n\t\t\t\t\tlocal invertedConeAngle = 180 - halfAngle\n    \t\t\t\tlocal cosInverted = math.cos(math.rad(invertedConeAngle))\n\n    \t\t\t\tif (forward / distToAOE) >= -cosInverted then\n        \t\t\t\tif willBoom(remainingTime, \"Cone\") then return true end\n\t\t\t\t\tend\n\t\t\t\tend\n\t\t\telse -- Circle/Meteor\n\t\t\t\tif distToAOE <= aoeLength then\n\t\t\t\t\tif willBoom(remainingTime, \"Circle\") then return true end\n\t\t\t\tend\n\t\t\tend\n\t\tend\n\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "AOE Check",
						uuid = "fca8e097-eb58-55db-8cbe-c09478e3b8c4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dangerTime = 1.5\nlocal safetyTime = 3\n\nlocal raidwideIDs = { 41138, 41141, 41381, 41279, 41336, 41361, 41528, 41167, 41171, 41188, 41424 }\n\nlocal player = TensorCore.mGetPlayer()\nlocal target = TensorCore.mGetTarget()\n\nlocal function getPredictDuration()\n\tfor _, buffID in ipairs({4265, 4266, 4267}) do\n\t\tlocal buff = TensorCore.getBuff(player.id, buffID)\n\t\tif buff then\n\t\t\treturn buff.duration\n\t\tend\n\tend\n\treturn 0\nend\n\nlocal function willRaidwideBoom(remainingTime)\n\tif remainingTime <= dangerTime then\n\t\td(\"Raidwide GONNA GO BOOM!!!\")\n\t\treturn true\n\telseif data.oraclePredictCounter == 3 and not data.oraclePredictStarfall then\n\t\tlocal predictDuration = getPredictDuration()\n\t\tif remainingTime > predictDuration and remainingTime <= safetyTime then\n\t\t\td(\"Raidwide GONNA GO BOOM DURING STARFALL!!!\")\n\t\t\treturn true\n\t\tend\n\tend\n\treturn false\nend\n\nif target then\n\tlocal castingInfo = target.castinginfo\n\n\tfor _, raidwideID in ipairs(raidwideIDs) do\n\t\tif castingInfo.channelingid == raidwideID then\n\t\t\tlocal remainingTime = castingInfo.casttime - castingInfo.channeltime\n\t\t\tif willRaidwideBoom(remainingTime) then\n\t\t\t\treturn true\n\t\t\tend\n\t\tend\n\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Raidwide Check",
						uuid = "5f8d1ae3-46bc-c924-b723-8fcaf972e588",
						version = 2,
					},
				},
			},
			name = "P. Oracle Predict",
			throttleTime = 100,
			uuid = "ba84c9d8-adc9-f0e6-81ea-cff5b1296909",
			version = 2,
		},
		inheritedIndex = 39,
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
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\ndata.oraclePredictCounter = 0\nself.used = true",
						conditions = 
						{
							
							{
								"ffbc6bd6-f41a-fea3-a827-6c080a314acc",
								true,
							},
							
							{
								"b7995653-e4e2-e753-91d9-89e71703711c",
								true,
							},
							
							{
								"93783665-3a39-218a-b4c7-05aeb1a3a810",
								true,
							},
							
							{
								"5ad64f50-a902-e2f8-9be5-cd7055460245",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Reset Predict",
						uuid = "d3445634-2d11-25bd-a024-2b2201d290bc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "ffbc6bd6-f41a-fea3-a827-6c080a314acc",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4368,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Oracle",
						uuid = "b7995653-e4e2-e753-91d9-89e71703711c",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 4265,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "No Predicts",
						uuid = "93783665-3a39-218a-b4c7-05aeb1a3a810",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Lua",
						conditionLua = "return data.oraclePredictCounter ~= nil and data.oraclePredictCounter > 0",
						dequeueIfLuaFalse = true,
						name = "Predict Counter > 0",
						uuid = "5ad64f50-a902-e2f8-9be5-cd7055460245",
						version = 2,
					},
				},
			},
			name = "P. Oracle Reset Predict",
			throttleTime = 250,
			uuid = "f43ad7fe-48be-5bed-b215-288c4879c052",
			version = 2,
		},
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
						actionLua = "d(\"Stop Silver\")\nif _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"6ede6f2b-f21f-34fc-ac8f-17712a883aee",
								true,
							},
							
							{
								"d0b43e22-df2c-0f03-8be1-bdf2445b9955",
								true,
							},
							
							{
								"77dacb34-4585-2f97-b047-6d25037d5a9d",
								true,
							},
							
							{
								"49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
								true,
							},
							
							{
								"5a850803-fc48-8ace-a599-32068f92f43f",
								false,
							},
							
							{
								"6105b516-3945-472a-ac0d-73d1c8d2ca9a",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Stop Silver",
						uuid = "a35683f9-e82b-e816-baed-bc2bd921e1a6",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41630,
						actionLua = "d(\"Silver\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"6ede6f2b-f21f-34fc-ac8f-17712a883aee",
								true,
							},
							
							{
								"d0b43e22-df2c-0f03-8be1-bdf2445b9955",
								true,
							},
							
							{
								"77dacb34-4585-2f97-b047-6d25037d5a9d",
								true,
							},
							
							{
								"49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
								true,
							},
							
							{
								"66bc9b98-7d55-baeb-b9e2-e1aa2b7051a8",
								true,
							},
							
							{
								"5a850803-fc48-8ace-a599-32068f92f43f",
								true,
							},
							
							{
								"f3f536e5-c709-78f6-add9-bf5e997cf396",
								true,
							},
							
							{
								"6105b516-3945-472a-ac0d-73d1c8d2ca9a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						name = "Silver Cannon",
						targetType = "Current Target",
						uuid = "b742680e-1697-9265-ac40-85ffb8d715f1",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41627,
						actionLua = "d(\"Holy\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"6ede6f2b-f21f-34fc-ac8f-17712a883aee",
								true,
							},
							
							{
								"d0b43e22-df2c-0f03-8be1-bdf2445b9955",
								true,
							},
							
							{
								"77dacb34-4585-2f97-b047-6d25037d5a9d",
								true,
							},
							
							{
								"49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
								true,
							},
							
							{
								"66bc9b98-7d55-baeb-b9e2-e1aa2b7051a8",
								true,
							},
							
							{
								"5a850803-fc48-8ace-a599-32068f92f43f",
								false,
							},
							
							{
								"9d90a354-122d-1e4a-9766-d03e2dce7797",
								true,
							},
							
							{
								"6105b516-3945-472a-ac0d-73d1c8d2ca9a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Holy Cannon",
						targetType = "Current Target",
						uuid = "7d83daa1-0b25-c15e-b500-8db0c4b9fb7a",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41628,
						actionLua = "d(\"Dark\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"6ede6f2b-f21f-34fc-ac8f-17712a883aee",
								true,
							},
							
							{
								"d0b43e22-df2c-0f03-8be1-bdf2445b9955",
								true,
							},
							
							{
								"77dacb34-4585-2f97-b047-6d25037d5a9d",
								true,
							},
							
							{
								"49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
								true,
							},
							
							{
								"66bc9b98-7d55-baeb-b9e2-e1aa2b7051a8",
								true,
							},
							
							{
								"1d7f30fc-f7cf-3867-a8b8-6601387d3fa4",
								true,
							},
							
							{
								"5b3f266a-5288-d0e4-80b4-04427cb46548",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						name = "Dark Cannon",
						targetType = "Current Target",
						uuid = "27829bfe-ad66-2d8b-a078-e38abda7d099",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41629,
						actionLua = "d(\"Shock\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"6ede6f2b-f21f-34fc-ac8f-17712a883aee",
								true,
							},
							
							{
								"d0b43e22-df2c-0f03-8be1-bdf2445b9955",
								true,
							},
							
							{
								"77dacb34-4585-2f97-b047-6d25037d5a9d",
								true,
							},
							
							{
								"49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
								true,
							},
							
							{
								"66bc9b98-7d55-baeb-b9e2-e1aa2b7051a8",
								true,
							},
							
							{
								"2365f6f4-9905-7276-a633-a8945808890d",
								true,
							},
							
							{
								"5b3f266a-5288-d0e4-80b4-04427cb46548",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Shock Cannon",
						targetType = "Current Target",
						uuid = "3f2a6a8d-e850-7f8d-a10b-a621a4a2b87c",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41626,
						actionLua = "d(\"Phantom\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"6ede6f2b-f21f-34fc-ac8f-17712a883aee",
								true,
							},
							
							{
								"d0b43e22-df2c-0f03-8be1-bdf2445b9955",
								true,
							},
							
							{
								"77dacb34-4585-2f97-b047-6d25037d5a9d",
								true,
							},
							
							{
								"49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
								true,
							},
							
							{
								"e7a10bc3-099f-e3a0-9120-15eaf7e935ea",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						ignoreWeaveRules = true,
						name = "Phantom Fire",
						targetType = "Current Target",
						uuid = "4a955ee5-d665-fe9c-9660-3a0a5bfea657",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "6ede6f2b-f21f-34fc-ac8f-17712a883aee",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4366,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Cannoneer",
						uuid = "d0b43e22-df2c-0f03-8be1-bdf2445b9955",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "77dacb34-4585-2f97-b047-6d25037d5a9d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 30,
						name = "Target <= 30y",
						uuid = "66bc9b98-7d55-baeb-b9e2-e1aa2b7051a8",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffDuration = 35,
						buffID = 4264,
						buffIDList = 
						{
							4264,
						},
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Silver Sickness <= 35s",
						uuid = "5a850803-fc48-8ace-a599-32068f92f43f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Silver Cannon",
						uuid = "f3f536e5-c709-78f6-add9-bf5e997cf396",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Holy Cannon",
						uuid = "9d90a354-122d-1e4a-9766-d03e2dce7797",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41627,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "G1 Cannons CD <= 3s",
						uuid = "6105b516-3945-472a-ac0d-73d1c8d2ca9a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,33):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Dark Cannon",
						uuid = "1d7f30fc-f7cf-3867-a8b8-6601387d3fa4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Shock Cannon",
						uuid = "2365f6f4-9905-7276-a633-a8945808890d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41628,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "G2 Cannons CD <= 3s",
						uuid = "5b3f266a-5288-d0e4-80b4-04427cb46548",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41626,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Phantom Fire CD <= 3s",
						uuid = "e7a10bc3-099f-e3a0-9120-15eaf7e935ea",
						version = 2,
					},
				},
			},
			name = "P. Cannoneer Cannons",
			throttleTime = 1500,
			uuid = "8da73aae-57bf-86ea-9a65-353a607913dc",
			version = 2,
		},
		inheritedIndex = 34,
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
						actionLua = "self.used=true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"b3f3779f-97e1-26c8-aab2-1d54bd11306a",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
							
							{
								"3d57020f-4be1-81fb-ba65-a4dd88929867",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Throttle",
						uuid = "f1083890-32a9-f34d-a028-55dcbfea6a81",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"b3f3779f-97e1-26c8-aab2-1d54bd11306a",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Quick",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "e7de50ca-b2f8-752a-b528-db724f2d7054",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4365,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. TMage",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "1e471142-f907-e1dd-abd5-6325e970db36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4260,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Quick",
						uuid = "b3f3779f-97e1-26c8-aab2-1d54bd11306a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41625,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Quick CD <= 3s",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "68842e46-8c8e-f38e-80f1-1c565d84de04",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "36e0cdc9-6f67-832d-af9d-962934e8d8cc",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.isFirstCombat ~= false",
						dequeueIfLuaFalse = true,
						name = "Check 1st Combat",
						uuid = "3d57020f-4be1-81fb-ba65-a4dd88929867",
						version = 2,
					},
				},
			},
			name = "P. TMage Quick",
			throttleTime = 2000,
			uuid = "07c6a030-6afd-9a0c-8e6e-1a4b88514b31",
			version = 2,
		},
		inheritedIndex = 53,
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
						actionID = 41623,
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nend\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 10,
						conditions = 
						{
							
							{
								"41ab0a49-62c5-52d4-978d-155a55d6a6c7",
								true,
							},
							
							{
								"adbe9e8b-9a2b-fd78-87f7-56a690e17642",
								true,
							},
							
							{
								"308c346a-2c62-5d76-b2ad-c6645ddfa62d",
								true,
							},
							
							{
								"57f6c1cb-2102-c54d-a980-75f7e523a670",
								true,
							},
							
							{
								"147342c4-a3e4-eff5-9753-fb57920c3499",
								true,
							},
							
							{
								"e5913dde-025c-ead9-a7ac-3122391bd47a",
								false,
							},
							
							{
								"21f1c825-85ff-d38b-9b4e-b426a892b5fb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Comet AOE",
						targetType = "Most Clustered Enemy",
						uuid = "f6099d22-555d-b551-b832-565ee809b7ca",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41623,
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nend\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 10,
						conditions = 
						{
							
							{
								"41ab0a49-62c5-52d4-978d-155a55d6a6c7",
								true,
							},
							
							{
								"adbe9e8b-9a2b-fd78-87f7-56a690e17642",
								true,
							},
							
							{
								"308c346a-2c62-5d76-b2ad-c6645ddfa62d",
								true,
							},
							
							{
								"57f6c1cb-2102-c54d-a980-75f7e523a670",
								true,
							},
							
							{
								"147342c4-a3e4-eff5-9753-fb57920c3499",
								true,
							},
							
							{
								"6c4aaa8c-60a7-5160-b18c-1cee39774401",
								false,
							},
							
							{
								"21f1c825-85ff-d38b-9b4e-b426a892b5fb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Comet InstaCast",
						targetType = "Most Clustered Enemy",
						uuid = "a8c020bf-922b-0968-a931-c8602273ccad",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41623,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 10,
						conditions = 
						{
							
							{
								"41ab0a49-62c5-52d4-978d-155a55d6a6c7",
								true,
							},
							
							{
								"adbe9e8b-9a2b-fd78-87f7-56a690e17642",
								true,
							},
							
							{
								"308c346a-2c62-5d76-b2ad-c6645ddfa62d",
								true,
							},
							
							{
								"57f6c1cb-2102-c54d-a980-75f7e523a670",
								true,
							},
							
							{
								"147342c4-a3e4-eff5-9753-fb57920c3499",
								true,
							},
							
							{
								"e5913dde-025c-ead9-a7ac-3122391bd47a",
								true,
							},
							
							{
								"733afe48-2ab5-b95d-99bc-604180e694ad",
								true,
							},
							
							{
								"ef99c6a8-372b-66b4-88d2-b810434077c3",
								true,
							},
							
							{
								"30fb22ab-fb03-bcfd-ad9a-24dbfe7479c4",
								true,
							},
							
							{
								"6c4aaa8c-60a7-5160-b18c-1cee39774401",
								true,
							},
							
							{
								"21f1c825-85ff-d38b-9b4e-b426a892b5fb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Comet CD Enabled",
						targetType = "Most Clustered Enemy",
						uuid = "af829564-0f32-f9af-9cae-55b0489438ce",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41623,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 10,
						conditions = 
						{
							
							{
								"41ab0a49-62c5-52d4-978d-155a55d6a6c7",
								true,
							},
							
							{
								"adbe9e8b-9a2b-fd78-87f7-56a690e17642",
								true,
							},
							
							{
								"308c346a-2c62-5d76-b2ad-c6645ddfa62d",
								true,
							},
							
							{
								"57f6c1cb-2102-c54d-a980-75f7e523a670",
								true,
							},
							
							{
								"147342c4-a3e4-eff5-9753-fb57920c3499",
								true,
							},
							
							{
								"e5913dde-025c-ead9-a7ac-3122391bd47a",
								true,
							},
							
							{
								"733afe48-2ab5-b95d-99bc-604180e694ad",
								false,
							},
							
							{
								"30fb22ab-fb03-bcfd-ad9a-24dbfe7479c4",
								true,
							},
							
							{
								"6c4aaa8c-60a7-5160-b18c-1cee39774401",
								true,
							},
							
							{
								"21f1c825-85ff-d38b-9b4e-b426a892b5fb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Comet CD Disabled",
						targetType = "Most Clustered Enemy",
						uuid = "5621be61-580f-4ba8-b090-0970702821f5",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nend\nself.used = true",
						conditions = 
						{
							
							{
								"41ab0a49-62c5-52d4-978d-155a55d6a6c7",
								true,
							},
							
							{
								"adbe9e8b-9a2b-fd78-87f7-56a690e17642",
								true,
							},
							
							{
								"21f1c825-85ff-d38b-9b4e-b426a892b5fb",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Fallback Deactivate",
						uuid = "199058eb-0e6b-7d9f-b4f3-7ecfd1b2be5a",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "41ab0a49-62c5-52d4-978d-155a55d6a6c7",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4365,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. TMage",
						uuid = "adbe9e8b-9a2b-fd78-87f7-56a690e17642",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "308c346a-2c62-5d76-b2ad-c6645ddfa62d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "57f6c1cb-2102-c54d-a980-75f7e523a670",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Comet",
						uuid = "147342c4-a3e4-eff5-9753-fb57920c3499",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_AOE\"]",
						dequeueIfLuaFalse = true,
						name = "AOE Enabled",
						uuid = "e5913dde-025c-ead9-a7ac-3122391bd47a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "733afe48-2ab5-b95d-99bc-604180e694ad",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorReactions_CurrentCombatTimer > 4.0",
						dequeueIfLuaFalse = true,
						name = "Combat >= 4s",
						uuid = "ef99c6a8-372b-66b4-88d2-b810434077c3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 28,
						name = "Target <= 28y",
						uuid = "30fb22ab-fb03-bcfd-ad9a-24dbfe7479c4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 4,
						buffID = 4260,
						buffIDList = 
						{
							167,
							4260,
							1211,
							1249,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has InstaCast",
						uuid = "6c4aaa8c-60a7-5160-b18c-1cee39774401",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41623,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Comet Not CD",
						uuid = "21f1c825-85ff-d38b-9b4e-b426a892b5fb",
						version = 2,
					},
				},
			},
			name = "P. TMage Comet",
			throttleTime = 100,
			uuid = "988f3e4c-2dda-92d2-8702-0c90ee69af40",
			version = 2,
		},
		inheritedIndex = 41,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 7561,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"d776f17c-758b-4921-9144-157ce819e49f",
								true,
							},
							
							{
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"15e16ad4-c97f-fcfe-949e-c60c37b28519",
								true,
							},
							
							{
								"d037fcde-5780-d93b-9db9-0bd05e6004b1",
								true,
							},
							
							{
								"4497846d-7152-a5f9-8eec-2d45e16ccb82",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"65026472-ef44-c2dc-a211-9b5279bcfa9c",
								true,
							},
							
							{
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						ignoreWeaveRules = true,
						name = "Swiftcast CD Enabled",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 7561,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"15e16ad4-c97f-fcfe-949e-c60c37b28519",
								false,
							},
							
							{
								"d037fcde-5780-d93b-9db9-0bd05e6004b1",
								true,
							},
							
							{
								"4497846d-7152-a5f9-8eec-2d45e16ccb82",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"65026472-ef44-c2dc-a211-9b5279bcfa9c",
								true,
							},
							
							{
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						ignoreWeaveRules = true,
						name = "Swiftcast CD Disabled",
						uuid = "ee46b937-034e-1ffb-84ed-9beca8a8c1fe",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "e7de50ca-b2f8-752a-b528-db724f2d7054",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4365,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. TMage",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorReactions_CurrentCombatTimer > 4.0",
						dequeueIfLuaFalse = true,
						name = "Combat >= 4s",
						uuid = "d776f17c-758b-4921-9144-157ce819e49f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Comet",
						uuid = "066cc251-0be0-1ddd-8963-58a814259fbd",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_AOE\"]",
						dequeueIfLuaFalse = true,
						name = "AOE Enabled",
						uuid = "1e471142-f907-e1dd-abd5-6325e970db36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "15e16ad4-c97f-fcfe-949e-c60c37b28519",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 28,
						name = "Target <= 28y",
						uuid = "d037fcde-5780-d93b-9db9-0bd05e6004b1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 7561,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Swiftcast Not CD",
						uuid = "4497846d-7152-a5f9-8eec-2d45e16ccb82",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41623,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Comet Not CD",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							4260,
							1211,
							1249,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing InstaCast",
						uuid = "65026472-ef44-c2dc-a211-9b5279bcfa9c",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 418,
						buffIDList = 
						{
							418,
							148,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Not Invuln",
						uuid = "68842e46-8c8e-f38e-80f1-1c565d84de04",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.rezzTimer == nil or TimeSince(data.rezzTimer) >= 1000",
						dequeueIfLuaFalse = true,
						name = "Check Rezz Timer",
						uuid = "36e0cdc9-6f67-832d-af9d-962934e8d8cc",
						version = 2,
					},
				},
			},
			name = "P. TMage Comet Swiftcast",
			throttleTime = 1500,
			uuid = "fb45e2b2-c2e4-1403-8a4b-1c629f622026",
			version = 2,
		},
		inheritedIndex = 44,
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"9110e23e-2719-d914-ae4f-d0ebe1f42041",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"15012492-bdd7-fe2d-b135-055c116ce1a5",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Zeninage",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								false,
							},
							
							{
								"de338056-3eb8-8b00-bb1a-532dec264c1d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "db0c3649-f11c-972b-be2c-14b0b0daaaa7",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "e7de50ca-b2f8-752a-b528-db724f2d7054",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4362,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Sam",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorReactions_CurrentCombatTimer > 4.0",
						dequeueIfLuaFalse = true,
						name = "Combat >= 4s",
						uuid = "9110e23e-2719-d914-ae4f-d0ebe1f42041",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "1e471142-f907-e1dd-abd5-6325e970db36",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 30,
						name = "Target <= 30y",
						uuid = "15012492-bdd7-fe2d-b135-055c116ce1a5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41606,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Zeninage CD <= 3s",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "de338056-3eb8-8b00-bb1a-532dec264c1d",
						version = 2,
					},
				},
			},
			name = "P. Sam Zeninage",
			throttleTime = 1500,
			uuid = "7a1f87f1-0933-dc19-a27d-03a45a3815ff",
			version = 2,
		},
		inheritedIndex = 35,
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"f121b876-3d81-67e4-984a-68f2324c3835",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Iainuki Moving",
						uuid = "541f6628-d221-a65d-a4af-fce55b8192c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"14adbf47-bc44-a663-8e4c-471c85a8fbbd",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Iainuki Range",
						uuid = "7a30586b-afb1-298b-b285-ccdc1d541f54",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"f121b876-3d81-67e4-984a-68f2324c3835",
								false,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"14adbf47-bc44-a663-8e4c-471c85a8fbbd",
								true,
							},
							
							{
								"de4e6705-29c7-f3bf-a84a-10d02f778ba5",
								true,
							},
							
							{
								"96f785c1-0050-2b7d-98a1-6cf5027042e8",
								true,
							},
							
							{
								"f94fb16c-6146-98e5-b2ac-a3cfa72b0d77",
								true,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki After Zeni",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"f121b876-3d81-67e4-984a-68f2324c3835",
								false,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"14adbf47-bc44-a663-8e4c-471c85a8fbbd",
								true,
							},
							
							{
								"de4e6705-29c7-f3bf-a84a-10d02f778ba5",
								true,
							},
							
							{
								"ffb8a6c7-8f05-1845-a5ca-69b9bd2649ac",
								true,
							},
							
							{
								"96f785c1-0050-2b7d-98a1-6cf5027042e8",
								true,
							},
							
							{
								"f94fb16c-6146-98e5-b2ac-a3cfa72b0d77",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki No Zeni CD Enabled",
						uuid = "a88eaab4-100a-40c6-a917-88acd6a0831c",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"f121b876-3d81-67e4-984a-68f2324c3835",
								false,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"14adbf47-bc44-a663-8e4c-471c85a8fbbd",
								true,
							},
							
							{
								"de4e6705-29c7-f3bf-a84a-10d02f778ba5",
								false,
							},
							
							{
								"96f785c1-0050-2b7d-98a1-6cf5027042e8",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki CD Disabled",
						uuid = "1f0a505a-83c9-d6ba-bebf-c93081ace1bb",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"e7de50ca-b2f8-752a-b528-db724f2d7054",
								true,
							},
							
							{
								"2312ae26-c802-ad39-bbbf-0830ed918dac",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "26b5ad51-d25f-fa37-8f04-0835d8d85068",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "e7de50ca-b2f8-752a-b528-db724f2d7054",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4362,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Sam",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						name = "Am Moving",
						uuid = "f121b876-3d81-67e4-984a-68f2324c3835",
						version = 2,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 6,
						name = "Target <= 6y",
						uuid = "14adbf47-bc44-a663-8e4c-471c85a8fbbd",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "de4e6705-29c7-f3bf-a84a-10d02f778ba5",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorReactions_CurrentCombatTimer > 4.0",
						dequeueIfLuaFalse = true,
						name = "Combat >= 4s",
						uuid = "ffb8a6c7-8f05-1845-a5ca-69b9bd2649ac",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41605,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Iainuki CD <= 3s",
						uuid = "96f785c1-0050-2b7d-98a1-6cf5027042e8",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Zeninage",
						uuid = "f94fb16c-6146-98e5-b2ac-a3cfa72b0d77",
						version = 2,
					},
				},
				
				{
					data = 
					{
						actionID = 41606,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Zeninage Off CD",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 2,
					},
				},
			},
			name = "P. Sam Iainuki",
			throttleTime = 100,
			uuid = "340ed7d0-1aad-89f7-be46-d0978596d6c0",
			version = 2,
		},
		inheritedIndex = 38,
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
						actionLua = "if not data.pGeoTogglesInitialised then\n\tdata.pGeoLevitatePartyEnabled = false\n\tdata.pGeoTogglesInitialised = true\nend",
						conditions = 
						{
							
							{
								"c8473c58-50b2-e36e-978e-97c251f2527d",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Init",
						uuid = "f824ba34-7a6a-8f76-aa79-e805614d632f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "GUI:SetNextWindowSize(140, 50, GUI.SetCond_Always)\nGUI:Begin(\"Geo Levitate Toggle\", true, GUI.WindowFlags_NoTitleBar | GUI.WindowFlags_NoResize)\n\nif data.pGeoLevitatePartyEnabled then\n    GUI:PushStyleColor(GUI.Col_Button, 0.2, 0.7, 0.2, 1.0) -- Green\nelse\n    GUI:PushStyleColor(GUI.Col_Button, 0.7, 0.2, 0.2, 1.0) -- Red\nend\n\nif GUI:Button(\"Levitate Party\", 120, 35) then\n    data.pGeoLevitatePartyEnabled = not data.pGeoLevitatePartyEnabled\nend\n\n\nGUI:PopStyleColor()\n\nGUI:End()",
						conditions = 
						{
							
							{
								"c8473c58-50b2-e36e-978e-97c251f2527d",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Draw",
						uuid = "b84116e5-badb-44c3-b04f-0a372aceb5b3",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 4364,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Phantom Geomancer",
						uuid = "c8473c58-50b2-e36e-978e-97c251f2527d",
						version = 2,
					},
				},
			},
			eventType = 13,
			name = "P. Geomancer Levitate Toggle",
			uuid = "608ec0d1-adf2-ec9d-8f73-8e6c280fbb5d",
			version = 2,
		},
		inheritedIndex = 37,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 41620,
						conditions = 
						{
							
							{
								"dc067595-2ebe-4625-a548-1a90499d46f1",
								true,
							},
							
							{
								"5c84db7a-5a39-f23e-be46-a4cb18d08ff8",
								true,
							},
							
							{
								"0a49f18a-75ad-dbf1-9ca1-e4c496d8eead",
								true,
							},
							
							{
								"86e868dc-33c3-6f2a-9a8b-1a3eb2fffe94",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_ArmsLength",
						targetType = "Detection Target",
						uuid = "9ec06c4c-b371-6720-973e-2d03f423be2a",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 4364,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Phantom Geomancer",
						uuid = "dc067595-2ebe-4625-a548-1a90499d46f1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.pGeoLevitatePartyEnabled",
						dequeueIfLuaFalse = true,
						name = "Button Enabled",
						uuid = "5c84db7a-5a39-f23e-be46-a4cb18d08ff8",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Assist Enabled",
						uuid = "0a49f18a-75ad-dbf1-9ca1-e4c496d8eead",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4258,
						category = "Party",
						name = "Missing Suspend",
						partyTargetType = "Detection Target",
						uuid = "361e2e5c-7107-cff1-ae22-b1b9fdd09481",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						partyTargetType = "Detection Target",
						uuid = "4cb72cee-b39d-b031-b616-976f9db6d064",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"361e2e5c-7107-cff1-ae22-b1b9fdd09481",
								true,
							},
							
							{
								"4cb72cee-b39d-b031-b616-976f9db6d064",
								true,
							},
						},
						filterTargetType = "Party",
						name = "Filter",
						uuid = "86e868dc-33c3-6f2a-9a8b-1a3eb2fffe94",
						version = 2,
					},
				},
			},
			name = "P. Geomancer Levitate Party",
			uuid = "228a73f9-c34a-52ed-8402-2b3ccba1f5c1",
			version = 2,
		},
		inheritedIndex = 38,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			name = "-- Utility reactions below here --",
			uuid = "dc22849f-d549-0cd1-ae73-c86f4d770c5a",
			version = 2,
		},
		inheritedIndex = 37,
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
						actionLua = "local green,yellow,red,blue = 1677786914,1677787134,1677721855,1694449152\ndata.dedoTargetNames = data.dedoTargetNames or {\n-- Add names or contentid you want to track here\n-- after modifying the table you have to trigger onwipe under Debug tab \n-- or reload lua for it to reflect\n\n-- the value can either be a color or a table if you want to force to show invisible ents\n\n    [\"treasure coffer\"] = green,\n    [\"survey point\"] = yellow,\n    [\"2010139\"] = {color = red, forceVisible = true}, \n   -- [\"Random Test Name\"] = blue,\n    \n    \n-- if you want other colors than those 4 you can just put in a u32 color value\n-- color codes can be found in Anyone's Dev Monitor > Tools & Debugging Helper > Color Picker \n-- its the U32 Value you want.\n\n}\n\ndata.dedoArrowEnts = data.dedoArrowEnts or {}\ndata.dedoArrowTime = Now()\ntable.clear(data.dedoArrowEnts)\n\nfor id, ent in pairs(TensorCore.entityList(\"\")) do\n    local lowerName = string.lower(ent.name)\n    local targetConfig = data.dedoTargetNames[lowerName] or data.dedoTargetNames[tostring(ent.contentid)]\n    \n    if targetConfig then\n        local color, forceVisible\n        if type(targetConfig) == \"table\" then\n            color = targetConfig.color\n            forceVisible = targetConfig.forceVisible or false\n        else\n            color = targetConfig\n            forceVisible = false\n        end\n        \n        local dist = TensorCore.getDistance2d(TensorCore.mGetPlayer().pos, ent.pos)\n        local isVisible = Argus.isEntityVisible(ent)\n        \n        if dist > 5 and (isVisible or forceVisible) then\n            data.dedoArrowEnts[id] = {name = ent.name,pos = ent.pos,color = color,dist = dist,}\n        end\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"6cdcc0ad-fa02-e3af-97af-f926c182182f",
								true,
							},
							
							{
								"c7b2860b-8289-7795-a478-9d3865187c43",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Modify List",
						uuid = "dc3172cf-0216-5185-925c-d466070e4db1",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local player = TensorCore.mGetPlayer()\nfor id, ent in pairs(data.dedoArrowEnts) do\n\tlocal g = TensorCore.getStaticDrawer(ent.color)\n\tg.colorOutline = 4294967295\n\tg:addArrow(player.pos.x, player.pos.y, player.pos.z,TensorCore.getHeadingToTarget(player.pos, ent.pos),1.5, 0.25, nil, nil, true)\n\tg:addCircle(ent.pos.x, ent.pos.y, ent.pos.z, 1, true)\n\tg.colorOutline = nil\nend\nself.used = true",
						conditions = 
						{
							
							{
								"6cdcc0ad-fa02-e3af-97af-f926c182182f",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "c27fb81b-9bdc-0481-a815-bbb07fe0385b",
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
						uuid = "6cdcc0ad-fa02-e3af-97af-f926c182182f",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.dedoArrowTime == nil or TimeSince(data.dedoArrowTime) > 1000",
						uuid = "c7b2860b-8289-7795-a478-9d3865187c43",
						version = 2,
					},
				},
			},
			eventType = 12,
			name = "[OC] Draw Arrow",
			uuid = "6d0328b9-df88-b08a-a5f2-c23e5dd03dd9",
			version = 2,
		},
		inheritedIndex = 47,
	},
	
	{
		data = 
		{
			actions = 
			{
			},
			conditions = 
			{
			},
			name = "-- Draw reactions below here --",
			uuid = "0bc71c45-b3d2-c6f5-9741-0c714a0380a6",
			version = 2,
		},
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
						actionLua = "if eventArgs.newTetherID == 303 then \n\tTensorCore.getMoogleDrawer():addTimedCircleOnEnt(5000,eventArgs.newTargetID,16) \nend\n\nif eventArgs.newTetherID == 304 then \n\tTensorCore.getMoogleDrawer():addTimedCrossOnEnt(5000,eventArgs.newTargetID,40,10) \nend\n--TensorCore.getMoogleDrawer()\nself.used = true",
						conditions = 
						{
							
							{
								"710d381b-ee90-f727-8e57-5926dbc9e986",
								true,
							},
							
							{
								"288e0df2-3cf0-27dc-a47c-64b16757ff8e",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "6d55eaa6-366c-5347-9562-23b1ce614437",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if eventArgs.newTetherID == 306 then \n\tTensorCore.getMoogleDrawer():addTimedCircleOnEnt(6000,eventArgs.sourceEntityID,16) \nend\n\n\nself.used = true",
						conditions = 
						{
							
							{
								"710d381b-ee90-f727-8e57-5926dbc9e986",
								true,
							},
							
							{
								"b6691996-e299-9531-91cd-2d466669ab9b",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "91386d48-3d93-419d-8463-2aab6cfb7cbc",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.newTetherID == 303 or eventArgs.newTetherID == 304 or eventArgs.newTetherID == 306",
						dequeueIfLuaFalse = true,
						name = "tetherID",
						uuid = "710d381b-ee90-f727-8e57-5926dbc9e986",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.newTargetContentID == 13815",
						dequeueIfLuaFalse = true,
						name = "Target contentID",
						uuid = "288e0df2-3cf0-27dc-a47c-64b16757ff8e",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.sourceEntityContentID == 13815",
						dequeueIfLuaFalse = true,
						name = "Source contentID",
						uuid = "b6691996-e299-9531-91cd-2d466669ab9b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						uuid = "c50e5927-3e81-3a21-95f3-843678ef1597",
						version = 2,
					},
				},
			},
			eventType = 15,
			name = "[Command Urn] Tether Cross/Circle",
			uuid = "e4428edd-5262-418a-8101-318e67b84532",
			version = 2,
		},
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
						actionLua = "if data.dedoSpiralCircle == nil or TimeSince(data.dedoSpiralCircle) > 20000 then\ndata.dedoSpiralCircle = Now()\ndata.dedoSpiralCircleCount = 0\nend\n\nlocal bossID\nif data.dedoSpiralCircleCount == 1 then\nfor id,ent in pairs(TensorCore.entityList(\"contentid=13726,nearest,attackable\")) do\nbossID = id\nend\nlocal epos = TensorCore.mGetEntity(bossID).pos\nlocal newPos = TensorCore.getPosInDirection(epos,epos.h+math.pi+math.rad(25),10)\n\nTensorCore.getStaticDrawer(1845559113):addTimedCircle(9200,newPos.x,newPos.y,newPos.z,1.5)\nTensorCore.getStaticDrawer(1845494015):addTimedCircle(9200,eventArgs.x,eventArgs.y,eventArgs.z,eventArgs.aoeLength)\nTensorCore.getStaticDrawer(1845559113):addTimedCircle(9200,eventArgs.x,eventArgs.y,eventArgs.z,eventArgs.aoeLength/2,9200)\nelse\nTensorCore.getMoogleDrawer():addTimedCircle(5200,eventArgs.x,eventArgs.y,eventArgs.z,eventArgs.aoeLength,4000)\n\nend \n\ndata.dedoSpiralCircleCount = data.dedoSpiralCircleCount + 1\nself.used = true",
						conditions = 
						{
							
							{
								"12da2296-f5d5-dfb8-bd33-ea1afc255f47",
								true,
							},
						},
						gVar = "ACR_RikuGNB3_CD",
						uuid = "34ae0b30-3455-51a2-8d72-d313fa4a7c3f",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 41135 and eventArgs.contentID == 13726",
						dequeueIfLuaFalse = true,
						uuid = "12da2296-f5d5-dfb8-bd33-ea1afc255f47",
						version = 2,
					},
				},
			},
			eventType = 18,
			name = "[MythidIdol] SpinOrbs",
			uuid = "360053ac-5a2f-66d4-87fe-ec402fc2f285",
			version = 2,
		},
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
						actionLua = "local aoePos = {x = eventArgs.x, y = eventArgs.y, z = eventArgs.z}\nlocal aoeHeading = eventArgs.heading\nlocal aoeAngle = 60\n\nlocal dirX, dirZ = math.sin(aoeHeading), math.cos(aoeHeading)\nlocal cosAngle = math.cos(math.rad(aoeAngle/2))\n\nlocal isDoubleCast = eventArgs.duration > 5\n\nfor _, entity in pairs(TensorCore.entityList(\"contentid=13651\")) do\n\tlocal entityPos = entity.pos\n\tlocal relX, relZ = entityPos.x - aoePos.x, entityPos.z - aoePos.z\n\tlocal forward = (relX * dirX) + (relZ * dirZ)\n\tlocal distToAOE = TensorCore.getDistance2d(aoePos, entityPos)\n\tif (forward / distToAOE) >= cosAngle then\n\t\tlocal drawDelay = (isDoubleCast and 7000) or 0\n\t\tlocal orbExplosionDelay = 2500\n\t\tTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.duration*1000)+orbExplosionDelay-drawDelay,entity.id,15,drawDelay)\n\tend\nend\nself.used = true",
						conditions = 
						{
							
							{
								"a21dd969-932e-6398-8760-438fd6c6737d",
								true,
							},
							
							{
								"84173e32-97e2-9885-bf35-7bc51c1c6c91",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Wind Orb",
						uuid = "a1d006ec-9474-4c7c-8b0d-a34f4c004099",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local aoePos = {x = eventArgs.x, y = eventArgs.y, z = eventArgs.z}\nlocal aoeHeading = eventArgs.heading\nlocal aoeAngle = 60\n\nlocal dirX, dirZ = math.sin(aoeHeading), math.cos(aoeHeading)\nlocal cosAngle = math.cos(math.rad(aoeAngle/2))\n\nlocal isDoubleCast = eventArgs.duration > 5\n\nfor _, entity in pairs(TensorCore.entityList(\"contentid=13652\")) do\n\tlocal entityPos = entity.pos\n\tlocal relX, relZ = entityPos.x - aoePos.x, entityPos.z - aoePos.z\n\tlocal forward = (relX * dirX) + (relZ * dirZ)\n\tlocal distToAOE = TensorCore.getDistance2d(aoePos, entityPos)\n\tif (forward / distToAOE) >= cosAngle then\n\t\tlocal drawDelay = (isDoubleCast and 7000) or 0\n\t\tlocal orbExplosionDelay = 2500\n\t\tTensorCore.getMoogleDrawer():addTimedCircleOnEnt((eventArgs.duration*1000)+orbExplosionDelay-drawDelay,entity.id,15,drawDelay)\n\tend\nend\nself.used = true",
						conditions = 
						{
							
							{
								"a21dd969-932e-6398-8760-438fd6c6737d",
								true,
							},
							
							{
								"2015fdfa-2327-1a4f-b24c-255145965531",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Earth Orb",
						uuid = "8b88c007-2f89-e57d-9b54-d424d2c3316e",
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
						uuid = "a21dd969-932e-6398-8760-438fd6c6737d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeName == \"Ancient Aero III\"",
						dequeueIfLuaFalse = true,
						name = "Is Wind",
						uuid = "84173e32-97e2-9885-bf35-7bc51c1c6c91",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeName == \"Ancient Stone III\"",
						dequeueIfLuaFalse = true,
						name = "Is Earth",
						uuid = "2015fdfa-2327-1a4f-b24c-255145965531",
						version = 2,
					},
				},
			},
			eventType = 18,
			name = "[RepairedLion] Orb AoE",
			uuid = "063b86b6-c420-08c8-b4d6-9f5efd9b1e6a",
			version = 2,
		},
		inheritedIndex = 53,
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
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = {label = \"Lethal Nails\", source = \"CE: Deathclaw\"}\nlocal delay = eventArgs.delay-2.5\nTensorCore.getMoogleDrawer():addTimedRectOnEnt((eventArgs.duration-delay)*1000,eventArgs.entityID,50,eventArgs.aoeWidth,nil,delay*1000)\ndata.firstClawModel = nil\nself.used = true",
						conditions = 
						{
							
							{
								"77a3f58d-a783-7f7b-9181-a985b5f28107",
								true,
							},
							
							{
								"ebed26f6-d5ad-9622-9e62-354e7fe6cb2b",
								true,
							},
							
							{
								"433c299f-65b9-c062-9c25-547f4bab7dbf",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "4bb9c9cd-fce1-0703-9754-8fca5d8f166c",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeName == \"Lethal Nails\"",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						spellIDList = 
						{
							41315,
							41316,
							41317,
							41318,
							41319,
						},
						uuid = "ebed26f6-d5ad-9622-9e62-354e7fe6cb2b",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						uuid = "77a3f58d-a783-7f7b-9181-a985b5f28107",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn TensorCore.getDistance2d(player.pos, { h = 0, x = 680, y = 74, z = 534 }) < 40",
						dequeueIfLuaFalse = true,
						name = "In Deathclaw Arena",
						uuid = "433c299f-65b9-c062-9c25-547f4bab7dbf",
						version = 2,
					},
				},
			},
			eventType = 18,
			name = "[DeathClaw] Clawmarks AoE",
			uuid = "c2e2e902-e333-f7c0-b47a-afc01c26fd3b",
			version = 2,
		},
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
						actionLua = "data.firstClawModel = data.firstClawModel or Argus.getEntityModel(eventArgs.entityID)\nif data.firstClawModel ~= nil and Argus.getEntityModel(eventArgs.entityID) == data.firstClawModel then\nTensorCore.getMoogleDrawer():addTimedRectOnEnt(7000,eventArgs.entityID,60,7)\nend\nself.used = true\n\n",
						conditions = 
						{
							
							{
								"fa4c3f2f-af19-5d4e-8fe7-38d0482c47a6",
								true,
							},
							
							{
								"89d0322d-b87a-4c69-b831-9bbd35a00e84",
								true,
							},
							
							{
								"82f9e7f1-321f-5461-b8b3-4cadcadae348",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "0192f147-b49f-c2b7-a701-3e4d3645d576",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID == 13658 and eventArgs.wasVisible == false",
						dequeueIfLuaFalse = true,
						uuid = "89d0322d-b87a-4c69-b831-9bbd35a00e84",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						uuid = "fa4c3f2f-af19-5d4e-8fe7-38d0482c47a6",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn TensorCore.getDistance2d(player.pos, { h = 0, x = 680, y = 74, z = 534 }) < 40",
						dequeueIfLuaFalse = true,
						name = "In Deathclaw Arena",
						uuid = "82f9e7f1-321f-5461-b8b3-4cadcadae348",
						version = 2,
					},
				},
			},
			eventType = 22,
			name = "[DeathClaw] Clawmarks EntityVisibility",
			uuid = "8b5df8bf-33e5-e012-8f07-35e47c3553bd",
			version = 2,
		},
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
						actionLua = "data.deathclawCones = data.deathclawCones or {}\ndata.deathclawCones[eventArgs.entityID] = TensorCore.getMoogleDrawer():addTimedConeOnEnt(7000,eventArgs.entityID,40,math.rad(90),nil)\nself.used = true",
						conditions = 
						{
							
							{
								"af7e015f-e56c-b02f-bffa-6d35e42d7467",
								true,
							},
							
							{
								"3dff59b3-6552-44b6-8ffe-d03350028d33",
								true,
							},
							
							{
								"3101f3ac-f676-087b-a530-94ebe04426dc",
								true,
							},
							
							{
								"617b5141-a395-cb8e-a507-3ef77774b1d8",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "de9c98eb-04af-cf63-a53b-243dd3e581ac",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "Argus.deleteTimedShape(data.deathclawCones[eventArgs.entityID])\ndata.deathclawCones[eventArgs.entityID] = nil\nself.used = true",
						conditions = 
						{
							
							{
								"af7e015f-e56c-b02f-bffa-6d35e42d7467",
								true,
							},
							
							{
								"92a83f85-62aa-4c5d-9041-216f3cffad2d",
								true,
							},
							
							{
								"617b5141-a395-cb8e-a507-3ef77774b1d8",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "c322bdc3-999c-a3e9-aaf1-7e73d2489527",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.a2 == 16 and eventArgs.a3 == 32 and eventArgs.a4 == 0",
						dequeueIfLuaFalse = true,
						uuid = "3dff59b3-6552-44b6-8ffe-d03350028d33",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.a2 == 4 and eventArgs.a3 == 8 and eventArgs.a4 == 0\n\n",
						dequeueIfLuaFalse = true,
						uuid = "92a83f85-62aa-4c5d-9041-216f3cffad2d",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.deathclawCones == nil or table.size(data.deathclawCones) < 2",
						uuid = "3101f3ac-f676-087b-a530-94ebe04426dc",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						uuid = "af7e015f-e56c-b02f-bffa-6d35e42d7467",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn TensorCore.getDistance2d(player.pos, { h = 0, x = 680, y = 74, z = 534 }) < 40",
						dequeueIfLuaFalse = true,
						name = "In Deathclaw Arena",
						uuid = "617b5141-a395-cb8e-a507-3ef77774b1d8",
						version = 2,
					},
				},
			},
			eventType = 19,
			name = "[DeathClaw] EventObjectScript",
			timeout = 15,
			uuid = "17e6a475-9ab7-00e1-ad31-af75e6073ff2",
			version = 2,
		},
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
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"d87b88ed-15b7-3126-8ab9-02a737bc5b37",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "0c6ea1e6-0a85-5253-ad24-e7ce49b39bda",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"89351613-c8ea-8c06-a135-184e8bd4eec9",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "4b220914-a606-b0d0-b801-54b741def816",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local ent = TensorCore.mGetEntity(eventArgs.entityID)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h-math.pi/2)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h+math.pi/2)\nself.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"d87b88ed-15b7-3126-8ab9-02a737bc5b37",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Horizontal",
						uuid = "af2407d0-4ace-3dd7-8c61-b088dd3730e2",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local ent = TensorCore.mGetEntity(eventArgs.entityID)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h+math.pi)\nself.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"89351613-c8ea-8c06-a135-184e8bd4eec9",
								true,
							},
							
							{
								"0e9fa33a-38c1-2338-9f85-75d9ce25bc7c",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Vertical",
						uuid = "b456e23d-056a-a296-8a67-03c1a63ffd31",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41324,
						name = "Horizontal Crosshatch",
						spellIDList = 
						{
							41324,
							41331,
						},
						uuid = "d87b88ed-15b7-3126-8ab9-02a737bc5b37",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41323,
						name = "Vertical Crosshatch",
						spellIDList = 
						{
							41323,
							41330,
						},
						uuid = "89351613-c8ea-8c06-a135-184e8bd4eec9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						uuid = "162641a4-b299-b4e9-83a0-bd3da968ac8a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn TensorCore.getDistance2d(player.pos, { h = 0, x = 680, y = 74, z = 534 }) < 40",
						dequeueIfLuaFalse = true,
						name = "In Deathclaw Arena",
						uuid = "0e9fa33a-38c1-2338-9f85-75d9ce25bc7c",
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "[DeathClaw] Crosshatch OnEntityChannel",
			throttleTime = 500,
			uuid = "ba99423d-bf7c-c3e2-b84b-ae7da56bc69e",
			version = 2,
		},
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
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"d87b88ed-15b7-3126-8ab9-02a737bc5b37",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "0c6ea1e6-0a85-5253-ad24-e7ce49b39bda",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "self.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"89351613-c8ea-8c06-a135-184e8bd4eec9",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "4b220914-a606-b0d0-b801-54b741def816",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local ent = TensorCore.mGetEntity(eventArgs.entityID)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h-math.pi/2)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h+math.pi/2)\nself.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"d87b88ed-15b7-3126-8ab9-02a737bc5b37",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Horizontal",
						uuid = "af2407d0-4ace-3dd7-8c61-b088dd3730e2",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local ent = TensorCore.mGetEntity(eventArgs.entityID)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h)\nTensorCore.getMoogleDrawer():addTimedCone((eventArgs.channelTimeMax*1000)-500,ent.pos.x,ent.pos.y,ent.pos.z,40,math.rad(90),ent.pos.h+math.pi)\nself.used = true",
						conditions = 
						{
							
							{
								"162641a4-b299-b4e9-83a0-bd3da968ac8a",
								true,
							},
							
							{
								"89351613-c8ea-8c06-a135-184e8bd4eec9",
								true,
							},
							
							{
								"0e9fa33a-38c1-2338-9f85-75d9ce25bc7c",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Vertical",
						uuid = "b456e23d-056a-a296-8a67-03c1a63ffd31",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41324,
						name = "Horizontal Crosshatch",
						spellIDList = 
						{
							41324,
							41331,
						},
						uuid = "d87b88ed-15b7-3126-8ab9-02a737bc5b37",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 41323,
						name = "Vertical Crosshatch",
						spellIDList = 
						{
							41323,
							41330,
						},
						uuid = "89351613-c8ea-8c06-a135-184e8bd4eec9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 8,
						dequeueIfLuaFalse = true,
						localmapid = 1252,
						uuid = "162641a4-b299-b4e9-83a0-bd3da968ac8a",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn TensorCore.getDistance2d(player.pos, { h = 0, x = 680, y = 74, z = 534 }) < 40",
						dequeueIfLuaFalse = true,
						name = "In Deathclaw Arena",
						uuid = "0e9fa33a-38c1-2338-9f85-75d9ce25bc7c",
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "[DeathClaw] Crosshatch OnEntityChannel",
			throttleTime = 500,
			uuid = "0baa1914-abcd-7175-8f51-0d15fb256a1b",
			version = 2,
		},
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
						actionLua = "local orange = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(255/255, 128/255, 0/255, .25), 2)\n   \n-- Get current Roundel position and rotation\nlocal entity = TensorCore.mGetEntity(eventArgs.entityID)\nlocal arenaCenter = { x = 636, y = 108, z = -54 }\n   \n-- Calculate distance and rotation angle\nlocal distance = TensorCore.getDistance2d(arenaCenter, entity.pos)\nlocal rotationAngle = distance < 15 and math.rad(280) or math.rad(150)\n\n-- Determine rotation direction based on entity facing\nif TensorCore.getHeadingToTarget(arenaCenter, entity.pos) + math.pi/2 > entity.pos.h then\n    rotationAngle = -rotationAngle\nend\nlocal finalPos = TensorCore.rotatePosAroundPos(arenaCenter, entity.pos, rotationAngle)\n\n-- Draw at predicted final position\nd(\"[Lj] Drawing Orb Predicted Location\")\norange:addTimedCircle(5200, finalPos.x, entity.pos.y, finalPos.z, 12, 0, false)\nself.used = true",
						conditions = 
						{
							
							{
								"11223834-0fdb-af78-b3b5-d5100bfbfeef",
								true,
							},
							
							{
								"550e20d9-f13d-9dc3-89be-04cde5829013",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "3e66e0d7-7e02-875d-9c36-5a335bbdf2c9",
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
						uuid = "11223834-0fdb-af78-b3b5-d5100bfbfeef",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID == 13812 and eventArgs.oldActiveAura1 == 2428 and eventArgs.newActiveAura1 == 2429",
						dequeueIfLuaFalse = true,
						uuid = "550e20d9-f13d-9dc3-89be-04cde5829013",
						version = 2,
					},
				},
			},
			eventType = 25,
			name = "[On The Hunt] Orbs",
			uuid = "4164913b-c2d1-83e0-a80e-9b0173165d94",
			version = 2,
		},
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
						actionLua = "d(\"Record Inter\")\ndata.ocGarulaIntercardLightning = true\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"31ab17ca-1766-b858-8c32-5e1ede7eab12",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Record Intercard Lightning",
						uuid = "cfc2248e-d420-e105-be82-c70775882def",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Record Not Inter\")\ndata.ocGarulaIntercardLightning = false\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"cd5ab771-4d08-f43f-9eb7-43101d1310df",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Record Not Intercard Lightning",
						uuid = "76ae3e74-c328-cd8f-b2e3-b478824dc606",
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
						uuid = "3d713919-4904-c97e-bb72-5fba1cc7d8d1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.newActiveAura2 == 2395",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventMarkerID = 578,
						name = "Is Intercard",
						uuid = "31ab17ca-1766-b858-8c32-5e1ede7eab12",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.oldActiveAura2 == 2395 and eventArgs.newActiveAura2 == 0",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventMarkerID = 578,
						name = "Is Not Intercard",
						uuid = "cd5ab771-4d08-f43f-9eb7-43101d1310df",
						version = 2,
					},
				},
			},
			eventType = 25,
			name = "[NeoGarula] Rushing Rumble Lightning Cones",
			uuid = "ea473f7f-d006-97c2-86f4-b1c7f3e68a81",
			version = 2,
		},
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
						actionLua = "d(\"Reset Inter\")\ndata.ocGarulaIntercardLightning = nil\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"31ab17ca-1766-b858-8c32-5e1ede7eab12",
								true,
							},
							
							{
								"831587ec-aa31-c05d-9716-7138cd1f2de9",
								true,
							},
							
							{
								"3d093ac1-e37c-273a-b7d2-8459b1579b66",
								false,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Reset Intercard Lightning",
						uuid = "cae35620-9631-5118-bd87-f6b2dde56b36",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ocGarulaMarkerBirdEntID = eventArgs.entityID\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"31ab17ca-1766-b858-8c32-5e1ede7eab12",
								true,
							},
							
							{
								"831587ec-aa31-c05d-9716-7138cd1f2de9",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Record Bird Entity ID",
						uuid = "cfc2248e-d420-e105-be82-c70775882def",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local pi = math.pi\nlocal back = pi\nlocal left = pi / 2\nlocal right = -pi / 2\n\nlocal coneAngle = 45\nlocal coneRad = coneAngle * (pi / 180)\nlocal coneLength = 70\nlocal circleRadius = 30\nlocal birdHitRadius = 6\n\nlocal drawDuration = 8750\nlocal drawDelay = 2500\n\nlocal function normalizeHeading(heading)\n    return ((heading + pi) % (2 * pi)) - pi\nend\n\nlocal chatterbirdEnt = TensorCore.mGetEntity(data.ocGarulaMarkerBirdEntID)\nlocal chatterbirdPos = chatterbirdEnt.pos\nlocal neoGarulaPos = data.ocGarulaPrevEndPoint\n\nif neoGarulaPos then\n\tlocal garulaEndPoint = TensorCore.getPosInDirection(chatterbirdPos, chatterbirdPos.h, birdHitRadius)\n\tdata.ocGarulaPrevEndPoint = garulaEndPoint\n\n\tlocal garulaToEndPointHeading = TensorCore.getHeadingToTarget(neoGarulaPos, garulaEndPoint)\n\n\tlocal directionOffsets = { 0, pi, pi / 2, -pi / 2 }\n\tif data.ocGarulaIntercardLightning then\n\t\tfor i = 1, #directionOffsets do\n\t\t\tdirectionOffsets[i] = directionOffsets[i] - (pi / 4)\n\t\tend\n\tend\n\n\tlocal moogleDrawer = TensorCore.getMoogleDrawer()\n\tfor _, offset in ipairs(directionOffsets) do\n\t\tlocal coneHeading = normalizeHeading(garulaToEndPointHeading + offset)\n\t\tmoogleDrawer:addTimedCone(drawDuration, garulaEndPoint.x, garulaEndPoint.y, garulaEndPoint.z, coneLength, coneRad, coneHeading, drawDelay)\n\tend\n\tmoogleDrawer:addTimedCircle(drawDuration,garulaEndPoint.x,garulaEndPoint.y,garulaEndPoint.z,circleRadius, drawDelay)\n\n\tdata.ocGarulaChargeCount = data.ocGarulaChargeCount + 1\n\tif data.ocGarulaChargeCount >= 3 then\n\t\tdata.ocGarulaRushingRumbleRampage = false\n\tend\nend\n\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"31ab17ca-1766-b858-8c32-5e1ede7eab12",
								true,
							},
							
							{
								"831587ec-aa31-c05d-9716-7138cd1f2de9",
								true,
							},
							
							{
								"3d093ac1-e37c-273a-b7d2-8459b1579b66",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Draw AOE Charge 2 & 3",
						uuid = "4dbf96b7-f4b8-ef35-9f71-4331b377f382",
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
						uuid = "3d713919-4904-c97e-bb72-5fba1cc7d8d1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventMarkerID = 578,
						name = "Marker ID",
						uuid = "31ab17ca-1766-b858-8c32-5e1ede7eab12",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13639,
						name = "Marker On Bird",
						uuid = "831587ec-aa31-c05d-9716-7138cd1f2de9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocGarulaRushingRumbleRampage == true",
						dequeueIfLuaFalse = true,
						name = "Is Rushing Rumble Rampage",
						uuid = "3d093ac1-e37c-273a-b7d2-8459b1579b66",
						version = 2,
					},
				},
			},
			eventType = 4,
			name = "[NeoGarula] Rushing Rumble Bird Marked",
			uuid = "928ccec3-5d5d-5ed9-92a8-c334d943ae52",
			version = 2,
		},
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
						actionLua = "data.ocGarulaRushingRumbleRampage = true\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"831587ec-aa31-c05d-9716-7138cd1f2de9",
								true,
							},
							
							{
								"31ab17ca-1766-b858-8c32-5e1ede7eab12",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Record Rushing Rumble Rampage",
						uuid = "cfc2248e-d420-e105-be82-c70775882def",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "local pi = math.pi\nlocal back = pi\nlocal left = pi / 2\nlocal right = -pi / 2\n\nlocal coneAngle = 45\nlocal coneRad = coneAngle * (pi / 180)\nlocal coneLength = 70\nlocal circleRadius = 30\nlocal birdHitRadius = 6\n\nlocal drawDuration = 10000\n\nlocal function normalizeHeading(heading)\n    return ((heading + pi) % (2 * pi)) - pi\nend\n\nlocal neoGarulaPos\nfor _, foundEntity in pairs(TensorCore.entityList(\"contentid=13638,attackable\")) do\n\tneoGarulaPos = foundEntity.pos\n\tbreak\nend\n\nlocal chatterbirdEnt = TensorCore.mGetEntity(data.ocGarulaMarkerBirdEntID)\nlocal chatterbirdPos = chatterbirdEnt.pos\n\nlocal garulaEndPoint = TensorCore.getPosInDirection(chatterbirdPos, chatterbirdPos.h, birdHitRadius)\ndata.ocGarulaPrevEndPoint = garulaEndPoint\n\nlocal garulaToEndPointHeading = TensorCore.getHeadingToTarget(neoGarulaPos, garulaEndPoint)\n\nlocal directionOffsets = { 0, pi, pi / 2, -pi / 2 }\nif data.ocGarulaIntercardLightning then\n    for i = 1, #directionOffsets do\n        directionOffsets[i] = directionOffsets[i] - (pi / 4)\n    end\nend\n\nlocal moogleDrawer = TensorCore.getMoogleDrawer()\nfor _, offset in ipairs(directionOffsets) do\n    local coneHeading = normalizeHeading(garulaToEndPointHeading + offset)\n    moogleDrawer:addTimedCone(drawDuration, garulaEndPoint.x, garulaEndPoint.y, garulaEndPoint.z, coneLength, coneRad, coneHeading)\nend\nmoogleDrawer:addTimedCircle(drawDuration,garulaEndPoint.x,garulaEndPoint.y,garulaEndPoint.z,circleRadius)\n\ndata.ocGarulaChargeCount = 1\n\nself.used=true",
						conditions = 
						{
							
							{
								"3d713919-4904-c97e-bb72-5fba1cc7d8d1",
								true,
							},
							
							{
								"831587ec-aa31-c05d-9716-7138cd1f2de9",
								true,
							},
							
							{
								"a1b5af49-de07-7460-9a69-50545e276d84",
								true,
							},
						},
						gVar = "ACR_TensorWeeb3_CD",
						name = "Draw AOE Charge 1",
						uuid = "c4f1f772-3f43-ca0d-9b65-950c281fa28c",
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
						uuid = "3d713919-4904-c97e-bb72-5fba1cc7d8d1",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 13638,
						name = "Is Neo Garula",
						uuid = "831587ec-aa31-c05d-9716-7138cd1f2de9",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						eventMarkerID = 578,
						name = "Is Rushing Rumble (Rampage)",
						spellIDList = 
						{
							41175,
							41177,
						},
						uuid = "a1b5af49-de07-7460-9a69-50545e276d84",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventMarkerID = 578,
						eventSpellID = 41177,
						name = "Is Rushing Rumble Rampage",
						spellIDList = 
						{
							41175,
							41177,
						},
						uuid = "31ab17ca-1766-b858-8c32-5e1ede7eab12",
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "[NeoGarula] Rushing Rumble Cast",
			throttleTime = 250,
			uuid = "9221989a-79a6-6bde-834c-88fc67082d1c",
			version = 2,
		},
		inheritedIndex = 52,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 2 Reset",
			uuid = "e4df0c75-0fec-4c79-9c55-f892facb8a5b",
			version = 2,
		},
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
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal green = 1845559113\n\nlocal puddleCount = data.ocFTBBluePuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal redStacks = TensorCore.getBuff(player.id, 4441).stacks\n\nlocal drawer\nif puddleCount < redStacks then\n    drawer = TensorCore.getStaticDrawer(green)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBluePuddleCount = data.ocFTBBluePuddleCount + 1\nif data.ocFTBBluePuddleCount >= 4 then\n\tdata.ocFTBBluePuddleCount = 0\nend\n\nself.used=true",
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
								"6087d150-59a5-9917-b436-a8a1370ecc7a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Safe Blue",
						uuid = "3b6c0a31-376b-be60-9d39-8ccdce241b6d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal red = 1845494015\n\nlocal puddleCount = data.ocFTBRedPuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal redStacks = TensorCore.getBuff(player.id, 4441).stacks\n\nlocal drawer\nif puddleCount < redStacks then\n    drawer = TensorCore.getStaticDrawer(red)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBRedPuddleCount = data.ocFTBRedPuddleCount + 1\nif data.ocFTBRedPuddleCount >= 4 then\n\tdata.ocFTBRedPuddleCount = 0\nend\n\nself.used=true",
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
								"addac3ce-872f-d54a-8035-3e3d9ba538d3",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Unsafe Red",
						uuid = "0c0ef14a-70a8-2590-9882-4a0ef8045554",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal green = 1845559113\n\nlocal puddleCount = data.ocFTBRedPuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal blueStacks = TensorCore.getBuff(player.id, 4442).stacks\n\nlocal drawer\nif puddleCount < blueStacks then\n    drawer = TensorCore.getStaticDrawer(green)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBRedPuddleCount = data.ocFTBRedPuddleCount + 1\nif data.ocFTBRedPuddleCount >= 4 then\n\tdata.ocFTBRedPuddleCount = 0\nend\n\nself.used=true",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"addac3ce-872f-d54a-8035-3e3d9ba538d3",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Safe Red",
						uuid = "d564de9b-69b5-dcad-a0e5-0e7ca51075ce",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[eventArgs.aoeID] = { label = \"Frozen Fallout\", source = \"OC: FTB\" }\n\nlocal initDrawDuration = 11500\nlocal subDrawDuration = 5500\nlocal red = 1845494015\n\nlocal puddleCount = data.ocFTBluePuddleCount\nlocal subDrawDelay = 8900 + (3100 * (puddleCount - 1))\n\nlocal player = TensorCore.mGetPlayer()\nlocal blueStacks = TensorCore.getBuff(player.id, 4442).stacks\n\nlocal drawer\nif puddleCount < blueStacks then\n    drawer = TensorCore.getStaticDrawer(red)\nelse\n    drawer = TensorCore.getMoogleDrawer()\nend\n\nlocal drawDuration\nif puddleCount == 0 then\n    drawDuration = initDrawDuration\nelse\n    drawDuration = subDrawDuration\nend\nlocal drawDelay = ((puddleCount > 0) and subDrawDelay) or 0\n\ndrawer:addTimedCircle(drawDuration, eventArgs.x, eventArgs.y, eventArgs.z, eventArgs.aoeLength, drawDelay)\n\ndata.ocFTBBluePuddleCount = data.ocFTBBluePuddleCount + 1\nif data.ocFTBBluePuddleCount >= 4 then\n\tdata.ocFTBBluePuddleCount = 0\nend\n\nself.used=true",
						conditions = 
						{
							
							{
								"2abe0922-6a71-5ad7-8451-5db61edcb31b",
								true,
							},
							
							{
								"9480ace0-1972-dafa-b418-a87dd2b5d565",
								true,
							},
							
							{
								"6087d150-59a5-9917-b436-a8a1370ecc7a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw Unsafe Blue",
						uuid = "10a32660-5a08-5c09-8825-6aae2ed1503a",
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
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4441,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Nova Ooze",
						uuid = "59c785d8-4b80-a0b1-8a9c-8c8cf80848e4",
						version = 2,
					},
				},
				
				{
					data = 
					{
						buffID = 4442,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Ice Ooze",
						uuid = "9480ace0-1972-dafa-b418-a87dd2b5d565",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 42463",
						dequeueIfLuaFalse = true,
						name = "Is Red Puddle",
						uuid = "addac3ce-872f-d54a-8035-3e3d9ba538d3",
						version = 2,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.aoeID == 42464",
						dequeueIfLuaFalse = true,
						name = "Is Blue Puddle",
						uuid = "6087d150-59a5-9917-b436-a8a1370ecc7a",
						version = 2,
					},
				},
			},
			eventType = 18,
			name = "[FTB] Boss 2 Puddles",
			uuid = "9837058d-0a7d-d388-abf2-bef20b586bf5",
			version = 2,
		},
		inheritedIndex = 54,
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
						version = 2,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 2 Puddles TTS",
			uuid = "06acd7e2-3a2b-4c8b-a09a-482655849fc6",
			version = 2,
		},
		inheritedIndex = 57,
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
						version = 2,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 22,
			name = "[FTB] Boss 2 Fireballs",
			uuid = "ae235d51-4679-9c09-8261-885a05bc74bb",
			version = 2,
		},
		inheritedIndex = 56,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 15,
			name = "[FTB] Boss 2 Snowball Tether",
			throttleTime = 1250,
			uuid = "6f59f82c-6eca-9703-b3db-8c94e14d1ae8",
			version = 2,
		},
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
						version = 2,
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
						version = 2,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 19,
			name = "[FTB] Boss 3 Puddles",
			uuid = "65c65955-c622-bb22-b8e8-dffca6394876",
			version = 2,
		},
		inheritedIndex = 59,
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
						version = 2,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 18,
			name = "[FTB] Boss 4 Daggers",
			uuid = "2f0e26c9-d9fc-79b6-add7-bac559401508",
			version = 2,
		},
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
						version = 2,
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
						version = 2,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 3,
			name = "[FTB] Boss 4 Axe/Lanceblow",
			uuid = "d4e1f2e7-ce77-30ee-9a49-c8e249350bd1",
			version = 2,
		},
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
						actionLua = "self.used=true",
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
						actionLua = "local players = TensorCore.entityList(\"chartype=4,alive,maxdistance=30\")\n\nlocal drawDuration = 8000\nlocal aoeRadius = 5\nlocal buffIDs = {4336, 4337, 4338}\n\nlocal drawer = TensorCore.getStaticDrawer(1677787134)\n\nfor playerEntID, _ in pairs(players) do\n\tfor _, buffID in ipairs(buffIDs) do\n\t\tif TensorCore.hasBuff(playerEntID, buffID) then\n\t\t\tlocal buff = TensorCore.getBuff(playerEntID, buffID)\n\t\t\tlocal buffDuration = buff.duration * 1000\n\t\t\tlocal drawDelay = buffDuration - drawDuration\n\t\t\tdrawer:addTimedCircleOnEnt(drawDuration, playerEntID, aoeRadius, drawDelay)\n\n\t\t\tbreak\n\t\tend\n\tend\nend\n\nself.used=true",
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
						version = 2,
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
						version = 2,
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
						version = 2,
					},
				},
			},
			eventType = 2,
			name = "[FTB] Boss 4 Holy Lance",
			throttleTime = 2000,
			uuid = "de5a2ddc-3857-a719-a3b4-f711d8645e26",
			version = 2,
		},
		inheritedIndex = 61,
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl