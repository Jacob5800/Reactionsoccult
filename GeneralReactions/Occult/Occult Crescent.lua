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
						aType = "Lua",
						actionLua = "data.ocCombatTimer = Now()\nself.used=true",
						conditions = 
						{
							
							{
								"01f3fe13-c40c-3ce8-8d19-23ddba44f5bb",
								true,
							},
							
							{
								"c0885fdc-b761-e898-bcc3-c2982938e5b6",
								true,
							},
							
							{
								"ffa93cf7-1588-f5be-ab51-e43b5b424dd6",
								true,
							},
							
							{
								"cc96ea40-8454-5c36-bc90-9f13fc20a510",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Start Combat Timer",
						uuid = "a21789cd-ea60-48f5-af65-4eca46a5aa01",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "data.ocCombatTimer = nil\nself.used=true",
						conditions = 
						{
							
							{
								"01f3fe13-c40c-3ce8-8d19-23ddba44f5bb",
								true,
							},
							
							{
								"c0885fdc-b761-e898-bcc3-c2982938e5b6",
								true,
							},
							
							{
								"ffa93cf7-1588-f5be-ab51-e43b5b424dd6",
								false,
							},
							
							{
								"cc96ea40-8454-5c36-bc90-9f13fc20a510",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						name = "Stop Combat Timer",
						uuid = "85c10f21-1fd4-3e0f-a534-9d26acf5563c",
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
						uuid = "01f3fe13-c40c-3ce8-8d19-23ddba44f5bb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						localmapid = 1252,
						name = "In OC",
						uuid = "c0885fdc-b761-e898-bcc3-c2982938e5b6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "ffa93cf7-1588-f5be-ab51-e43b5b424dd6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil",
						dequeueIfLuaFalse = true,
						name = "Combat Timer Started",
						uuid = "cc96ea40-8454-5c36-bc90-9f13fc20a510",
						version = 3,
					},
				},
			},
			name = "Combat Timer",
			throttleTime = 1000,
			uuid = "6c480024-1df2-d753-a42b-8cd28650342b",
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "Record Rezzed",
			uuid = "7163d586-f39c-0cbc-bc73-54fd77394c79",
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "Record Was Rezzed",
			uuid = "9f00e291-a1de-4adf-8ae0-c21f1280e8d4",
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
						version = 3,
					},
				},
			},
			name = "Reset Rezzed",
			uuid = "73a56b2a-c698-d163-9526-15eaa4774a78",
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						localmapid = 1252,
						name = "South Horn",
						uuid = "bead46c3-17fe-4bf8-a9cb-2e315439988f",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Thief Vigilance",
			throttleTime = 1250,
			uuid = "1017b58d-f39f-e551-a652-11aaff349c79",
			version = 2,
		},
		inheritedIndex = 6,
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						localmapid = 1252,
						name = "South Horn",
						uuid = "bead46c3-17fe-4bf8-a9cb-2e315439988f",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Thief Steal",
			throttleTime = 1250,
			uuid = "673b17b8-6cfc-7024-b198-23ab7a53080b",
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						localmapid = 1252,
						name = "South Horn",
						uuid = "f63493bb-f733-119c-a758-9b0599d8d1bc",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Thief Pilfer Weapon",
			throttleTime = 1250,
			uuid = "2d05af6c-3473-685c-8e8e-4dd6f5e6bf09",
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Knight Occult Heal",
			throttleTime = 1250,
			uuid = "d6d3830c-4f68-ae05-923c-9b2d8fd9bd5d",
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Knight Pray",
			throttleTime = 1250,
			uuid = "e26a7d55-62ee-8f3a-a131-ad64aaef15c3",
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Knight Pledge",
			throttleTime = 1250,
			uuid = "149b85a5-bf49-2e66-a0f5-cc126faf37a0",
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Monk Counterstance",
			throttleTime = 1000,
			uuid = "dc88144f-02eb-1ddc-af3f-db7d95ca782b",
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Monk Counter",
			throttleTime = 1000,
			uuid = "41d0f0ef-c4ea-6f7d-b4d5-b336f4d41284",
			version = 2,
		},
		inheritedIndex = 13,
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
						version = 3,
					},
				},
			},
			eventType = 13,
			name = "P. Monk Kick Toggle",
			uuid = "4e2f6e7f-2afc-a411-b017-8a8bf5ddc247",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "1e39a820-0470-b3d6-b953-37ee8ae56c84",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "3eac1167-173e-1707-bb6c-86e58d4e12ef",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Monk Kick",
			throttleTime = 100,
			uuid = "c27a84af-fc0f-e48c-8c66-112f503d61b2",
			version = 2,
		},
		inheritedIndex = 15,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "ce2478f3-6f7a-4f4d-9944-6b484c1303ab",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "e4fdc1a9-6695-72f4-a590-abd0c067c80c",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			eventType = 12,
			name = "P. Monk Jump Indicator",
			uuid = "d02f1d00-64c8-7239-8291-fef76f74db52",
			version = 2,
		},
		inheritedIndex = 16,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Monk Occult Chakra",
			throttleTime = 1000,
			uuid = "002ce728-0d37-9d87-9218-caf9da0b1a65",
			version = 2,
		},
		inheritedIndex = 17,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Geomancer Battle Bell",
			throttleTime = 1250,
			uuid = "f54a354e-293a-9e76-98e9-0251950cb971",
			version = 2,
		},
		inheritedIndex = 18,
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
								"a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
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
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
								true,
							},
							
							{
								"8b24e3a8-4d01-e274-9392-a43ce99fca3a",
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
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Hero's Rime",
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
								"bee58c45-7380-26ed-a78a-2011ff91536c",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "e79f408d-0936-1e91-b864-3e6fad59b0d5",
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4363,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Bard",
						uuid = "2312ae26-c802-ad39-bbbf-0830ed918dac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer().alive",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 4000",
						dequeueIfLuaFalse = true,
						name = "Combat > 4s",
						uuid = "8b24e3a8-4d01-e274-9392-a43ce99fca3a",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "bee58c45-7380-26ed-a78a-2011ff91536c",
						version = 3,
					},
				},
			},
			name = "P. Bard Hero's Rime",
			throttleTime = 1500,
			uuid = "89545ebd-870b-9599-8f64-ead285ce22cd",
			version = 2,
		},
		inheritedIndex = 23,
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
						actionLua = "local deadPlayers = TensorCore.entityList(\"chartype=4,los,dead,maxdistance=30\")\nlocal raisablePlayers = {}\nlocal raisableChemists = {}\nif (table.valid(deadPlayers)) then\n\tfor id, player in pairs(deadPlayers) do\n\t\tlocal buffs = player.buffs\n\t\tlocal raised = false\n        local outOfRaises = false\n\t\tlocal chemist = false \n\n\t\tif (TableSize(buffs) > 0) then\n\t\t\tfor id, b in pairs(buffs) do\n\t\t\t\tif (b.id == 148) then\n\t\t\t\t\traised = true\n\t\t\t\tend\n                if (b.id == 4263) then\n                    outOfRaises = true\n                end\n\t\t\t\tif (b.id == 4367) then\n\t\t\t\t\tchemist = true\n\t\t\t\tend\n\t\t\tend\n\t\tend\n\t\t\n\t\tif(raised == false and outOfRaises == false) then\n\t\t\tif (chemist == true) then\n\t\t\t\ttable.insert(raisableChemists, player)\n\t\t\telse\n\t\t\t\ttable.insert(raisablePlayers, player)\n\t\t\tend\n\t\tend\n\tend\nend\nif (table.valid(raisableChemists)) then\n\tfor id, player in pairs(raisableChemists) do\n\t\tif (data.lastRaiseNotification == nil or TimeSince(data.lastRaiseNotification) > 5000) then\n\t\t\tdata.lastRaiseNotification = Now()\n\t\t\tSendTextCommand(\"/e Raising \" .. player.name .. \" (Chemist)\")\n\t\tend\n\t\treturn ActionList:Get(1,41634), player.id, true, true\n\tend\nend\nif (table.valid(raisablePlayers)) then\n\tfor id, player in pairs(raisablePlayers) do\n\t\tif (data.lastRaiseNotification == nil or TimeSince(data.lastRaiseNotification) > 5000) then\n\t\t\tdata.lastRaiseNotification = Now()\n\t\t\tSendTextCommand(\"/e Raising \" .. player.name .. \"\")\n\t\tend\n\t\treturn ActionList:Get(1,41634), player.id, true, false\n\tend\nend\nself.used = true",
						conditions = 
						{
							
							{
								"b03aac2a-016b-2f26-a5c1-2548777d6f97",
								true,
							},
							
							{
								"07ce03aa-d311-aeb9-b4fd-db197c2e53b8",
								true,
							},
							
							{
								"1dbbf1df-c207-113b-8789-5b1dc0f4c77e",
								true,
							},
							
							{
								"214333af-724c-d8c7-bc32-505803dec7ff",
								true,
							},
							
							{
								"53a42934-6ab6-14a3-96e9-c921a5497ccc",
								true,
							},
							
							{
								"203788d4-5555-4dc5-9150-53a4e73f8ca9",
								true,
							},
							
							{
								"bfddab2c-d0ed-0214-8f2c-19399c9e83ff",
								true,
							},
							
							{
								"f4134215-666b-a827-a19b-25d2f60e72a2",
								true,
							},
							
							{
								"9f0a3c38-9a4e-d767-b930-2a10131c4ce2",
								true,
							},
							
							{
								"5b9ed4c1-4133-fce0-9f9a-9db445c50390",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						luaReturnsAction = true,
						uuid = "fd116bd7-85d4-2c0e-b230-7cfb407015d7",
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
							1346,
						},
						name = "In Occult Crescent",
						uuid = "07ce03aa-d311-aeb9-b4fd-db197c2e53b8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4367,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Chemist",
						uuid = "1dbbf1df-c207-113b-8789-5b1dc0f4c77e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "214333af-724c-d8c7-bc32-505803dec7ff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "53a42934-6ab6-14a3-96e9-c921a5497ccc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "203788d4-5555-4dc5-9150-53a4e73f8ca9",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "bfddab2c-d0ed-0214-8f2c-19399c9e83ff",
						version = 3,
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
						name = "Revive CD",
						uuid = "9f0a3c38-9a4e-d767-b930-2a10131c4ce2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,33):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Revive Unlocked",
						uuid = "f4134215-666b-a827-a19b-25d2f60e72a2",
						version = 3,
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
						uuid = "5b9ed4c1-4133-fce0-9f9a-9db445c50390",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Flip To Disable Action",
						uuid = "b03aac2a-016b-2f26-a5c1-2548777d6f97",
						version = 3,
					},
				},
			},
			name = "P. Chemist Rez",
			throttleTime = 1000,
			uuid = "81a55341-b483-4aea-a0bc-9664bb0d30a7",
			version = 2,
		},
		inheritedIndex = 20,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 41607,
						buffCheckType = 7,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Bard Mighty March",
			throttleTime = 1500,
			uuid = "c18517b0-1e34-1d83-8176-9f1d38d51541",
			version = 2,
		},
		inheritedIndex = 28,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "7fb3672e-4cb4-359f-96c7-9d17abfd989d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "4aba1362-c85a-a3c9-96c8-5cc50660875f",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 7,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Bard Aria",
			throttleTime = 1500,
			uuid = "a6c7e7ac-46cf-12e7-ae07-883da63ba66c",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "77dacb34-4585-2f97-b047-6d25037d5a9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "49cb19e1-4a1a-e643-887b-eb61c1a7bd65",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 7,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Cannoneer Cannons",
			throttleTime = 1500,
			uuid = "8da73aae-57bf-86ea-9a65-353a607913dc",
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"c4e0c01f-1174-3e48-956e-41193f15da26",
								true,
							},
							
							{
								"6c9b174b-99cb-cae5-aadf-346ce19a8a9c",
								true,
							},
							
							{
								"70555a3a-b123-ba76-913e-346182583ae8",
								true,
							},
							
							{
								"2733c6f2-6f59-93bd-886c-ea28fb65c82a",
								true,
							},
							
							{
								"0d707741-2c82-6078-a931-df5d8a736d54",
								true,
							},
							
							{
								"f77fa5a1-7ba0-ca82-8f70-b3c44b524f4d",
								true,
							},
							
							{
								"e9d7b04c-9bb3-ade5-b6db-807a7af7c557",
								true,
							},
							
							{
								"e2a71f48-06c8-7be8-a9db-5e32cb0d02b5",
								true,
							},
							
							{
								"0a770e84-bd54-271b-b944-bfe7f6c48928",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Zeninage",
						uuid = "d3e42277-5fea-4298-bd1a-8c9fa2973eef",
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
								"c4e0c01f-1174-3e48-956e-41193f15da26",
								true,
							},
							
							{
								"6c9b174b-99cb-cae5-aadf-346ce19a8a9c",
								true,
							},
							
							{
								"70555a3a-b123-ba76-913e-346182583ae8",
								false,
							},
							
							{
								"f0aae32a-c66e-5c82-b91d-50d40a1e8a56",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "32b92bee-4cb3-cfd3-ad54-8ba2ec2ecb79",
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
						uuid = "c4e0c01f-1174-3e48-956e-41193f15da26",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4362,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Sam",
						uuid = "6c9b174b-99cb-cae5-aadf-346ce19a8a9c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "70555a3a-b123-ba76-913e-346182583ae8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "2733c6f2-6f59-93bd-886c-ea28fb65c82a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 4000",
						dequeueIfLuaFalse = true,
						name = "Combat > 4s",
						uuid = "0d707741-2c82-6078-a931-df5d8a736d54",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "f77fa5a1-7ba0-ca82-8f70-b3c44b524f4d",
						version = 3,
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
						uuid = "e9d7b04c-9bb3-ade5-b6db-807a7af7c557",
						version = 3,
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
						uuid = "e2a71f48-06c8-7be8-a9db-5e32cb0d02b5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "for i=0,3 do\n\tlocal itemList = Inventory:Get(i):GetList()\n\tfor _, item in pairs(itemList) do \n\t\tif item.id == 47740 then\n\t\t\treturn true\n\t\tend\n\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Has Coffer",
						uuid = "0a770e84-bd54-271b-b944-bfe7f6c48928",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "f0aae32a-c66e-5c82-b91d-50d40a1e8a56",
						version = 3,
					},
				},
			},
			name = "P. Sam Zeninage",
			throttleTime = 1500,
			uuid = "041c7437-3947-cc16-a091-e42259dcf340",
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								true,
							},
							
							{
								"e93e0795-5d96-f49a-97dc-02316f17965a",
								true,
							},
							
							{
								"ae3f970e-106c-6ba7-b96b-bcb05559eb8e",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Iainuki Moving",
						uuid = "e93f4fdf-bf70-eb00-9a60-4679ccfa4745",
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
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								true,
							},
							
							{
								"35c868d1-cb26-30cb-a430-945a4811f795",
								true,
							},
							
							{
								"ddedae86-779e-6aa5-9fe4-86b438c454f2",
								false,
							},
							
							{
								"ae3f970e-106c-6ba7-b96b-bcb05559eb8e",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Iainuki Range",
						uuid = "bdd3860a-60f1-c3ea-a490-01898ebe2748",
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
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								true,
							},
							
							{
								"e93e0795-5d96-f49a-97dc-02316f17965a",
								false,
							},
							
							{
								"35c868d1-cb26-30cb-a430-945a4811f795",
								true,
							},
							
							{
								"ddedae86-779e-6aa5-9fe4-86b438c454f2",
								true,
							},
							
							{
								"25447249-e9f0-b7d2-b94a-938e145b5eb9",
								true,
							},
							
							{
								"308fe1f4-9f25-e900-a28a-288e162e0fbb",
								true,
							},
							
							{
								"0fea0543-e595-327d-80dd-e9f35b887881",
								true,
							},
							
							{
								"3ddb4886-849a-2357-8122-cf3399f46e5a",
								false,
							},
							
							{
								"d4aba7ee-408d-54ee-9a80-7a426d556e85",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki After Zeni",
						uuid = "2374ece8-ba35-5fdb-82de-5b9e2565a964",
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
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								true,
							},
							
							{
								"e93e0795-5d96-f49a-97dc-02316f17965a",
								false,
							},
							
							{
								"35c868d1-cb26-30cb-a430-945a4811f795",
								true,
							},
							
							{
								"ddedae86-779e-6aa5-9fe4-86b438c454f2",
								true,
							},
							
							{
								"25447249-e9f0-b7d2-b94a-938e145b5eb9",
								true,
							},
							
							{
								"8d184850-ef21-2ff2-9291-f8902f0860bc",
								true,
							},
							
							{
								"308fe1f4-9f25-e900-a28a-288e162e0fbb",
								true,
							},
							
							{
								"0fea0543-e595-327d-80dd-e9f35b887881",
								true,
							},
							
							{
								"d4aba7ee-408d-54ee-9a80-7a426d556e85",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki No Coffer CD Enabled",
						uuid = "9a3d47de-5057-da41-8193-f51839ee74c4",
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
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								true,
							},
							
							{
								"e93e0795-5d96-f49a-97dc-02316f17965a",
								false,
							},
							
							{
								"35c868d1-cb26-30cb-a430-945a4811f795",
								true,
							},
							
							{
								"ddedae86-779e-6aa5-9fe4-86b438c454f2",
								true,
							},
							
							{
								"25447249-e9f0-b7d2-b94a-938e145b5eb9",
								true,
							},
							
							{
								"8d184850-ef21-2ff2-9291-f8902f0860bc",
								true,
							},
							
							{
								"308fe1f4-9f25-e900-a28a-288e162e0fbb",
								true,
							},
							
							{
								"0fea0543-e595-327d-80dd-e9f35b887881",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki No Zeni CD Enabled",
						uuid = "7281c620-ec80-d65a-9e3b-9567ef1021cc",
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
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								true,
							},
							
							{
								"e93e0795-5d96-f49a-97dc-02316f17965a",
								false,
							},
							
							{
								"35c868d1-cb26-30cb-a430-945a4811f795",
								true,
							},
							
							{
								"ddedae86-779e-6aa5-9fe4-86b438c454f2",
								true,
							},
							
							{
								"25447249-e9f0-b7d2-b94a-938e145b5eb9",
								false,
							},
							
							{
								"308fe1f4-9f25-e900-a28a-288e162e0fbb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Iainuki CD Disabled",
						uuid = "ad35ea39-ff24-e595-82b7-c2dbc6143137",
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
								"25526db7-3e90-fe08-8df1-b0585e2b38fc",
								true,
							},
							
							{
								"238bd975-3871-5e12-8e53-399adacd89cb",
								true,
							},
							
							{
								"51aea656-8161-48f6-98c9-2780a53bb551",
								false,
							},
							
							{
								"ae3f970e-106c-6ba7-b96b-bcb05559eb8e",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "4e2973e4-ab77-9390-b20e-efd2fcf81a17",
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
						uuid = "25526db7-3e90-fe08-8df1-b0585e2b38fc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4362,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Sam",
						uuid = "238bd975-3871-5e12-8e53-399adacd89cb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "51aea656-8161-48f6-98c9-2780a53bb551",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						name = "Am Moving",
						uuid = "e93e0795-5d96-f49a-97dc-02316f17965a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "35c868d1-cb26-30cb-a430-945a4811f795",
						version = 3,
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
						uuid = "ddedae86-779e-6aa5-9fe4-86b438c454f2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "25447249-e9f0-b7d2-b94a-938e145b5eb9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 4000",
						dequeueIfLuaFalse = true,
						name = "Combat > 4s",
						uuid = "8d184850-ef21-2ff2-9291-f8902f0860bc",
						version = 3,
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
						uuid = "308fe1f4-9f25-e900-a28a-288e162e0fbb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Zeninage",
						uuid = "0fea0543-e595-327d-80dd-e9f35b887881",
						version = 3,
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
						uuid = "3ddb4886-849a-2357-8122-cf3399f46e5a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "for i=0,3 do\n\tlocal itemList = Inventory:Get(i):GetList()\n\tfor _, item in pairs(itemList) do \n\t\tif item.id == 47740 then\n\t\t\treturn true\n\t\tend\n\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Has Coffer",
						uuid = "d4aba7ee-408d-54ee-9a80-7a426d556e85",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "ae3f970e-106c-6ba7-b96b-bcb05559eb8e",
						version = 3,
					},
				},
			},
			name = "P. Sam Iainuki",
			throttleTime = 100,
			uuid = "19fa42df-39c6-8e18-b0a7-836c2e7a745e",
			version = 2,
		},
		inheritedIndex = 25,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"b80e29ff-4548-ddeb-bec1-d7c2c95ecde3",
								true,
							},
							
							{
								"3fd43f44-9d54-5f0a-8bbb-fd9b4d494836",
								true,
							},
							
							{
								"777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction2",
						name = "Deadly Blow",
						targetType = "Current Target",
						uuid = "e68bd3d3-bf3f-0cca-8b76-fa15c75071d4",
						variableIsHover = true,
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "In Occult Crescent",
						uuid = "3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4359,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Berserker",
						uuid = "cc7e4724-c91b-2918-b01a-658bfe057266",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Is Bot Running",
						uuid = "ffcb081e-e4a0-b915-a944-7bd08ffdac93",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "c6d7e8d8-c757-16e7-8d01-e200423d2d85",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "979c090b-4949-cadf-9069-22b20ccc8b6a",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "bf68a577-031c-6da5-833a-a2af0df7dc0f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "c2fdc327-8031-f6a9-adfe-685becae7175",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "b80e29ff-4548-ddeb-bec1-d7c2c95ecde3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 41594,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Deadly Blow CD",
						uuid = "3fd43f44-9d54-5f0a-8bbb-fd9b4d494836",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2400",
						dequeueIfLuaFalse = true,
						name = "Combat > 2.4s",
						uuid = "777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Flip To Disable Action",
						uuid = "4d153190-820e-68f0-a7f6-cc91e785fd38",
						version = 3,
					},
				},
			},
			name = "P. Berserker Deadly Blow",
			throttleTime = 100,
			uuid = "5ba3375d-fe3c-b0f3-b109-b09825fc872b",
			version = 2,
		},
		inheritedIndex = 25,
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
							
							{
								"785c1f3a-3ab7-c292-b8e0-7a39c641af49",
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						localmapid = 1252,
						name = "South Horn",
						uuid = "f63493bb-f733-119c-a758-9b0599d8d1bc",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						name = "In Combat",
						uuid = "c3f5e16a-bd98-c5b2-8260-e5b2d04a1ed0",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 7,
						buffID = 4259,
						uuid = "a81e78f1-987b-edbd-a012-344d8863f871",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorReactions_CurrentCombatTimer > 12.5",
						dequeueIfLuaFalse = true,
						name = "Combat > 10s",
						uuid = "785c1f3a-3ab7-c292-b8e0-7a39c641af49",
						version = 3,
					},
				},
			},
			name = "P. Tmage Mage Masher",
			throttleTime = 1250,
			uuid = "f002c1b7-06d1-6521-a194-18da8de47602",
			version = 2,
		},
		inheritedIndex = 26,
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
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
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
								"396394da-16bb-d2ab-a20c-1c1083191a95",
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
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer().alive",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 4000",
						dequeueIfLuaFalse = true,
						name = "Combat > 4s",
						uuid = "d776f17c-758b-4921-9144-157ce819e49f",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] == false",
						dequeueIfLuaFalse = true,
						name = "Quick Not Queued",
						uuid = "396394da-16bb-d2ab-a20c-1c1083191a95",
						version = 3,
					},
				},
			},
			name = "P. TMage Comet Swiftcast",
			throttleTime = 1500,
			uuid = "c9178b74-f32c-817a-950c-32b1fc0a7ee8",
			version = 2,
		},
		inheritedIndex = 70,
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
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
								true,
							},
							
							{
								"e27ae646-5033-f9d0-8f32-0bab1ca37b02",
								true,
							},
							
							{
								"7cda01fc-abb8-7f7b-b78d-6ec0522771a2",
								true,
							},
							
							{
								"8ef4627a-d7bb-0732-93fc-5d32cd4e013b",
								true,
							},
							
							{
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"15e16ad4-c97f-fcfe-949e-c60c37b28519",
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
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						ignoreWeaveRules = true,
						name = "Swiftcast",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer().alive",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "7cda01fc-abb8-7f7b-b78d-6ec0522771a2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2000",
						dequeueIfLuaFalse = true,
						name = "Combat > 2s",
						uuid = "8ef4627a-d7bb-0732-93fc-5d32cd4e013b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Quick",
						uuid = "066cc251-0be0-1ddd-8963-58a814259fbd",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 41625,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Quick Not CD",
						uuid = "0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							1211,
							1249,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing InstaCast",
						uuid = "65026472-ef44-c2dc-a211-9b5279bcfa9c",
						version = 3,
					},
				},
			},
			name = "P. TMage Quick Swiftcast",
			throttleTime = 1500,
			uuid = "eb688e35-87ab-c255-a605-63f5423c3c0a",
			version = 2,
		},
		inheritedIndex = 71,
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
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
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
								"7a1b35d4-b11f-bdcc-a54f-314ef5b4f5cb",
								true,
							},
							
							{
								"fdcbe872-f73b-6950-866f-abbc5cd004b9",
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
								"2c3b763e-60cc-5072-92b9-f8232d3fbcd1",
								true,
							},
							
							{
								"b77c75a7-c8bf-d56b-9d04-5a7f236d29d5",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Quick Swiftcast",
						uuid = "29afcef9-cb5c-08b4-b59b-cb9bb5fc1db4",
						variableTogglesType = 2,
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
								"68842e46-8c8e-f38e-80f1-1c565d84de04",
								true,
							},
							
							{
								"36e0cdc9-6f67-832d-af9d-962934e8d8cc",
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
								"7a1b35d4-b11f-bdcc-a54f-314ef5b4f5cb",
								true,
							},
							
							{
								"fdcbe872-f73b-6950-866f-abbc5cd004b9",
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
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Quick Hardcast",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
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
								"099f59da-08f9-92fa-9fcf-a8dcb6b21ed6",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "6d4c3c5f-85a6-2c6e-a753-1c1de23016b6",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer().alive",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "a4bae7f0-15e7-e380-89ed-28e6f8f500ff",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 3,
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
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2000",
						dequeueIfLuaFalse = true,
						name = "Combat > 2s",
						uuid = "7a1b35d4-b11f-bdcc-a54f-314ef5b4f5cb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Quick",
						uuid = "fdcbe872-f73b-6950-866f-abbc5cd004b9",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffID = 4260,
						buffIDList = 
						{
							167,
							1211,
							1249,
						},
						category = "Self",
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Has InstaCast",
						uuid = "2c3b763e-60cc-5072-92b9-f8232d3fbcd1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 41625,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Quick Not CD",
						uuid = "b77c75a7-c8bf-d56b-9d04-5a7f236d29d5",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "099f59da-08f9-92fa-9fcf-a8dcb6b21ed6",
						version = 3,
					},
				},
			},
			name = "P. TMage Quick",
			throttleTime = 1500,
			uuid = "1c6bbd54-6018-485a-9f05-9819fa8aa68e",
			version = 2,
		},
		inheritedIndex = 71,
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 10,
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
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								false,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"df310d5b-5794-9575-9601-ddca08c2fa44",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Comet AOE",
						targetType = "Most Clustered Enemy",
						uuid = "42dbc802-95f2-daac-a984-3091e28fc17b",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionID = 41623,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 10,
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
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"b3f3779f-97e1-26c8-aab2-1d54bd11306a",
								false,
							},
							
							{
								"0c8bbab7-4820-17c9-a40c-f1c3e4572b6e",
								true,
							},
							
							{
								"df310d5b-5794-9575-9601-ddca08c2fa44",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Comet InstaCast",
						targetType = "Most Clustered Enemy",
						uuid = "828f448b-18e5-0f87-8618-de51f8974773",
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
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"db326cd9-0771-af42-91e9-0687e5bd91f0",
								true,
							},
							
							{
								"fa8dce00-a664-d474-b1e8-0bb60572ebcf",
								true,
							},
							
							{
								"11c4ce1d-1541-1505-9090-f9e8ebef088d",
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
								"79eb5ff3-df2c-678d-a1a8-a37bc9759ab1",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Comet CD Enabled",
						targetType = "Most Clustered Enemy",
						uuid = "b8fb2967-ec8b-3e1a-90c2-d4cc7d3703c8",
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
								"066cc251-0be0-1ddd-8963-58a814259fbd",
								true,
							},
							
							{
								"1e471142-f907-e1dd-abd5-6325e970db36",
								true,
							},
							
							{
								"db326cd9-0771-af42-91e9-0687e5bd91f0",
								false,
							},
							
							{
								"11c4ce1d-1541-1505-9090-f9e8ebef088d",
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
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Comet CD Disabled",
						targetType = "Most Clustered Enemy",
						uuid = "6bdec0fb-35ce-bdc4-8e91-5e73c85f8762",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
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
								"df310d5b-5794-9575-9601-ddca08c2fa44",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "040e587f-31dc-c22b-a1b5-b83ae8f3d87c",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "b89deb6f-ac1d-7569-98b2-ce63b9dc89ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579 or ActionList:Get(5,34):CanCastResult() == 582",
						dequeueIfLuaFalse = true,
						name = "Has Comet",
						uuid = "066cc251-0be0-1ddd-8963-58a814259fbd",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_CD\"]",
						dequeueIfLuaFalse = true,
						name = "CD Enabled",
						uuid = "db326cd9-0771-af42-91e9-0687e5bd91f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 4000",
						dequeueIfLuaFalse = true,
						name = "Combat > 4s",
						uuid = "fa8dce00-a664-d474-b1e8-0bb60572ebcf",
						version = 3,
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
						uuid = "11c4ce1d-1541-1505-9090-f9e8ebef088d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
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
						uuid = "b3f3779f-97e1-26c8-aab2-1d54bd11306a",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "df310d5b-5794-9575-9601-ddca08c2fa44",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] == false",
						dequeueIfLuaFalse = true,
						name = "Quick Not Queued",
						uuid = "79eb5ff3-df2c-678d-a1a8-a37bc9759ab1",
						version = 3,
					},
				},
			},
			name = "P. TMage Comet",
			throttleTime = 100,
			uuid = "9c5b9d73-ae0e-195a-940a-540bca4454b2",
			version = 2,
		},
		inheritedIndex = 71,
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
						actionLua = "data.oraclePredictJudgement = false\ndata.oraclePredictBlessing = false\ndata.oraclePredictCleansing = false\ndata.oraclePredictStarfall = false\ndata.oraclePredictTimer = Now()\nself.used = true",
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
							
							{
								"2a2d8a92-e6f1-b50a-b6a4-0102a46eae94",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Set New Predict",
						uuid = "f2218a47-49cc-308a-8bbe-71548f36c847",
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
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "2f5da793-8d62-b900-91b7-d2287c31ad94",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
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
						uuid = "7a9be408-97e3-401a-a51a-b2d1c1da02d1",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Lua",
						conditionLua = "return data.oraclePredictTimer == nil or TimeSince(data.oraclePredictTimer) >= 20000",
						dequeueIfLuaFalse = true,
						name = "Current Predict Over",
						uuid = "2a2d8a92-e6f1-b50a-b6a4-0102a46eae94",
						version = 3,
					},
				},
			},
			name = "P. Oracle New Predict",
			uuid = "b175b050-f2bb-2ffe-bd7e-bff2941f8634",
			version = 2,
		},
		inheritedIndex = 72,
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
						actionLua = "if not data.oraclePredictJudgement then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictJudgement = true\n    self.used = true\nend",
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
						actionLua = "if not data.oraclePredictCleansing then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictCleansing = true\n    self.used = true\nend",
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
					inheritedIndex = 2,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "if not data.oraclePredictBlessing then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictBlessing = true\n    self.used = true\nend",
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
						actionLua = "if not data.oraclePredictStarfall then\n    if data.oraclePredictCounter == nil then\n        data.oraclePredictCounter = 1\n    else\n        data.oraclePredictCounter = data.oraclePredictCounter + 1\n    end\n\n    data.oraclePredictStarfall = true\n    self.used = true\nend",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4268,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Starfall",
						uuid = "8e665495-c2d2-d8bc-bcd2-4047503e7449",
						version = 3,
					},
					inheritedIndex = 3,
				},
				
				{
					data = 
					{
						buffID = 4265,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Judgement",
						uuid = "da2fea5f-44e3-b375-9f26-908381110868",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4267,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Blessing",
						uuid = "ffe9b916-3ab0-da65-92bd-6fc5317d7207",
						version = 3,
					},
				},
			},
			name = "P. Oracle Record Predict Count",
			uuid = "9278be18-034c-9f92-abab-1d3e0055a418",
			version = 2,
		},
		inheritedIndex = 73,
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
								"20fa62b1-a245-0e9c-af9b-4fabfedcb7b6",
								true,
							},
							
							{
								"5d1b2ae3-f7bd-35b6-8cfc-33cc3f39b9c9",
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
						},
						endIfUsed = true,
						gVar = "ACR_TensorWeeb3_CD",
						name = "Predict",
						uuid = "5072d63a-a97a-96e3-9571-5609b0c0c8aa",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
								"4ad26c8e-1973-b537-836b-8dec4032deef",
								false,
							},
							
							{
								"5360af84-5d13-5563-bcbe-976e9652e09c",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Fallback Deactivate",
						uuid = "f28ce769-ec22-0f59-b972-92cd768a38ab",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer().alive",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 0.10000000149012,
						name = "Am Alive",
						uuid = "12a0f8c6-a507-a2e4-9c4a-c1dc0385b35d",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "4ad26c8e-1973-b537-836b-8dec4032deef",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "ef2c81f6-7b6a-3ed2-ac82-95bca89dccb2",
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "5360af84-5d13-5563-bcbe-976e9652e09c",
						version = 3,
					},
				},
			},
			enabled = false,
			name = "P. Oracle Use Predict[NOT SAFE]",
			throttleTime = 1500,
			uuid = "4c3d9549-4ff9-6f51-a0a1-292851ddf5a7",
			version = 2,
		},
		inheritedIndex = 74,
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
						version = 3,
					},
				},
			},
			eventType = 13,
			name = "P. Geomancer Levitate Toggle",
			uuid = "608ec0d1-adf2-ec9d-8f73-8e6c280fbb5d",
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Geomancer Levitate Party",
			uuid = "228a73f9-c34a-52ed-8402-2b3ccba1f5c1",
			version = 2,
		},
		inheritedIndex = 75,
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
							1346,
						},
						name = "South Horn",
						uuid = "d8720967-962e-a798-b184-d2ca5366f741",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Geomancer Ringing Respite",
			uuid = "124cd983-fe7a-d7f9-9ed9-ad6f8a38cf30",
			version = 2,
		},
		inheritedIndex = 36,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"fbeaa2f7-5090-d378-bf73-25d56b3a0f9b",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction2",
						name = "Quickstep",
						uuid = "98b7a689-2218-a124-a57d-ffd7c6ed3ca1",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
								true,
							},
							
							{
								"fbeaa2f7-5090-d378-bf73-25d56b3a0f9b",
								false,
							},
							
							{
								"065204d3-f420-4bc2-9e2b-f6b0e4431e91",
								true,
							},
							
							{
								"747b1c86-6e4b-ec5c-ae98-e8b9965f4da3",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction2",
						name = "Refresh Quickstep",
						uuid = "305589a3-0e79-790e-a227-ec3a250153b7",
						variableIsHover = true,
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "In Occult Crescent",
						uuid = "3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4805,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Dancer",
						uuid = "cc7e4724-c91b-2918-b01a-658bfe057266",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Is Bot Running",
						uuid = "ffcb081e-e4a0-b915-a944-7bd08ffdac93",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "c6d7e8d8-c757-16e7-8d01-e200423d2d85",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "979c090b-4949-cadf-9069-22b20ccc8b6a",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "bf68a577-031c-6da5-833a-a2af0df7dc0f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "c2fdc327-8031-f6a9-adfe-685becae7175",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 46603,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Quickstep CD",
						uuid = "747b1c86-6e4b-ec5c-ae98-e8b9965f4da3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2400",
						dequeueIfLuaFalse = true,
						name = "Combat > 2.4s",
						uuid = "777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Flip To Disable Action",
						uuid = "4d153190-820e-68f0-a7f6-cc91e785fd38",
						version = 3,
					},
					inheritedIndex = 10,
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 4798,
						category = "Self",
						name = "Self Missing Quickstep",
						uuid = "fbeaa2f7-5090-d378-bf73-25d56b3a0f9b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 9.5030002593994,
						buffID = 4798,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Self Quickstep Fading",
						uuid = "065204d3-f420-4bc2-9e2b-f6b0e4431e91",
						version = 3,
					},
				},
			},
			name = "P. Dancer Quickstep",
			throttleTime = 100,
			uuid = "440e18ac-f040-ecee-9e98-d8b712ea8b11",
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
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"3fd43f44-9d54-5f0a-8bbb-fd9b4d494836",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						name = "Dance",
						uuid = "e68bd3d3-bf3f-0cca-8b76-fa15c75071d4",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"d3e9d860-2ff5-bbdc-831b-c5f4d700c6dc",
								true,
							},
							
							{
								"c2fdc327-8031-f6a9-adfe-685becae7175",
								true,
							},
							
							{
								"777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
								true,
							},
							
							{
								"e1546784-6031-f108-9f38-babbba729c86",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						name = "Dance: Phantom Sword",
						targetType = "Current Target",
						uuid = "9b67dafc-7341-6c66-8766-79dcb2d58c53",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"5c7be5da-34bf-34f8-951a-a6dae5fe0f36",
								true,
							},
							
							{
								"c2fdc327-8031-f6a9-adfe-685becae7175",
								true,
							},
							
							{
								"777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
								true,
							},
							
							{
								"e1546784-6031-f108-9f38-babbba729c86",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						name = "Dance: Tempting Tango",
						targetType = "Current Target",
						uuid = "1d306c69-bc8c-9496-8052-629eff7be9ff",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"bae16e82-5245-c811-8148-2f59e592582a",
								true,
							},
							
							{
								"c2fdc327-8031-f6a9-adfe-685becae7175",
								true,
							},
							
							{
								"777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
								true,
							},
							
							{
								"e1546784-6031-f108-9f38-babbba729c86",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						name = "Dance: Jitterbug",
						targetType = "Current Target",
						uuid = "6bcaf85b-a8ce-e946-8294-e4f709a95fce",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"ffcb081e-e4a0-b915-a944-7bd08ffdac93",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								true,
							},
							
							{
								"979c090b-4949-cadf-9069-22b20ccc8b6a",
								true,
							},
							
							{
								"bf68a577-031c-6da5-833a-a2af0df7dc0f",
								true,
							},
							
							{
								"5b9e741d-4130-3110-bf65-b4b6212e7ca2",
								true,
							},
							
							{
								"c2fdc327-8031-f6a9-adfe-685becae7175",
								true,
							},
							
							{
								"777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
								true,
							},
							
							{
								"e1546784-6031-f108-9f38-babbba729c86",
								true,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						name = "Dance: Mystery Waltz",
						targetType = "Current Target",
						uuid = "4b1b3f6a-c3fe-f4c4-9b56-a28d7b170a4f",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
								true,
							},
							
							{
								"cc7e4724-c91b-2918-b01a-658bfe057266",
								true,
							},
							
							{
								"500e7941-74f4-d140-9059-c4f298bc2c3f",
								true,
							},
							
							{
								"c6d7e8d8-c757-16e7-8d01-e200423d2d85",
								false,
							},
							
							{
								"4d153190-820e-68f0-a7f6-cc91e785fd38",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Dequeue Dance OOC",
						uuid = "0e9fbbc8-ce8f-3328-9cee-1359861f2397",
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
							1346,
						},
						name = "In Occult Crescent",
						uuid = "3ebc6543-c8e2-5c0a-b15e-32f7d07734a7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4805,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Dancer",
						uuid = "cc7e4724-c91b-2918-b01a-658bfe057266",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Is Bot Running",
						uuid = "ffcb081e-e4a0-b915-a944-7bd08ffdac93",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "c6d7e8d8-c757-16e7-8d01-e200423d2d85",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "979c090b-4949-cadf-9069-22b20ccc8b6a",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "bf68a577-031c-6da5-833a-a2af0df7dc0f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "c2fdc327-8031-f6a9-adfe-685becae7175",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46598,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Dance CD",
						uuid = "3fd43f44-9d54-5f0a-8bbb-fd9b4d494836",
						version = 3,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						inRangeValue = 30,
						name = "Target <= 30y",
						uuid = "e1546784-6031-f108-9f38-babbba729c86",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2400",
						dequeueIfLuaFalse = true,
						name = "Combat > 2.4s",
						uuid = "777ee56d-c235-d1b0-8cc7-1d3437cb1a64",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4794,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Can Dance: Phantom Sword",
						uuid = "d3e9d860-2ff5-bbdc-831b-c5f4d700c6dc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4795,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Can Dance: Tempting Tango",
						uuid = "5c7be5da-34bf-34f8-951a-a6dae5fe0f36",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4796,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Can Dance: Jitterbug",
						uuid = "bae16e82-5245-c811-8148-2f59e592582a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4797,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Can Dance: Mystery Waltz",
						uuid = "5b9e741d-4130-3110-bf65-b4b6212e7ca2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true",
						dequeueIfLuaFalse = true,
						name = "Is Dance Queued",
						uuid = "500e7941-74f4-d140-9059-c4f298bc2c3f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Flip To Disable Action",
						uuid = "4d153190-820e-68f0-a7f6-cc91e785fd38",
						version = 3,
					},
				},
			},
			name = "P. Dancer Dance",
			throttleTime = 100,
			uuid = "cad90044-bdeb-56c9-ae85-48db84ef4abc",
			version = 2,
		},
		inheritedIndex = 40,
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
					inheritedIndex = 1,
				},
				
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
							
							{
								"89cd4f40-9c8d-d5df-9afd-70c398c173b4",
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
						actionLua = "d(\"Stop Judgement Expiring\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Judgement Heal Self\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Judgement Heal Party\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Judgement Range\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Cleansing Expiring\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
					inheritedIndex = 11,
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "d(\"Stop Cleansing HP\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Cleansing Range\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Blessing Expiring\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Blessing Heal Self\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Blessing Heal Party\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Starfall Expiring\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Starfall HP\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Starfall AOE\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Starfall Raidwide\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						actionLua = "d(\"Stop Starfall Range\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nself.used = true",
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4265,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Judgement",
						uuid = "93783665-3a39-218a-b4c7-05aeb1a3a810",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4267,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Blessing",
						uuid = "902b4fee-08f0-ccc3-93e5-8387b8bdba36",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4268,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Has Starfall",
						uuid = "90d5d356-377c-d333-89cc-42097385bb58",
						version = 3,
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
						matchAnyBuff = true,
						name = "Has Predicts",
						uuid = "89cd4f40-9c8d-d5df-9afd-70c398c173b4",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 7,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
					inheritedIndex = 12,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dangerTime = 1.5\nlocal safetyTime = 3\n\nlocal player = TensorCore.mGetPlayer()\nlocal playerPos = player.pos\n\nlocal function getRemainingTime(entity)\n\tif not entity then return nil end\n\treturn entity.castinginfo.casttime - entity.castinginfo.channeltime\nend\n\nlocal function getPredictDuration()\n\tfor _, buffID in ipairs({4265, 4266, 4267}) do\n\t\tlocal buff = TensorCore.getBuff(player.id, buffID)\n\t\tif buff then\n\t\t\treturn buff.duration\n\t\tend\n\tend\n\treturn 0\nend\n\nlocal function willBoom(remainingTime, aoeType)\n\tif remainingTime <= dangerTime then\n\t\td(aoeType .. \" AOE GONNA GO BOOM!!!\")\n\t\treturn true\n\telseif data.oraclePredictCounter == 3 and not data.oraclePredictStarfall then\n\t\tlocal predictDuration = getPredictDuration()\n\t\tif remainingTime > predictDuration and remainingTime <= safetyTime then\n\t\t\td(aoeType .. \" AOE GONNA GO BOOM DURING STARFALL!!!\")\n\t\t\treturn true\n\t\tend\n\tend\n\treturn false\nend\n\nif TensorCore.Avoidance.inAnyAOE(playerPos.x, playerPos.y, playerPos.z) and table.size(data.ocAOETbl) > 0 then\n\tfor _, aoe in pairs(data.ocAOETbl) do\n\t\tlocal entityID, aoePos, aoeLength, aoeWidth = aoe.entityID, aoe.aoePos, aoe.aoeLength, aoe.aoeWidth\n\t\tlocal distToAOE = TensorCore.getDistance2d(playerPos, aoePos)\n\t\tlocal entity = TensorCore.mGetEntity(entityID)\n\t\tlocal remainingTime = getRemainingTime(entity)\n\t\tlocal castType = aoe.aoeCastType\n\n\t\tif aoeWidth > 0 or castType == 11 then -- Line/Cross\n\t\t\tif distToAOE <= aoeLength then\n\t\t\t\tlocal heading = aoe.aoeHeading\n\t\t\t\tlocal dirX, dirZ = math.sin(heading), math.cos(heading)\n\t\t\t\tlocal relX, relZ = playerPos.x - aoePos.x, playerPos.z - aoePos.z\n\t\t\t\tlocal forward = (relX * dirX) + (relZ * dirZ)\n\t\t\t\tlocal side = (-relX * dirZ) + (relZ * dirX)\n\t\t\t\tlocal halfWidth = aoeWidth / 2\n\t\t\t\t\n\t\t\t\tif castType == 11 then\n\t\t\t\t\tlocal inVertical = math.abs(forward) <= aoeLength and math.abs(side) <= halfWidth\n\t\t\t\t\tlocal inHorizontal = math.abs(side) <= aoeLength and math.abs(forward) <= halfWidth\n\n\t\t\t\t\tif inVertical or inHorizontal then\n\t\t\t\t\t\tif willBoom(remainingTime, \"Cross\") then return true end\n\t\t\t\t\tend\n\t\t\t\telse\n\t\t\t\t\tif forward >= 0 and forward <= aoeLength and math.abs(side) <= (halfWidth) then\n\t\t\t\t\t\tif willBoom(remainingTime, \"Line\") then return true end\n\t\t\t\t\tend\n\t\t\t\tend\n\t\t\tend\n\t\telse\n\t\t\tlocal omen = aoe.aoeOmen or \"\"\n\t\t\tlocal subStr = omen:gsub(\"o\", \"\"):sub(6)\n\t\t\tlocal omenInfo = subStr:match(\"%D(%d+)%D\") or \"\"\n\t\t\tlocal aoeID = aoe.aoeID\n\n\t\t\tif #omenInfo == 4 or omen:match(\"don\") or omen:match(\"sircle\") or castType == 10 then -- Donut\n\t\t\t\tlocal omenInnerRadius = tonumber(omenInfo:sub(-2)) or 0\n\t\t\t\tlocal innerRadius = 10\n\t\t\t\tlocal telegraphDonut = MoogleTelegraphs.Settings.aoeIDUserSetDonuts[aoeID]\n\t\t\t\tif telegraphDonut then innerRadius = telegraphDonut.radius\n\t\t\t\telseif omenInnerRadius > 0 then innerRadius = omenInnerRadius\n\t\t\t\tend\n\n\t\t\t\tif distToAOE >= innerRadius and distToAOE <= aoeLength then\n\t\t\t\t\tif willBoom(remainingTime, \"Donut\") then return true end\n\t\t\t\tend\n\t\t\telseif (#omenInfo == 3 and not aoe.aoeIsAreaTarget) or omen:match(\"fan\") or castType == 3 or castType == 13 then -- Cone\n\t\t\t\tlocal omenAngle = tonumber(omenInfo) or 0\n\t\t\t\tlocal angle = 90\n\t\t\t\tlocal telegraphCone = MoogleTelegraphs.Settings.aoeIDUserSetCones[aoeID]\n\t\t\t\tif telegraphCone then angle = telegraphCone.angle\n\t\t\t\telseif omenAngle > 0 then angle = omenAngle\n\t\t\t\tend\n\n\t\t\t\tlocal heading = aoe.aoeHeading\n\t\t\t\tlocal dirX, dirZ = math.sin(heading), math.cos(heading)\n\t\t\t\tlocal relX, relZ = playerPos.x - aoePos.x, playerPos.z - aoePos.z\n\t\t\t\tlocal forward = (relX * dirX) + (relZ * dirZ)\n\t\t\t\tlocal halfAngle = angle / 2\n\t\t\t\tlocal cosAngle = math.cos(math.rad(halfAngle))\n\t\t\t\t\n\t\t\t\tif angle <= 180 then\n\t\t\t\t\tif (forward / distToAOE) >= cosAngle then\n\t\t\t\t\t\tif willBoom(remainingTime, \"Cone\") then return true end\n\t\t\t\t\tend\n\t\t\t\telse\n\t\t\t\t\tlocal invertedConeAngle = 180 - halfAngle\n    \t\t\t\tlocal cosInverted = math.cos(math.rad(invertedConeAngle))\n\n    \t\t\t\tif (forward / distToAOE) >= -cosInverted then\n        \t\t\t\tif willBoom(remainingTime, \"Cone\") then return true end\n\t\t\t\t\tend\n\t\t\t\tend\n\t\t\telse -- Circle/Meteor\n\t\t\t\tif distToAOE <= aoeLength then\n\t\t\t\t\tif willBoom(remainingTime, \"Circle\") then return true end\n\t\t\t\tend\n\t\t\tend\n\t\tend\n\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "AOE Check",
						uuid = "fca8e097-eb58-55db-8cbe-c09478e3b8c4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local dangerTime = 1.5\nlocal safetyTime = 3\n\nlocal raidwideIDs = { 41138, 41141, 41381, 41279, 41336, 41361, 41528, 41167, 41171, 41188, 41424, 41762, 37809, \n\t\t\t\t\t\t30790, 30788, 41333, 41412, 41689 }\n\nlocal target = TensorCore.mGetTarget()\n\nlocal function getPredictDuration()\n\tlocal playerID = TensorCore.mGetPlayer().id\n\tfor _, buffID in ipairs({4265, 4266, 4267}) do\n\t\tlocal buff = TensorCore.getBuff(playerID, buffID)\n\t\tif buff then\n\t\t\treturn buff.duration\n\t\tend\n\tend\n\treturn 0\nend\n\nlocal function willRaidwideBoom(remainingTime)\n\tif remainingTime <= dangerTime then\n\t\td(\"Raidwide GONNA GO BOOM!!!\")\n\t\treturn true\n\telseif data.oraclePredictCounter == 3 and not data.oraclePredictStarfall then\n\t\tlocal predictDuration = getPredictDuration()\n\t\tif remainingTime > predictDuration and remainingTime <= safetyTime then\n\t\t\td(\"Raidwide GONNA GO BOOM DURING STARFALL!!!\")\n\t\t\treturn true\n\t\tend\n\tend\n\treturn false\nend\n\nif target then\n\tlocal castingInfo = target.castinginfo\n\n\tfor _, raidwideID in ipairs(raidwideIDs) do\n\t\tif castingInfo.channelingid == raidwideID then\n\t\t\tlocal remainingTime = castingInfo.casttime - castingInfo.channeltime\n\t\t\tif willRaidwideBoom(remainingTime) then\n\t\t\t\treturn true\n\t\t\tend\n\t\tend\n\tend\nend\n\nreturn false",
						dequeueIfLuaFalse = true,
						name = "Raidwide Check",
						uuid = "5f8d1ae3-46bc-c924-b723-8fcaf972e588",
						version = 3,
					},
				},
			},
			name = "P. Oracle Predict",
			throttleTime = 100,
			uuid = "7a8b0ac9-1ab5-9b70-9c4c-08d91cc31515",
			version = 2,
		},
		inheritedIndex = 40,
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
						actionLua = "if _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] == true then\n\t_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\nend\ndata.oraclePredictCounter = 0\ndata.oraclePredictJudgement = false\ndata.oraclePredictCleansing = false\ndata.oraclePredictBlessing = false\ndata.oraclePredictStarfall = false\nself.used = true",
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
							
							{
								"198fa4c6-d68a-4051-93d7-325f5ecef315",
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							4265,
							4266,
							4267,
							4268,
						},
						category = "Lua",
						conditionLua = "return TimeSince(data.oraclePredictTimer) >= 20000",
						dequeueIfLuaFalse = true,
						name = "Current Predict Over",
						uuid = "198fa4c6-d68a-4051-93d7-325f5ecef315",
						version = 3,
					},
				},
			},
			name = "P. Oracle Reset Predict",
			uuid = "978328eb-ccac-48cf-bcfc-9c31d4cf6f4d",
			version = 2,
		},
		inheritedIndex = 78,
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
						alertColor = -1,
						alertPriority = 3,
						alertText = "Low Spellblade",
						conditions = 
						{
							
							{
								"646f4741-2189-523d-b322-d342eff3b1ac",
								true,
							},
							
							{
								"56223365-8388-f8e6-85ad-ad4ae4271380",
								true,
							},
							
							{
								"6500ed18-f48e-10a5-9639-02727a1485c8",
								true,
							},
							
							{
								"bd520528-de6e-dd63-8c2f-b13e1078b8d5",
								true,
							},
							
							{
								"c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
								true,
							},
							
							{
								"d81c6985-e446-ec27-a6f7-63bff52ae445",
								true,
							},
							
							{
								"951c9b82-5570-bfd1-bfd6-30d778f703f4",
								true,
							},
							
							{
								"66a0e6e1-3fbc-1f2e-926b-1a64f77b30be",
								true,
							},
							
							{
								"b2873652-fafa-8116-85c3-0bcf9e9f225e",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Self Blazing Missing",
						uuid = "b4bca4ee-8425-3c9d-b0d2-8a512a259c5d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						alertColor = -1,
						alertPriority = 3,
						alertText = "Low Spellblade",
						conditions = 
						{
							
							{
								"646f4741-2189-523d-b322-d342eff3b1ac",
								true,
							},
							
							{
								"56223365-8388-f8e6-85ad-ad4ae4271380",
								true,
							},
							
							{
								"6500ed18-f48e-10a5-9639-02727a1485c8",
								true,
							},
							
							{
								"bd520528-de6e-dd63-8c2f-b13e1078b8d5",
								true,
							},
							
							{
								"c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
								true,
							},
							
							{
								"d81c6985-e446-ec27-a6f7-63bff52ae445",
								true,
							},
							
							{
								"951c9b82-5570-bfd1-bfd6-30d778f703f4",
								true,
							},
							
							{
								"66a0e6e1-3fbc-1f2e-926b-1a64f77b30be",
								true,
							},
							
							{
								"76763df1-edbf-8932-8e24-33bea7bf4fc3",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Target Blazing Missing",
						uuid = "03771955-c73d-5942-9491-cb6c6504547d",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						alertColor = -1,
						alertPriority = 3,
						alertText = "Low Spellblade",
						conditions = 
						{
							
							{
								"646f4741-2189-523d-b322-d342eff3b1ac",
								true,
							},
							
							{
								"56223365-8388-f8e6-85ad-ad4ae4271380",
								true,
							},
							
							{
								"6500ed18-f48e-10a5-9639-02727a1485c8",
								true,
							},
							
							{
								"bd520528-de6e-dd63-8c2f-b13e1078b8d5",
								true,
							},
							
							{
								"c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
								true,
							},
							
							{
								"d81c6985-e446-ec27-a6f7-63bff52ae445",
								true,
							},
							
							{
								"951c9b82-5570-bfd1-bfd6-30d778f703f4",
								true,
							},
							
							{
								"66a0e6e1-3fbc-1f2e-926b-1a64f77b30be",
								true,
							},
							
							{
								"e69d5f82-fbef-17bd-8b3a-06007b5000ad",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Self Blazing Duration <30",
						uuid = "79d2c2ea-2391-1577-adf9-ee3c294bee0e",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						alertColor = -1,
						alertPriority = 3,
						alertText = "Low Spellblade",
						conditions = 
						{
							
							{
								"646f4741-2189-523d-b322-d342eff3b1ac",
								true,
							},
							
							{
								"56223365-8388-f8e6-85ad-ad4ae4271380",
								true,
							},
							
							{
								"6500ed18-f48e-10a5-9639-02727a1485c8",
								true,
							},
							
							{
								"bd520528-de6e-dd63-8c2f-b13e1078b8d5",
								true,
							},
							
							{
								"c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
								true,
							},
							
							{
								"d81c6985-e446-ec27-a6f7-63bff52ae445",
								true,
							},
							
							{
								"daacf4f1-a442-964a-be27-431565da9a6d",
								true,
							},
							
							{
								"a5553312-db6f-f02c-bb2c-8850332433a2",
								true,
							},
							
							{
								"951c9b82-5570-bfd1-bfd6-30d778f703f4",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Holy Blade (no Blazing)",
						uuid = "a7f3c1d2-9e84-4b56-8c21-5d7a0e3f9b12",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						alertColor = -1,
						alertPriority = 3,
						alertText = "Low Spellblade",
						conditions = 
						{
							
							{
								"646f4741-2189-523d-b322-d342eff3b1ac",
								true,
							},
							
							{
								"56223365-8388-f8e6-85ad-ad4ae4271380",
								true,
							},
							
							{
								"6500ed18-f48e-10a5-9639-02727a1485c8",
								true,
							},
							
							{
								"bd520528-de6e-dd63-8c2f-b13e1078b8d5",
								true,
							},
							
							{
								"c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
								true,
							},
							
							{
								"d81c6985-e446-ec27-a6f7-63bff52ae445",
								true,
							},
							
							{
								"daacf4f1-a442-964a-be27-431565da9a6d",
								true,
							},
							
							{
								"a5553312-db6f-f02c-bb2c-8850332433a2",
								true,
							},
							
							{
								"b2873652-fafa-8116-85c3-0bcf9e9f225e",
								false,
							},
							
							{
								"e69d5f82-fbef-17bd-8b3a-06007b5000ad",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Holy Blade if unlocked",
						uuid = "c1ad4b8c-37e9-2214-8d55-20e9dae89648",
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
								"646f4741-2189-523d-b322-d342eff3b1ac",
								true,
							},
							
							{
								"56223365-8388-f8e6-85ad-ad4ae4271380",
								true,
							},
							
							{
								"6500ed18-f48e-10a5-9639-02727a1485c8",
								true,
							},
							
							{
								"bd520528-de6e-dd63-8c2f-b13e1078b8d5",
								true,
							},
							
							{
								"c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
								true,
							},
							
							{
								"d81c6985-e446-ec27-a6f7-63bff52ae445",
								true,
							},
							
							{
								"f660e488-8ee9-147a-a731-27ff9701aaf6",
								true,
							},
							
							{
								"fb8ebcda-f865-6a5c-a568-729538b3195d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_TensorMagnum3_CD",
						name = "Revert to Sundering",
						uuid = "5e6fc821-6102-2f72-bd1d-e78d5e9a7bdb",
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
							1346,
						},
						name = "Occult Crescent",
						uuid = "646f4741-2189-523d-b322-d342eff3b1ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4803,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Mystic Knight",
						uuid = "56223365-8388-f8e6-85ad-ad4ae4271380",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "6500ed18-f48e-10a5-9639-02727a1485c8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "bd520528-de6e-dd63-8c2f-b13e1078b8d5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Toggle",
						uuid = "d81c6985-e446-ec27-a6f7-63bff52ae445",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,31):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Sundering Unlocked",
						uuid = "f660e488-8ee9-147a-a731-27ff9701aaf6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46591,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Sundering Available",
						uuid = "fb8ebcda-f865-6a5c-a568-729538b3195d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,33):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Holy Unlocked",
						uuid = "daacf4f1-a442-964a-be27-431565da9a6d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46592,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Holy Available",
						uuid = "a5553312-db6f-f02c-bb2c-8850332433a2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,34):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Blazing Unlocked",
						uuid = "951c9b82-5570-bfd1-bfd6-30d778f703f4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46593,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Blazing Available",
						uuid = "66a0e6e1-3fbc-1f2e-926b-1a64f77b30be",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffDuration = 30,
						buffID = 4790,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Self Blazing Missing",
						uuid = "b2873652-fafa-8116-85c3-0bcf9e9f225e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 30,
						buffID = 4790,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Self Blazing Duration",
						uuid = "e69d5f82-fbef-17bd-8b3a-06007b5000ad",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffDuration = 30,
						buffID = 4791,
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Target Blazing Missing",
						uuid = "76763df1-edbf-8932-8e24-33bea7bf4fc3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 30,
						buffID = 4791,
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Target Blazing Duration",
						uuid = "155d1018-9e67-71a0-9ae4-89f9065d67f6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local target = TensorCore.mGetTarget()\nif not target then return false end\nreturn TensorCore.getDistance2d(TensorCore.mGetPlayer().pos, target.pos) <= 8",
						dequeueIfLuaFalse = true,
						name = "Target In Range (5y)",
						uuid = "c3d8a1f7-5e92-4b3a-9c16-8f2d0e7a4b59",
						version = 3,
					},
				},
			},
			name = "P. Mystic Knight",
			throttleTime = 1000,
			uuid = "092d9f5c-6e07-66c0-99d7-4ff225118861",
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
						aType = "ACR",
						actionID = 41630,
						actionLua = "d(\"Fuma Shuriken\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"eff9d535-b1b3-97ff-81d8-1b1d46d44cae",
								true,
							},
							
							{
								"20de6216-c9b7-63c0-aa12-6f3bf6328b56",
								true,
							},
							
							{
								"413ab30e-5df3-2576-be9b-e6f0766a4e1c",
								true,
							},
							
							{
								"d6faff61-6e41-4419-a74c-ad11a7cfa344",
								true,
							},
							
							{
								"5efc2993-627e-22b8-97b6-14b91275d1ce",
								true,
							},
							
							{
								"91456766-cb80-a551-ae24-079ee8928b40",
								true,
							},
							
							{
								"407cb2a4-43fa-1a39-b3e4-2340f7c3711d",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction1",
						ignoreWeaveRules = true,
						name = "Fuma Shuriken",
						targetType = "Current Target",
						uuid = "ebf644a2-9f1d-a660-9d02-ad52513db9b3",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionID = 41630,
						actionLua = "d(\"Lightning Scroll\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"eff9d535-b1b3-97ff-81d8-1b1d46d44cae",
								true,
							},
							
							{
								"20de6216-c9b7-63c0-aa12-6f3bf6328b56",
								true,
							},
							
							{
								"413ab30e-5df3-2576-be9b-e6f0766a4e1c",
								true,
							},
							
							{
								"d6faff61-6e41-4419-a74c-ad11a7cfa344",
								true,
							},
							
							{
								"5efc2993-627e-22b8-97b6-14b91275d1ce",
								true,
							},
							
							{
								"e1a2766c-501a-0c89-831e-2146d6bae119",
								true,
							},
							
							{
								"475c4ff9-1c1a-9878-821b-6576f35b3d53",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction3",
						ignoreWeaveRules = true,
						name = "Lightning Scroll",
						targetType = "Most Clustered Enemy",
						uuid = "38328af4-057a-a8f9-93af-dd4ba67e12d3",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionID = 41630,
						actionLua = "d(\"Flame Scroll\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"eff9d535-b1b3-97ff-81d8-1b1d46d44cae",
								true,
							},
							
							{
								"20de6216-c9b7-63c0-aa12-6f3bf6328b56",
								true,
							},
							
							{
								"413ab30e-5df3-2576-be9b-e6f0766a4e1c",
								true,
							},
							
							{
								"d6faff61-6e41-4419-a74c-ad11a7cfa344",
								true,
							},
							
							{
								"5efc2993-627e-22b8-97b6-14b91275d1ce",
								true,
							},
							
							{
								"c8c4c4ed-c14e-fae8-9770-ecd7145873a9",
								true,
							},
							
							{
								"81bc93ec-9729-d286-b830-236c236d9ceb",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction4",
						ignoreWeaveRules = true,
						name = "Flame Scroll",
						targetType = "Most Clustered Enemy",
						uuid = "5b471398-f336-5fd2-a86d-d717d0878fb1",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "d(\"Smoke\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"eff9d535-b1b3-97ff-81d8-1b1d46d44cae",
								true,
							},
							
							{
								"20de6216-c9b7-63c0-aa12-6f3bf6328b56",
								true,
							},
							
							{
								"413ab30e-5df3-2576-be9b-e6f0766a4e1c",
								true,
							},
							
							{
								"6150078d-4c7c-9781-86cb-cd1d8f0563ff",
								true,
							},
							
							{
								"693b377f-0e37-f1fa-837d-0d0e1593a732",
								true,
							},
							
							{
								"64ec0aae-a61e-8a4a-8be8-dfabf7eb0b79",
								true,
							},
						},
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction2",
						name = "Smoke",
						uuid = "87bd0a34-244e-a260-8444-c0204c42b24c",
						variableIsHover = true,
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
						uuid = "eff9d535-b1b3-97ff-81d8-1b1d46d44cae",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5328,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Ninja",
						uuid = "20de6216-c9b7-63c0-aa12-6f3bf6328b56",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "413ab30e-5df3-2576-be9b-e6f0766a4e1c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "d6faff61-6e41-4419-a74c-ad11a7cfa344",
						version = 3,
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
						uuid = "5efc2993-627e-22b8-97b6-14b91275d1ce",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,31):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Fuma Shuriken",
						uuid = "91456766-cb80-a551-ae24-079ee8928b40",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Smoke",
						uuid = "6150078d-4c7c-9781-86cb-cd1d8f0563ff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,33):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Lightning Scroll",
						uuid = "e1a2766c-501a-0c89-831e-2146d6bae119",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Flame Scroll",
						uuid = "c8c4c4ed-c14e-fae8-9770-ecd7145873a9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49062,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Fuma Shuriken CD <= 3s",
						uuid = "407cb2a4-43fa-1a39-b3e4-2340f7c3711d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49064,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Lightning Scroll CD <= 3s",
						uuid = "475c4ff9-1c1a-9878-821b-6576f35b3d53",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49065,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Flame Scroll CD <= 3s",
						uuid = "81bc93ec-9729-d286-b830-236c236d9ceb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 49063,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Smoke CD <= 0s",
						uuid = "693b377f-0e37-f1fa-837d-0d0e1593a732",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 2,
						buffID = 5327,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Missing Buff: Smoke",
						uuid = "da90157b-ddee-665e-954b-c11eab3ac1ac",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 3,
						buffDuration = 10,
						buffID = 5327,
						category = "Self",
						comparator = 2,
						dequeueIfLuaFalse = true,
						name = "Buff Dur.: Smoke <= 10s",
						uuid = "b6b87162-540a-11db-a585-67788318d29c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"da90157b-ddee-665e-954b-c11eab3ac1ac",
								true,
							},
							
							{
								"b6b87162-540a-11db-a585-67788318d29c",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "F: Smoke Buff",
						partyTargetNumber = 0,
						uuid = "64ec0aae-a61e-8a4a-8be8-dfabf7eb0b79",
						version = 3,
					},
				},
			},
			name = "P. Ninja",
			throttleTime = 250,
			timeout = 2.5,
			uuid = "d2e727cd-fcd5-e189-a64c-96e07f69315a",
			version = 2,
		},
		inheritedIndex = 42,
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
								"d42e14d2-ed16-3edb-98f6-0a083b58318d",
								true,
							},
							
							{
								"2807a4f9-c8e6-6040-ab35-7bc0de28267d",
								true,
							},
							
							{
								"99c73f6d-ab4e-f13c-a138-49090c198497",
								true,
							},
							
							{
								"5a5c0cef-f7f6-5c41-ba57-b7b6911c1582",
								true,
							},
							
							{
								"ff1a3ca1-0c40-0c0a-838e-3eb07775a30f",
								true,
							},
							
							{
								"931a6cca-b9e9-75cb-8765-316b65bda5f0",
								true,
							},
							
							{
								"3467bf01-4832-8358-bfb3-087527be05c8",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Finisher",
						uuid = "5365b01d-aeac-1419-ac90-a9094d5b4c63",
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
								"d42e14d2-ed16-3edb-98f6-0a083b58318d",
								true,
							},
							
							{
								"2807a4f9-c8e6-6040-ab35-7bc0de28267d",
								true,
							},
							
							{
								"99c73f6d-ab4e-f13c-a138-49090c198497",
								true,
							},
							
							{
								"5a5c0cef-f7f6-5c41-ba57-b7b6911c1582",
								true,
							},
							
							{
								"ff1a3ca1-0c40-0c0a-838e-3eb07775a30f",
								true,
							},
							
							{
								"2fb0faf9-ba0b-afef-b63f-3ba4d7840c17",
								true,
							},
							
							{
								"7ffacc39-e30e-5ce9-b423-8c90e71fb765",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_CD",
						name = "Long Reach",
						uuid = "9d0a8ece-7ebe-9cc4-b451-11050f645316",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"d42e14d2-ed16-3edb-98f6-0a083b58318d",
								true,
							},
							
							{
								"2807a4f9-c8e6-6040-ab35-7bc0de28267d",
								true,
							},
							
							{
								"99c73f6d-ab4e-f13c-a138-49090c198497",
								true,
							},
							
							{
								"5a5c0cef-f7f6-5c41-ba57-b7b6911c1582",
								true,
							},
							
							{
								"ff1a3ca1-0c40-0c0a-838e-3eb07775a30f",
								true,
							},
							
							{
								"0c941677-20dd-2f9a-9190-fd0d3020aa19",
								true,
							},
							
							{
								"bd807658-3923-e607-b150-436ec62d5681",
								true,
							},
							
							{
								"7e7e1198-54bb-5886-bf01-c3736b9fb5be",
								true,
							},
						},
						gVar = "ACR_RikuRDM3_CD",
						name = "Bladeblitz",
						uuid = "75a9967c-951e-62ca-8c3c-b89586cc622c",
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
							1346,
						},
						name = "Occult Crescent",
						uuid = "d42e14d2-ed16-3edb-98f6-0a083b58318d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 4804,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Gladiator",
						uuid = "2807a4f9-c8e6-6040-ab35-7bc0de28267d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "99c73f6d-ab4e-f13c-a138-49090c198497",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "5a5c0cef-f7f6-5c41-ba57-b7b6911c1582",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						dequeueIfLuaFalse = true,
						name = "Toggle",
						uuid = "ff1a3ca1-0c40-0c0a-838e-3eb07775a30f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46594,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Finisher CD",
						uuid = "931a6cca-b9e9-75cb-8765-316b65bda5f0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 7,
						name = "Finisher Range",
						uuid = "3467bf01-4832-8358-bfb3-087527be05c8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,33):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Long Reach Unlocked",
						uuid = "2fb0faf9-ba0b-afef-b63f-3ba4d7840c17",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46596,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Long Reach CD",
						uuid = "7ffacc39-e30e-5ce9-b423-8c90e71fb765",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,34):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Bladeblitz Unlocked",
						uuid = "0c941677-20dd-2f9a-9190-fd0d3020aa19",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 46597,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Bladeblitz CD",
						uuid = "bd807658-3923-e607-b150-436ec62d5681",
						version = 3,
					},
				},
				
				{
					data = 
					{
						comparator = 2,
						conditionType = 6,
						dequeueIfLuaFalse = true,
						inRangeValue = 8,
						name = "Bladeblitz Range",
						uuid = "7e7e1198-54bb-5886-bf01-c3736b9fb5be",
						version = 3,
					},
				},
			},
			name = "P. Gladiator Auto Weaponskills",
			throttleTime = 1000,
			uuid = "7a4dbf72-e16b-7baf-8724-7fb5955cb362",
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
						aType = "ACR",
						clusterMinTarget = 0,
						conditions = 
						{
							
							{
								"97b4fbc4-3d22-e8e1-8baf-951f815047e9",
								true,
							},
							
							{
								"ae040a9d-860d-0b4b-a55f-c82b4035177a",
								true,
							},
							
							{
								"20840724-ed31-adac-bb7f-9a94958e814e",
								true,
							},
							
							{
								"93b471e5-9a85-d70d-b386-507f7561930c",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction5",
						gVarValue = 2,
						name = "Stop Occult Holy - Movement",
						targetType = "Most Clustered Enemy",
						uuid = "d20b0408-f597-62b5-ba94-b703f298b7dd",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						conditions = 
						{
							
							{
								"00099e85-cb04-54af-86e6-bc086ac50320",
								true,
							},
							
							{
								"13937b42-ea6b-0ff6-8de3-df1fb92b7c6e",
								true,
							},
							
							{
								"2313ec24-56c9-f3da-9dae-cd45fa21c991",
								true,
							},
							
							{
								"ae040a9d-860d-0b4b-a55f-c82b4035177a",
								true,
							},
							
							{
								"722134e6-20ae-466b-a92d-b4c23b7c6ec6",
								true,
							},
							
							{
								"bb5c6c03-8599-914d-ad3f-b7f753e6cbf0",
								true,
							},
							
							{
								"97b4fbc4-3d22-e8e1-8baf-951f815047e9",
								true,
							},
							
							{
								"20840724-ed31-adac-bb7f-9a94958e814e",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction5",
						name = "Occult Holy",
						targetType = "Most Clustered Enemy",
						uuid = "11c26eb8-9bb6-f750-84d1-f96b3c1daaac",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
						clusterMinTarget = 0,
						conditions = 
						{
							
							{
								"97b4fbc4-3d22-e8e1-8baf-951f815047e9",
								true,
							},
							
							{
								"2313ec24-56c9-f3da-9dae-cd45fa21c991",
								true,
							},
							
							{
								"ae040a9d-860d-0b4b-a55f-c82b4035177a",
								false,
							},
							
							{
								"93b471e5-9a85-d70d-b386-507f7561930c",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction5",
						gVarValue = 2,
						name = "Fallback Deactivate",
						targetType = "Most Clustered Enemy",
						uuid = "56c20222-a360-74d5-8006-a9729dc0af2f",
						variableIsHover = true,
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
						buffID = 5329,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is WHM",
						uuid = "97b4fbc4-3d22-e8e1-8baf-951f815047e9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Occult Holy",
						uuid = "00099e85-cb04-54af-86e6-bc086ac50320",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49071,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Occult Holy CD <= 3s",
						uuid = "13937b42-ea6b-0ff6-8de3-df1fb92b7c6e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "2313ec24-56c9-f3da-9dae-cd45fa21c991",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "ae040a9d-860d-0b4b-a55f-c82b4035177a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "722134e6-20ae-466b-a92d-b4c23b7c6ec6",
						version = 3,
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
						uuid = "bb5c6c03-8599-914d-ad3f-b7f753e6cbf0",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						dequeueIfLuaFalse = true,
						name = "Player Moving",
						uuid = "20840724-ed31-adac-bb7f-9a94958e814e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"]",
						dequeueIfLuaFalse = true,
						name = "Is Occult Holy queued",
						uuid = "93b471e5-9a85-d70d-b386-507f7561930c",
						version = 3,
					},
				},
			},
			enabled = false,
			name = "P. WHM - Attacks",
			throttleTime = 100,
			timeout = 2.75,
			uuid = "337763c3-1547-f9b4-bd94-5d27cdf7d7ee",
			version = 2,
		},
		inheritedIndex = 46,
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
						actionLua = "local GUI_FLAGS = 97\n\n-- Initialize table and toggle states if they don't exist yet\nPWHMToggles = PWHMToggles or {}\nif PWHMToggles.ST == nil then PWHMToggles.ST = true end\nif PWHMToggles.AOE == nil then PWHMToggles.AOE = true end\nif PWHMToggles.Rez == nil then PWHMToggles.Rez = true end\n\nGUI:Begin(\"OCWHMBox#ton618\", true, GUI_FLAGS)\n\n-- Header Title (2 Lines)\nGUI:SetWindowFontSize(1.3)\nGUI:TextColored(0, 1, 1, 1.0, \"Phantom WHM\\nHeal Toggles\")\nGUI:Separator()\n\n-- Set font size for the toggle buttons\nGUI:SetWindowFontSize(1.25)\n\n-- Helper function to draw dynamic toggle buttons\nlocal function DrawToggleButton(label, key, width, height)\n    width = width or 120\n    height = height or 30\n\n    if PWHMToggles[key] then\n        -- Darker Green when ON (Normal, Hovered, Active)\n        GUI:PushStyleColor(GUI.Col_Button,        0.10, 0.45, 0.10, 1.0)\n        GUI:PushStyleColor(GUI.Col_ButtonHovered, 0.15, 0.55, 0.15, 1.0)\n        GUI:PushStyleColor(GUI.Col_ButtonActive,  0.05, 0.35, 0.05, 1.0)\n    else\n        -- Dark Grey when OFF (Normal, Hovered, Active)\n        GUI:PushStyleColor(GUI.Col_Button,        0.30, 0.30, 0.30, 1.0)\n        GUI:PushStyleColor(GUI.Col_ButtonHovered, 0.40, 0.40, 0.40, 1.0)\n        GUI:PushStyleColor(GUI.Col_ButtonActive,  0.20, 0.20, 0.20, 1.0)\n    end\n\n    -- Toggle the state when clicked\n    if GUI:Button(label, width, height) then\n        PWHMToggles[key] = not PWHMToggles[key]\n    end\n\n    -- Clean up all 3 pushed colors\n    GUI:PopStyleColor(3)\nend\n\n-- Render Toggle Buttons (Label, Table Key, Width, Height)\nDrawToggleButton(\"ST\", \"ST\", 120, 30)\nDrawToggleButton(\"AOE\", \"AOE\", 120, 30)\nDrawToggleButton(\"Rez\", \"Rez\", 120, 30)\n\n-- Reset font size back to default\nGUI:SetWindowFontSize(1.0)\n\nGUI:End()\n\nself.used = true",
						conditions = 
						{
							
							{
								"55457aa9-df38-a8bc-90ab-eb59b9f7655c",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "1de7001f-cf04-925a-9f7d-9d6e45feba63",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 5329,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is WHM",
						uuid = "55457aa9-df38-a8bc-90ab-eb59b9f7655c",
						version = 3,
					},
				},
			},
			enabled = false,
			eventType = 13,
			name = "P. WHM - UI",
			uuid = "c2d39c48-9f66-9027-921f-e77b0d24dce1",
			version = 2,
		},
		inheritedIndex = 47,
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"e2762103-a99f-86dc-ad49-b79f66f96561",
								true,
							},
							
							{
								"3ca882ee-8189-76a0-b3ca-e126e1a77551",
								true,
							},
							
							{
								"4422212c-3126-2a92-a5fe-15dcceb5fb00",
								true,
							},
							
							{
								"c225207c-fb94-0582-8b77-6b69080b1b3c",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Stop Heal - Movement",
						uuid = "7c2a4c96-d765-31c1-807a-9b37b287b54f",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ca882ee-8189-76a0-b3ca-e126e1a77551",
								true,
							},
							
							{
								"205ce590-576c-805f-bb70-b65b01a445fe",
								true,
							},
							
							{
								"505e3dab-394d-8421-81ad-d9ecf712590a",
								true,
							},
							
							{
								"ab85b088-5413-02bf-8b95-ea4abcf8e1d5",
								true,
							},
							
							{
								"73fada43-7a3e-1eb8-bcbb-9c455c2e639b",
								true,
							},
							
							{
								"4422212c-3126-2a92-a5fe-15dcceb5fb00",
								false,
							},
							
							{
								"e2762103-a99f-86dc-ad49-b79f66f96561",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction1",
						name = "Occult Cure II",
						targetType = "Detection Target",
						uuid = "d7d9d7b2-357e-4e4e-8f79-21252924b15b",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"3ca882ee-8189-76a0-b3ca-e126e1a77551",
								true,
							},
							
							{
								"205ce590-576c-805f-bb70-b65b01a445fe",
								true,
							},
							
							{
								"50a18b96-eaba-3dbe-a1de-80acadb5c7d7",
								true,
							},
							
							{
								"59a38c75-1a1a-984b-9728-4c51ae771b49",
								true,
							},
							
							{
								"c42bc024-b3fc-93de-b4ab-3a9ee2948f9d",
								true,
							},
							
							{
								"4422212c-3126-2a92-a5fe-15dcceb5fb00",
								false,
							},
							
							{
								"e2762103-a99f-86dc-ad49-b79f66f96561",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction2",
						name = "Occult Cure III",
						uuid = "06ac1aba-4f61-2150-a12e-2b131ff31b87",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"e2762103-a99f-86dc-ad49-b79f66f96561",
								true,
							},
							
							{
								"3ca882ee-8189-76a0-b3ca-e126e1a77551",
								false,
							},
							
							{
								"205ce590-576c-805f-bb70-b65b01a445fe",
								true,
							},
							
							{
								"c225207c-fb94-0582-8b77-6b69080b1b3c",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Fallback Deactivate",
						uuid = "f80fcf7c-232e-7d53-bea6-34e07dd86596",
						version = 2.1,
					},
				},
			},
			conditions = 
			{
				
				{
					data = 
					{
						buffID = 5329,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is WHM",
						uuid = "e2762103-a99f-86dc-ad49-b79f66f96561",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "3ca882ee-8189-76a0-b3ca-e126e1a77551",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "205ce590-576c-805f-bb70-b65b01a445fe",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 15,
						name = "Range - 15 yalms",
						partyTargetType = "Detection Target",
						uuid = "9e180cea-980c-71f5-963e-b57f98e6d536",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 4,
						inRangeValue = 30,
						name = "Range - 30 yalms",
						partyTargetType = "Detection Target",
						uuid = "2dd5888f-d9af-4062-a698-1ae78e2d2b6c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 50,
						name = "HP - 50%",
						partyTargetType = "Detection Target",
						uuid = "cd643437-cbe4-9fd5-bfd9-546de754b118",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Party",
						comparator = 2,
						conditionType = 2,
						hpValue = 75,
						name = "HP - 75%",
						partyTargetType = "Detection Target",
						uuid = "3a745689-e1b3-4404-8721-e462780db477",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"9e180cea-980c-71f5-963e-b57f98e6d536",
								true,
							},
							
							{
								"3a745689-e1b3-4404-8721-e462780db477",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "F - Occult Cure III",
						partyTargetNumber = 3,
						uuid = "50a18b96-eaba-3dbe-a1de-80acadb5c7d7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"2dd5888f-d9af-4062-a698-1ae78e2d2b6c",
								true,
							},
							
							{
								"cd643437-cbe4-9fd5-bfd9-546de754b118",
								true,
							},
						},
						dequeueIfLuaFalse = true,
						filterTargetSubtype = "Lowest HP",
						filterTargetType = "Party",
						name = "F - 50% @ 30y",
						uuid = "505e3dab-394d-8421-81ad-d9ecf712590a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 3,
						dequeueIfLuaFalse = true,
						mpType = 2,
						mpValue = 1500,
						name = "MP >= 1500",
						uuid = "ab85b088-5413-02bf-8b95-ea4abcf8e1d5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 3,
						dequeueIfLuaFalse = true,
						mpType = 2,
						mpValue = 3000,
						name = "MP >= 3000",
						uuid = "59a38c75-1a1a-984b-9728-4c51ae771b49",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return PWHMToggles.ST ~= nil and PWHMToggles.ST",
						dequeueIfLuaFalse = true,
						name = "Toggle - ST",
						uuid = "73fada43-7a3e-1eb8-bcbb-9c455c2e639b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return PWHMToggles.AOE ~= nil and PWHMToggles.AOE",
						dequeueIfLuaFalse = true,
						name = "Toggle - AOE",
						uuid = "c42bc024-b3fc-93de-b4ab-3a9ee2948f9d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						dequeueIfLuaFalse = true,
						name = "Player Moving",
						uuid = "4422212c-3126-2a92-a5fe-15dcceb5fb00",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"]\n       or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"]",
						dequeueIfLuaFalse = true,
						name = "Is Heal queued",
						uuid = "c225207c-fb94-0582-8b77-6b69080b1b3c",
						version = 3,
					},
				},
			},
			enabled = false,
			name = "P. WHM - Heals",
			throttleTime = 100,
			timeout = 2.75,
			uuid = "9d280002-40a4-9e37-b14e-081affb3b3ea",
			version = 2,
		},
		inheritedIndex = 49,
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
						actionLua = "if (data.lastRun ~= nil and TimeSince(data.lastRun) < 1500) then\n    return\nend\n\nlocal deadPlayers = TensorCore.entityList(\"chartype=4,los,dead,maxdistance=30\")\n\nlocal bestTarget = nil\nlocal highestPriority = 0\n\nif table.valid(deadPlayers) then\n    for _, player in pairs(deadPlayers) do\n        -- Skip if already raised (148) or out of raises (4263)\n        if not TensorCore.hasBuff(player, 148) and not TensorCore.hasBuff(player, 4263) then\n            -- Assign priority score: Chemist (3) > White Mage (2) > Standard (1)\n            local priority = 1\n            if TensorCore.hasBuff(player, 4367) then\n                priority = 3\n            elseif TensorCore.hasBuff(player, 5329) then\n                priority = 2\n            end\n\n            -- Track highest priority found\n            if priority > highestPriority then\n                highestPriority = priority\n                bestTarget = player\n            end\n        end\n    end\nend\n\n-- If a valid target was found, process the raise and return the player ID\nif bestTarget then\n    local jobLabel = \"\"\n    if highestPriority == 3 then jobLabel = \" (Chemist)\" end\n    if highestPriority == 2 then jobLabel = \" (White Mage)\" end\n    local rezMessage = \"Raising \" .. bestTarget.name .. jobLabel\n\n    eventArgs.detectionTargetID = bestTarget.id\n    data.rezMessage = rezMessage\n    d(\"set target to rez: \" .. bestTarget.name)\nelse\n    eventArgs.detectionTargetID = nil\nend\n\ndata.lastRun = Now()\n\nself.used = true",
						conditions = 
						{
							
							{
								"8932cec1-d110-be6c-8549-832c96c2f81f",
								true,
							},
							
							{
								"b50f7454-821a-9ac2-9385-6e4ab6cd8506",
								true,
							},
							
							{
								"16f4dfef-1b6b-fc77-b547-814ee2ac39a4",
								true,
							},
							
							{
								"4232a585-e0da-30d7-9db0-2fb1e588513c",
								true,
							},
							
							{
								"74f495a6-8cbc-e212-95dd-7fe47b47f817",
								true,
							},
							
							{
								"0ac69ed7-0bd3-2295-bbb9-13e0fbe2ce86",
								true,
							},
							
							{
								"e9bfbe47-e08d-28e8-939a-b4a325a77760",
								true,
							},
							
							{
								"d6bd6de2-7c2e-1cd1-baa7-df189d738b97",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Set Rez Target",
						uuid = "65981774-cada-1187-b757-b80415751cbf",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionID = 49070,
						conditions = 
						{
							
							{
								"8932cec1-d110-be6c-8549-832c96c2f81f",
								true,
							},
							
							{
								"b50f7454-821a-9ac2-9385-6e4ab6cd8506",
								true,
							},
							
							{
								"16f4dfef-1b6b-fc77-b547-814ee2ac39a4",
								true,
							},
							
							{
								"4232a585-e0da-30d7-9db0-2fb1e588513c",
								true,
							},
							
							{
								"74f495a6-8cbc-e212-95dd-7fe47b47f817",
								true,
							},
							
							{
								"0ac69ed7-0bd3-2295-bbb9-13e0fbe2ce86",
								true,
							},
							
							{
								"e9bfbe47-e08d-28e8-939a-b4a325a77760",
								true,
							},
							
							{
								"62d1c136-27c2-976c-a86e-7f0062efe2f4",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction4",
						targetType = "Detection Target",
						uuid = "82f832f6-fea4-d466-a009-8d7c8ea10540",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"8932cec1-d110-be6c-8549-832c96c2f81f",
								true,
							},
							
							{
								"b50f7454-821a-9ac2-9385-6e4ab6cd8506",
								true,
							},
							
							{
								"16f4dfef-1b6b-fc77-b547-814ee2ac39a4",
								false,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction4",
						gVarValue = 2,
						name = "Fallback Deactivate",
						targetType = "Detection Target",
						uuid = "319c6dce-fe0b-615f-a695-7f25e95940f4",
						variableIsHover = true,
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
						buffID = 5329,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is WHM",
						uuid = "8932cec1-d110-be6c-8549-832c96c2f81f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "b50f7454-821a-9ac2-9385-6e4ab6cd8506",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "16f4dfef-1b6b-fc77-b547-814ee2ac39a4",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "4232a585-e0da-30d7-9db0-2fb1e588513c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 0.20000000298023,
						actionID = 49070,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Occult Raise CD",
						uuid = "74f495a6-8cbc-e212-95dd-7fe47b47f817",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return (ActionList:Get(5,34):CanCastResult() ~= 579)",
						dequeueIfLuaFalse = true,
						name = "Occult Raise Unlocked",
						uuid = "0ac69ed7-0bd3-2295-bbb9-13e0fbe2ce86",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return PWHMToggles.Rez ~= nil and PWHMToggles.Rez",
						dequeueIfLuaFalse = true,
						name = "Toggle - Rez",
						uuid = "e9bfbe47-e08d-28e8-939a-b4a325a77760",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local deadPlayers = TensorCore.entityList(\"chartype=4,los,dead,maxdistance=30\")\nfor _, player in pairs(deadPlayers) do\n    if not TensorCore.hasBuff(player, 148) and not TensorCore.hasBuff(player, 4263) then\n        return true\n    end\nend\nreturn false",
						dequeueIfLuaFalse = true,
						filterTargetType = "Party",
						name = "Dead Player Check",
						uuid = "d6bd6de2-7c2e-1cd1-baa7-df189d738b97",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.detectionTargetID ~= nil",
						dequeueIfLuaFalse = true,
						name = "Has Detection Target",
						uuid = "62d1c136-27c2-976c-a86e-7f0062efe2f4",
						version = 3,
					},
				},
			},
			enabled = false,
			name = "P. WHM - Rez",
			throttleTime = 200,
			uuid = "c1e2e2ba-7ea0-520b-91ff-cb92e4676842",
			version = 2,
		},
		inheritedIndex = 48,
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"f1fcce61-dd9c-69d0-92e1-cc90b93ebdd5",
								true,
							},
							
							{
								"6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Summoning",
						uuid = "5457814d-3ddf-07ea-b993-3178136c2e34",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						clusterRadius = 15,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"58dad09c-5edb-a035-8383-456b154f32fd",
								true,
							},
							
							{
								"c792fbc6-581d-4a85-b86a-36e5cb89bc03",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction5",
						name = "Megaflare",
						targetType = "Most Clustered Enemy",
						uuid = "6ff99f53-6a37-b32b-8bca-25dc1664fa5f",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionID = 41630,
						actionLua = "d(\"Fuma Shuriken\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 12,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"da6a3ca6-8577-816b-88de-617741ad1af3",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
							
							{
								"7ae11b51-a023-a1a9-a351-9c4827a33a82",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction1",
						ignoreWeaveRules = true,
						name = "Hellfire",
						targetType = "Most Clustered Enemy",
						uuid = "1346423f-443e-bf98-86ff-e7afe4b562f9",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						clusterRadius = 12,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"eaf33b66-cfeb-0183-ba40-33027700e29a",
								true,
							},
							
							{
								"35b0d4f5-200d-5e4d-9911-90dc60aa7901",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
							
							{
								"a18d17a7-36b7-b794-8e24-938c04369a92",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction2",
						name = "Judgement Bolt",
						targetType = "Most Clustered Enemy",
						uuid = "710fde25-ef3c-7f43-8a9c-0ad0cccc378f",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"b8bba6c4-6253-6d3f-aaf9-ad5b06c59bf8",
								true,
							},
							
							{
								"687e96ee-1fc4-a977-b11c-cb36d4a327b7",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
							
							{
								"7bc51f84-db08-eecf-a9ac-eade5b39d44a",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction4",
						name = "Thunderstorm",
						targetSubType = "Most Clustered",
						targetType = "Current Target",
						uuid = "4ace2d05-8a41-264c-8499-e010902045cf",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionID = 41630,
						actionLua = "d(\"Fuma Shuriken\")\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 12,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuSGE3_Hotbar_DutyAction1",
						ignoreWeaveRules = true,
						name = "Hellfire",
						targetType = "Most Clustered Enemy",
						uuid = "e2706396-3fe7-767e-a3e6-15d3144d1c6b",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
					inheritedOverwrites = 
					{
						conditions = 
						{
							
							{
								type = "add",
								value = 
								{
									"80ab686f-c3ab-907f-b320-9a079f92fd11",
									true,
								},
							},
						},
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								false,
							},
							
							{
								"6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_CD",
						name = "Fallback Dequeue",
						uuid = "06e8f51b-eb9f-0f9e-8809-24b51ec83945",
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
						uuid = "1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5332,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Summoner",
						uuid = "a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "3f8c09fd-599e-e425-935a-4a2e47b26bb7",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "41488e26-0694-059b-bd0c-61b4e51917af",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "09d2463d-fbb9-bc41-affd-1a796e900b59",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
						version = 3,
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
						uuid = "69db96b4-50c5-b63f-8302-96b4a12c36e6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,31):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Hellfire",
						uuid = "da6a3ca6-8577-816b-88de-617741ad1af3",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Judgement Bolt",
						uuid = "eaf33b66-cfeb-0183-ba40-33027700e29a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Thunderstorm",
						uuid = "b8bba6c4-6253-6d3f-aaf9-ad5b06c59bf8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Megaflare",
						uuid = "58dad09c-5edb-a035-8383-456b154f32fd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49080,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Hellfire CD <= 3s",
						uuid = "09e738b2-8ab5-5736-ba29-5a36d8384456",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49081,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Judgement Bolt CD <= 3s",
						uuid = "35b0d4f5-200d-5e4d-9911-90dc60aa7901",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49083,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Thunderstorm CD <= 3s",
						uuid = "687e96ee-1fc4-a977-b11c-cb36d4a327b7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49084,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Megaflare CD <= 3s",
						uuid = "c792fbc6-581d-4a85-b86a-36e5cb89bc03",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5324,
						name = "Target Lightning Weak",
						uuid = "a18d17a7-36b7-b794-8e24-938c04369a92",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5325,
						name = "Target Wind Weak",
						uuid = "7bc51f84-db08-eecf-a9ac-eade5b39d44a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5322,
						name = "Target Fire Weak",
						uuid = "7ae11b51-a023-a1a9-a351-9c4827a33a82",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.getEntitySpeed(TensorCore.mGetPlayer().id) > 0",
						dequeueIfLuaFalse = true,
						name = "Player moving",
						uuid = "e9b651dc-8d33-d497-9404-f0701a646dcc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 167,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Player swiftcast buff",
						uuid = "33aa951f-e6ca-b329-85c3-a7dd2c21aa4a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 1249,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Player dualcast buff",
						uuid = "9022a47d-c71e-97f2-87d7-74d87c3058aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"33aa951f-e6ca-b329-85c3-a7dd2c21aa4a",
								true,
							},
							
							{
								"9022a47d-c71e-97f2-87d7-74d87c3058aa",
								true,
							},
							
							{
								"e9b651dc-8d33-d497-9404-f0701a646dcc",
								false,
							},
						},
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "F: movement",
						partyTargetNumber = 0,
						uuid = "aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						name = "Self Moving",
						uuid = "f1fcce61-dd9c-69d0-92e1-cc90b93ebdd5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\" ] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
						version = 3,
					},
				},
			},
			name = "P. Summoner",
			throttleTime = 250,
			timeout = 2.5,
			uuid = "e81c0ba8-5548-a1f1-b801-970c817fc455",
			version = 2,
		},
		inheritedIndex = 45,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "e27ae646-5033-f9d0-8f32-0bab1ca37b02",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "cf209713-cd07-baf7-af6e-1000879b86cb",
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			name = "P. Ranger Phantom Aim",
			throttleTime = 1000,
			uuid = "a2c85c0f-8023-3f9f-803e-b42c3527bb7a",
			version = 2,
		},
		inheritedIndex = 50,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 49077,
						conditions = 
						{
							
							{
								"cd3de24c-bd19-c8b3-acdc-269ffe017e3a",
								true,
							},
							
							{
								"3f34d46e-8ad1-9e64-abed-166c78a10efe",
								true,
							},
							
							{
								"eb19d322-6f8b-acb5-a881-7228eff84b51",
								true,
							},
							
							{
								"3eb0c4c8-227d-313a-86c7-6d9400d5c777",
								true,
							},
							
							{
								"a80a59b2-e621-1d41-9f36-14e543a6cd8a",
								true,
							},
							
							{
								"385293ab-d5d7-e2a6-8a36-8a2a08e9f522",
								true,
							},
							
							{
								"7acdaefc-5897-7460-b999-7e5d968a67c3",
								true,
							},
							
							{
								"7da229c0-f7ce-9c1c-966d-53b7f743c519",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "f7e9adee-e49b-d4c0-ae44-a5001cfc9103",
						version = 2.1,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						actionID = 49079,
						conditions = 
						{
							
							{
								"cd3de24c-bd19-c8b3-acdc-269ffe017e3a",
								true,
							},
							
							{
								"3f34d46e-8ad1-9e64-abed-166c78a10efe",
								true,
							},
							
							{
								"eb19d322-6f8b-acb5-a881-7228eff84b51",
								true,
							},
							
							{
								"3eb0c4c8-227d-313a-86c7-6d9400d5c777",
								true,
							},
							
							{
								"8566b987-8453-9004-bb17-6d93d00bec3e",
								true,
							},
							
							{
								"385293ab-d5d7-e2a6-8a36-8a2a08e9f522",
								true,
							},
							
							{
								"7acdaefc-5897-7460-b999-7e5d968a67c3",
								true,
							},
							
							{
								"7da229c0-f7ce-9c1c-966d-53b7f743c519",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "1357e8ec-d52e-f63f-83d2-476ca2d9e7de",
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
							1346,
						},
						name = "In Occult Crescent",
						uuid = "cd3de24c-bd19-c8b3-acdc-269ffe017e3a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Is Bot Running",
						uuid = "3f34d46e-8ad1-9e64-abed-166c78a10efe",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "eb19d322-6f8b-acb5-a881-7228eff84b51",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "3eb0c4c8-227d-313a-86c7-6d9400d5c777",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49077,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Check jump cd",
						uuid = "a80a59b2-e621-1d41-9f36-14e543a6cd8a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49079,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						name = "Check Lance cd",
						uuid = "8566b987-8453-9004-bb17-6d93d00bec3e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5331,
						category = "Self",
						name = "Is DRG",
						uuid = "385293ab-d5d7-e2a6-8a36-8a2a08e9f522",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "7acdaefc-5897-7460-b999-7e5d968a67c3",
						version = 3,
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
						uuid = "7da229c0-f7ce-9c1c-966d-53b7f743c519",
						version = 3,
					},
				},
			},
			name = "p. Dragoon (Jump not safe)",
			uuid = "3bfe4444-df82-7f20-b900-794335d94680",
			version = 2,
		},
		inheritedIndex = 51,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"09162f46-edd0-e0ab-a575-e9cbe3ddec4d",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"eaf33b66-cfeb-0183-ba40-33027700e29a",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"7c1c9a3e-654e-c38a-8a7a-42752dec5c88",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction3",
						name = "Refresh Libra",
						targetType = "Current Target",
						uuid = "5d8b9137-6dbc-aa88-bd40-52a5c22ab550",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = true\nself.used = true",
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"eaf33b66-cfeb-0183-ba40-33027700e29a",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"fbb59714-adb4-fad6-aa1e-0d35e6c6f5a6",
								true,
							},
							
							{
								"44c9ceba-564a-3630-8970-d25e51cb9847",
								false,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction3",
						name = "Libra",
						targetType = "Current Target",
						uuid = "9379030c-f4ec-bca7-a30e-56af272d741c",
						variableIsHover = true,
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
						uuid = "1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5334,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Red Mage",
						uuid = "a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "3f8c09fd-599e-e425-935a-4a2e47b26bb7",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "41488e26-0694-059b-bd0c-61b4e51917af",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "09d2463d-fbb9-bc41-affd-1a796e900b59",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2400",
						dequeueIfLuaFalse = true,
						name = "Combat > 2.4s",
						uuid = "09162f46-edd0-e0ab-a575-e9cbe3ddec4d",
						version = 3,
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
						uuid = "69db96b4-50c5-b63f-8302-96b4a12c36e6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,33):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Libra Unlocked",
						uuid = "eaf33b66-cfeb-0183-ba40-33027700e29a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 1,
						actionID = 49094,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Libra CD <= 1s",
						uuid = "09e738b2-8ab5-5736-ba29-5a36d8384456",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 6,
						buffIDList = 
						{
							5322,
							5323,
							5324,
							5325,
						},
						matchAnyBuff = true,
						name = "Target Missing Libra",
						uuid = "fbb59714-adb4-fad6-aa1e-0d35e6c6f5a6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 5,
						buffIDList = 
						{
							5322,
							5323,
							5324,
							5325,
						},
						matchAnyBuff = true,
						name = "Target Has Libra",
						uuid = "44c9ceba-564a-3630-8970-d25e51cb9847",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffCheckType = 7,
						buffDuration = 20,
						buffIDList = 
						{
							5322,
							5323,
							5324,
							5325,
						},
						comparator = 2,
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "Libra Duration <= 20s",
						uuid = "7c1c9a3e-654e-c38a-8a7a-42752dec5c88",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.getEntitySpeed(TensorCore.mGetPlayer().id) > 0",
						dequeueIfLuaFalse = true,
						name = "Player moving",
						uuid = "e9b651dc-8d33-d497-9404-f0701a646dcc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						name = "Self Moving",
						uuid = "f1fcce61-dd9c-69d0-92e1-cc90b93ebdd5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\" ] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
						version = 3,
					},
				},
			},
			name = "P. Red Mage Libra",
			throttleTime = 1250,
			timeout = 2.5,
			uuid = "384be111-76d5-d45b-af4a-8643d34d5822",
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
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"f1fcce61-dd9c-69d0-92e1-cc90b93ebdd5",
								true,
							},
							
							{
								"6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuRDM3_Hotbar_DutyAction4",
						name = "Stop Casting",
						uuid = "5457814d-3ddf-07ea-b993-3178136c2e34",
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"34195b16-5994-1b85-bb59-e9f2f302e007",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"7ae11b51-a023-a1a9-a351-9c4827a33a82",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						name = "Occult Fire",
						targetType = "Most Clustered Enemy",
						uuid = "6ff99f53-6a37-b32b-8bca-25dc1664fa5f",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"34195b16-5994-1b85-bb59-e9f2f302e007",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"eaf33b66-cfeb-0183-ba40-33027700e29a",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"7bc51f84-db08-eecf-a9ac-eade5b39d44a",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction4",
						name = "Occult Blizzard",
						targetType = "Most Clustered Enemy",
						uuid = "710fde25-ef3c-7f43-8a9c-0ad0cccc378f",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = true\nself.used = true",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"34195b16-5994-1b85-bb59-e9f2f302e007",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"b8bba6c4-6253-6d3f-aaf9-ad5b06c59bf8",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"a18d17a7-36b7-b794-8e24-938c04369a92",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction5",
						name = "Occult Thunder",
						targetSubType = "Most Clustered",
						targetType = "Most Clustered Enemy",
						uuid = "4ace2d05-8a41-264c-8499-e010902045cf",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						actionID = 41630,
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = true\nself.used = true",
						atomicPriority = true,
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
								true,
							},
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"3f8c09fd-599e-e425-935a-4a2e47b26bb7",
								true,
							},
							
							{
								"41488e26-0694-059b-bd0c-61b4e51917af",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								true,
							},
							
							{
								"88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
								true,
							},
							
							{
								"34195b16-5994-1b85-bb59-e9f2f302e007",
								true,
							},
							
							{
								"69db96b4-50c5-b63f-8302-96b4a12c36e6",
								true,
							},
							
							{
								"09e738b2-8ab5-5736-ba29-5a36d8384456",
								true,
							},
							
							{
								"aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_Hotbar_DutyAction1",
						ignoreWeaveRules = true,
						name = "Occult Fire (No Vuln)",
						targetType = "Most Clustered Enemy",
						uuid = "e2706396-3fe7-767e-a3e6-15d3144d1c6b",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
					inheritedOverwrites = 
					{
						conditions = 
						{
							
							{
								type = "add",
								value = 
								{
									"80ab686f-c3ab-907f-b320-9a079f92fd11",
									true,
								},
							},
						},
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
						conditions = 
						{
							
							{
								"a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
								true,
							},
							
							{
								"09d2463d-fbb9-bc41-affd-1a796e900b59",
								false,
							},
							
							{
								"6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuDRK3_CD",
						name = "Fallback Dequeue",
						uuid = "06e8f51b-eb9f-0f9e-8809-24b51ec83945",
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
						uuid = "1e7919a1-6e5f-2acd-ac59-94cfa6d99365",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5334,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Red Mage",
						uuid = "a053ee8a-0f3d-e8ec-928f-353a1bba7a96",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "3f8c09fd-599e-e425-935a-4a2e47b26bb7",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "41488e26-0694-059b-bd0c-61b4e51917af",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "09d2463d-fbb9-bc41-affd-1a796e900b59",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "88a0ee56-2ae6-6a84-9cbb-dc57270d5c5c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.ocCombatTimer ~= nil and TimeSince(data.ocCombatTimer) > 2400",
						dequeueIfLuaFalse = true,
						name = "Combat > 2.4s",
						uuid = "34195b16-5994-1b85-bb59-e9f2f302e007",
						version = 3,
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
						uuid = "69db96b4-50c5-b63f-8302-96b4a12c36e6",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Blizzard",
						uuid = "eaf33b66-cfeb-0183-ba40-33027700e29a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Thunder",
						uuid = "b8bba6c4-6253-6d3f-aaf9-ad5b06c59bf8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49092,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Fire/Blizz/Thunder CD <= 3s",
						uuid = "09e738b2-8ab5-5736-ba29-5a36d8384456",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5322,
						name = "Target Fire Weak",
						uuid = "7ae11b51-a023-a1a9-a351-9c4827a33a82",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5323,
						name = "Target Ice Weak",
						uuid = "7bc51f84-db08-eecf-a9ac-eade5b39d44a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5324,
						name = "Target Lightning Weak",
						uuid = "a18d17a7-36b7-b794-8e24-938c04369a92",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.getEntitySpeed(TensorCore.mGetPlayer().id) > 0",
						dequeueIfLuaFalse = true,
						name = "Player moving",
						uuid = "e9b651dc-8d33-d497-9404-f0701a646dcc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Filter",
						conditions = 
						{
							
							{
								"e9b651dc-8d33-d497-9404-f0701a646dcc",
								false,
							},
						},
						dequeueIfLuaFalse = true,
						matchAnyBuff = true,
						name = "F: movement",
						partyTargetNumber = 0,
						uuid = "aacd0685-3c44-ba18-86ef-df2d9f1c8a3b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						name = "Self Moving",
						uuid = "f1fcce61-dd9c-69d0-92e1-cc90b93ebdd5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\" ] or _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\" ] == true",
						dequeueIfLuaFalse = true,
						name = "Is Queued",
						uuid = "6b6b1fde-3d0c-43eb-88ba-0ebf9586a230",
						version = 3,
					},
				},
			},
			name = "P. Red Mage",
			throttleTime = 250,
			timeout = 2.5,
			uuid = "b154c88e-e0cd-2b0c-bdd5-5a5cb8dc7300",
			version = 2,
		},
		inheritedIndex = 55,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 49085,
						conditions = 
						{
							
							{
								"1b713d82-f3fd-a968-9bc3-fd90412b3fc1",
								true,
							},
							
							{
								"a5bec332-6e8c-0651-ba21-336af81c7cb7",
								true,
							},
							
							{
								"63586d37-f376-4257-b580-a343d97ea198",
								true,
							},
							
							{
								"dd920840-15ef-ddcf-88c5-2a66d33c887f",
								true,
							},
							
							{
								"17132334-66c0-fef3-84b4-f9cc99b536d4",
								true,
							},
							
							{
								"aeb0d686-d670-5649-8ee7-978d608939b2",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "285cc345-9ad1-342f-af7f-0cec092afc5b",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 49087,
						conditions = 
						{
							
							{
								"1b713d82-f3fd-a968-9bc3-fd90412b3fc1",
								true,
							},
							
							{
								"a5bec332-6e8c-0651-ba21-336af81c7cb7",
								true,
							},
							
							{
								"63586d37-f376-4257-b580-a343d97ea198",
								true,
							},
							
							{
								"dd920840-15ef-ddcf-88c5-2a66d33c887f",
								true,
							},
							
							{
								"17132334-66c0-fef3-84b4-f9cc99b536d4",
								true,
							},
							
							{
								"aeb0d686-d670-5649-8ee7-978d608939b2",
								true,
							},
							
							{
								"34e8bddc-8f84-e4b5-9064-e70ed61da718",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "e5a7fd30-82e0-d92e-a5af-1cfa54845abe",
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
						uuid = "1b713d82-f3fd-a968-9bc3-fd90412b3fc1",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						buffID = 5333,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is P. Blu mage",
						uuid = "a5bec332-6e8c-0651-ba21-336af81c7cb7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "63586d37-f376-4257-b580-a343d97ea198",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "dd920840-15ef-ddcf-88c5-2a66d33c887f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "In Occult Crescent",
						uuid = "17132334-66c0-fef3-84b4-f9cc99b536d4",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5323,
						name = "Target Ice Weak",
						uuid = "6912b02e-fc58-3a53-9ee7-7786e8411b9c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5322,
						name = "Target Fire Weak",
						uuid = "0467d545-a0a4-9777-8775-5a451efe7204",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5324,
						name = "Target Lightning Weak",
						uuid = "e0b19b63-72b9-92a9-be07-8ace5a33c23a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "aeb0d686-d670-5649-8ee7-978d608939b2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49085,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Aero on cd",
						uuid = "8812f170-324a-9bd8-aaa1-377bcda5c300",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49087,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						uuid = "34e8bddc-8f84-e4b5-9064-e70ed61da718",
						version = 3,
					},
				},
			},
			name = "P. BLU ",
			uuid = "359d3292-46ca-6740-9bd4-5e4e6bfa6acc",
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
						actionID = 49097,
						conditions = 
						{
							
							{
								"20740ce7-cdb3-97bf-9b81-9c410fc83e5c",
								true,
							},
							
							{
								"a51d26c1-7fc1-6540-a3cc-03be8dea15a8",
								true,
							},
							
							{
								"f24daf54-6067-71ab-a584-757a29445a83",
								true,
							},
							
							{
								"62c17b9a-2c02-06c5-b811-941a048134d9",
								true,
							},
							
							{
								"06156a3b-a878-5be8-931b-f77af014d2dc",
								true,
							},
							
							{
								"cdb26cce-0ad5-fffd-b52d-7b0a3b8fc5a7",
								true,
							},
							
							{
								"226548b2-a460-63fe-a1ae-a347ee634c6c",
								true,
							},
							
							{
								"4eefd4f3-8b3d-f524-b53a-fd0b29a1c402",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_Hotbar_SixSidedStar",
						targetType = "Current Target",
						uuid = "ced6f3ef-1c02-46ff-8a81-0dbc5fdd2f56",
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "In Occult Crescent",
						uuid = "20740ce7-cdb3-97bf-9b81-9c410fc83e5c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5335,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Necro",
						uuid = "a51d26c1-7fc1-6540-a3cc-03be8dea15a8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						dequeueIfLuaFalse = true,
						name = "Is Bot Running",
						uuid = "f24daf54-6067-71ab-a584-757a29445a83",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "62c17b9a-2c02-06c5-b811-941a048134d9",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						name = "Self Living",
						uuid = "06156a3b-a878-5be8-931b-f77af014d2dc",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49097,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "On CD",
						uuid = "cdb26cce-0ad5-fffd-b52d-7b0a3b8fc5a7",
						version = 3,
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
						uuid = "226548b2-a460-63fe-a1ae-a347ee634c6c",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionID = 49098,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						uuid = "91035cbb-cb0b-3140-b245-0be25ea084ed",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "4eefd4f3-8b3d-f524-b53a-fd0b29a1c402",
						version = 3,
					},
				},
			},
			name = "P. Necromancer (USE on warrior)",
			uuid = "78a6c2ef-7e57-09cd-b705-562934c6bedc",
			version = 2,
		},
		inheritedIndex = 62,
	},
	
	{
		data = 
		{
			actions = 
			{
				
				{
					data = 
					{
						actionID = 49098,
						conditions = 
						{
							
							{
								"08200ceb-e12f-422c-996e-47fcdd5dc467",
								true,
							},
							
							{
								"10a8596d-b51f-0488-bc9e-80f55d2995cf",
								true,
							},
							
							{
								"3b59fa48-57ef-5088-aebb-bb740a04587b",
								true,
							},
							
							{
								"d41beda5-2a4b-487c-80a9-a29bb94e874d",
								true,
							},
							
							{
								"1cdfbfad-9abd-890b-959c-0a1a7d59d407",
								true,
							},
							
							{
								"779ef1d5-2e1c-6eb4-aba8-5538338ab096",
								true,
							},
							
							{
								"acfab9f6-e13a-546f-8cdd-f508c1da8a2a",
								true,
							},
							
							{
								"4118ed3d-9985-9fed-ba1b-0692f3d87ef3",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "14f615a5-006b-56d2-aefc-3156425b6b23",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 49099,
						conditions = 
						{
							
							{
								"08200ceb-e12f-422c-996e-47fcdd5dc467",
								true,
							},
							
							{
								"10a8596d-b51f-0488-bc9e-80f55d2995cf",
								true,
							},
							
							{
								"3b59fa48-57ef-5088-aebb-bb740a04587b",
								true,
							},
							
							{
								"d41beda5-2a4b-487c-80a9-a29bb94e874d",
								true,
							},
							
							{
								"1cdfbfad-9abd-890b-959c-0a1a7d59d407",
								true,
							},
							
							{
								"49226ef3-e891-e41d-9506-4602c4259620",
								true,
							},
							
							{
								"e9a87634-6087-4465-bbf0-e0c7a8b4e2c4",
								true,
							},
							
							{
								"4118ed3d-9985-9fed-ba1b-0692f3d87ef3",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "b5fa4cd7-7330-7354-878e-f32d9a5a1120",
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						actionID = 49100,
						conditions = 
						{
							
							{
								"08200ceb-e12f-422c-996e-47fcdd5dc467",
								true,
							},
							
							{
								"10a8596d-b51f-0488-bc9e-80f55d2995cf",
								true,
							},
							
							{
								"3b59fa48-57ef-5088-aebb-bb740a04587b",
								true,
							},
							
							{
								"d41beda5-2a4b-487c-80a9-a29bb94e874d",
								true,
							},
							
							{
								"1cdfbfad-9abd-890b-959c-0a1a7d59d407",
								true,
							},
							
							{
								"dd0e530f-6084-ce35-89bf-553e8012c13e",
								true,
							},
							
							{
								"723894dc-b212-6550-a413-ce46a9457bff",
								true,
							},
							
							{
								"4118ed3d-9985-9fed-ba1b-0692f3d87ef3",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						targetType = "Current Target",
						uuid = "5f2f0901-df39-1c03-95da-15664fcbd24d",
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
							1346,
						},
						name = "In Occult Crescent",
						uuid = "08200ceb-e12f-422c-996e-47fcdd5dc467",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 2,
						dequeueIfLuaFalse = true,
						hpValue = 99,
						uuid = "10a8596d-b51f-0488-bc9e-80f55d2995cf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5335,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is Necro",
						uuid = "3b59fa48-57ef-5088-aebb-bb740a04587b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "d41beda5-2a4b-487c-80a9-a29bb94e874d",
						version = 3,
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
						uuid = "1cdfbfad-9abd-890b-959c-0a1a7d59d407",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49098,
						buffCheckType = 2,
						buffID = 4232,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Deep freeze on CD",
						uuid = "779ef1d5-2e1c-6eb4-aba8-5538338ab096",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49099,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Hell wind on cd",
						uuid = "49226ef3-e891-e41d-9506-4602c4259620",
						version = 3,
					},
					inheritedIndex = 7,
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49100,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Chaos Drive on cd",
						uuid = "dd0e530f-6084-ce35-89bf-553e8012c13e",
						version = 3,
					},
					inheritedIndex = 8,
				},
				
				{
					data = 
					{
						buffID = 5324,
						dequeueIfLuaFalse = true,
						name = "Target Lightning Weak",
						uuid = "723894dc-b212-6550-a413-ce46a9457bff",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5323,
						dequeueIfLuaFalse = true,
						name = "Target Ice Weak",
						uuid = "acfab9f6-e13a-546f-8cdd-f508c1da8a2a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5325,
						dequeueIfLuaFalse = true,
						name = "Target Wind Weak",
						uuid = "e9a87634-6087-4465-bbf0-e0c7a8b4e2c4",
						version = 3,
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
						name = "Self Missing Transcendent",
						uuid = "4118ed3d-9985-9fed-ba1b-0692f3d87ef3",
						version = 3,
					},
				},
			},
			enabled = false,
			name = "P. Necromancer (Disabled by def)",
			uuid = "001e8bf0-9e11-b65b-8fc4-327132fb50f2",
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
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
						clusterMinTarget = 0,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								true,
							},
							
							{
								"d89d9a36-ce2b-8495-a04d-0a5bdd112475",
								true,
							},
							
							{
								"3d42f605-8171-63e2-9b6b-3ea6dc26f1aa",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction5",
						gVarValue = 2,
						name = "Stop Cast - Movement",
						targetType = "Most Clustered Enemy",
						uuid = "a2823257-b5f5-3535-896c-015822a25e77",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"85b87344-fdd0-770a-bf60-c7dbd58164f8",
								true,
							},
							
							{
								"1155fc61-31e5-cd70-a00b-9991dc48a34d",
								true,
							},
							
							{
								"74748392-3717-36df-a079-fc75a02dcf22",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								true,
							},
							
							{
								"65c23125-414a-35fc-aa05-29de4729582e",
								true,
							},
							
							{
								"d89d9a36-ce2b-8495-a04d-0a5bdd112475",
								false,
							},
							
							{
								"7f6fb411-f42d-391a-aa0e-da3549b1f675",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction5",
						name = "Occult Flare",
						targetType = "Most Clustered Enemy",
						uuid = "8da363d4-4840-39a3-af43-3c389ed4f3a8",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"ac93c2a5-f3d6-b8d8-9253-e1a5fcbf0119",
								true,
							},
							
							{
								"68ffdc57-38d6-2993-be46-969f767c278d",
								true,
							},
							
							{
								"74748392-3717-36df-a079-fc75a02dcf22",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								true,
							},
							
							{
								"65c23125-414a-35fc-aa05-29de4729582e",
								true,
							},
							
							{
								"d89d9a36-ce2b-8495-a04d-0a5bdd112475",
								false,
							},
							
							{
								"7f6fb411-f42d-391a-aa0e-da3549b1f675",
								true,
							},
							
							{
								"70c6f43f-b954-5fe2-9bab-cdad00513a82",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction1",
						name = "Occult Fire III",
						targetType = "Most Clustered Enemy",
						uuid = "9faf8761-62d7-b561-b503-4da02506936f",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"6bdf3b44-44df-040b-843d-d21c34fb88b2",
								true,
							},
							
							{
								"68ffdc57-38d6-2993-be46-969f767c278d",
								true,
							},
							
							{
								"74748392-3717-36df-a079-fc75a02dcf22",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								true,
							},
							
							{
								"65c23125-414a-35fc-aa05-29de4729582e",
								true,
							},
							
							{
								"d89d9a36-ce2b-8495-a04d-0a5bdd112475",
								false,
							},
							
							{
								"7f6fb411-f42d-391a-aa0e-da3549b1f675",
								true,
							},
							
							{
								"b2d42f2b-3438-a153-b386-ed63324010cd",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction2",
						name = "Occult Blizzard III",
						targetType = "Most Clustered Enemy",
						uuid = "0ced8d07-c5a6-c2ae-a5cf-c84350318918",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"fa12a1b5-576e-c38b-962f-cd36b59c3686",
								true,
							},
							
							{
								"68ffdc57-38d6-2993-be46-969f767c278d",
								true,
							},
							
							{
								"74748392-3717-36df-a079-fc75a02dcf22",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								true,
							},
							
							{
								"65c23125-414a-35fc-aa05-29de4729582e",
								true,
							},
							
							{
								"d89d9a36-ce2b-8495-a04d-0a5bdd112475",
								false,
							},
							
							{
								"7f6fb411-f42d-391a-aa0e-da3549b1f675",
								true,
							},
							
							{
								"f02cb8c6-8caa-a0f8-bf06-93dcd07d6986",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction3",
						name = "Occult Thunder III",
						targetType = "Most Clustered Enemy",
						uuid = "d6b5e0d2-6979-f582-be5f-dd16a09be702",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "ACR",
						clusterMinTarget = 0,
						clusterRadius = 5,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"ac93c2a5-f3d6-b8d8-9253-e1a5fcbf0119",
								true,
							},
							
							{
								"68ffdc57-38d6-2993-be46-969f767c278d",
								true,
							},
							
							{
								"74748392-3717-36df-a079-fc75a02dcf22",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								true,
							},
							
							{
								"65c23125-414a-35fc-aa05-29de4729582e",
								true,
							},
							
							{
								"d89d9a36-ce2b-8495-a04d-0a5bdd112475",
								false,
							},
							
							{
								"7f6fb411-f42d-391a-aa0e-da3549b1f675",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction1",
						name = "Fallback Occult Fire III",
						targetType = "Most Clustered Enemy",
						uuid = "fc646d71-001f-5bc7-9377-aeebc1491ff9",
						variableIsHover = true,
						variableTogglesType = 2,
						version = 2.1,
					},
				},
				
				{
					data = 
					{
						aType = "Lua",
						actionLua = "_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"] = false\n_G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"] = false\nself.used = true",
						clusterMinTarget = 0,
						conditions = 
						{
							
							{
								"9352f316-0b87-58b2-9925-9e52f9eaf999",
								true,
							},
							
							{
								"74748392-3717-36df-a079-fc75a02dcf22",
								true,
							},
							
							{
								"57557896-4ccd-2e37-8814-6c11a09cc2d8",
								false,
							},
							
							{
								"3d42f605-8171-63e2-9b6b-3ea6dc26f1aa",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_Hotbar_DutyAction5",
						gVarValue = 2,
						name = "Fallback Deactivate",
						targetType = "Most Clustered Enemy",
						uuid = "67c5d075-39c7-011d-bcf9-6d966fdc7af9",
						variableIsHover = true,
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
						buffID = 5330,
						category = "Self",
						dequeueIfLuaFalse = true,
						name = "Is BLM",
						uuid = "9352f316-0b87-58b2-9925-9e52f9eaf999",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,31):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Occult Fire III",
						uuid = "ac93c2a5-f3d6-b8d8-9253-e1a5fcbf0119",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,32):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Occult Blizzard III",
						uuid = "6bdf3b44-44df-040b-843d-d21c34fb88b2",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,33):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Occult Thunder III",
						uuid = "fa12a1b5-576e-c38b-962f-cd36b59c3686",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,34):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Occult Toad",
						uuid = "52e5a69a-024c-45f9-a6cd-bb49d85f9a37",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return ActionList:Get(5,35):CanCastResult() ~= 579",
						dequeueIfLuaFalse = true,
						name = "Has Occult Flare",
						uuid = "85b87344-fdd0-770a-bf60-c7dbd58164f8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49072,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Fire/Blizzard/Thunder CD <= 3s",
						uuid = "68ffdc57-38d6-2993-be46-969f767c278d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						actionCDValue = 3,
						actionID = 49076,
						category = "Self",
						comparator = 2,
						conditionType = 4,
						dequeueIfLuaFalse = true,
						name = "Occult Flare CD <= 3s",
						uuid = "1155fc61-31e5-cd70-a00b-9991dc48a34d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning",
						dequeueIfLuaFalse = true,
						name = "Bot Running",
						uuid = "74748392-3717-36df-a079-fc75a02dcf22",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 7,
						dequeueIfLuaFalse = true,
						uuid = "57557896-4ccd-2e37-8814-6c11a09cc2d8",
						version = 3,
					},
				},
				
				{
					data = 
					{
						conditionType = 5,
						dequeueIfLuaFalse = true,
						uuid = "65c23125-414a-35fc-aa05-29de4729582e",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return TensorCore.mGetPlayer():IsMoving()",
						dequeueIfLuaFalse = true,
						name = "Player Moving",
						uuid = "d89d9a36-ce2b-8495-a04d-0a5bdd112475",
						version = 3,
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
						uuid = "7f6fb411-f42d-391a-aa0e-da3549b1f675",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction1\"]\nor _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction2\"]\nor _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction3\"]\nor _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction4\"]\nor _G[\"ACR_\" .. gACRSelectedProfiles[TensorCore.mGetPlayer().job] .. \"_Hotbar_DutyAction5\"]",
						dequeueIfLuaFalse = true,
						name = "Is Cast queued",
						uuid = "3d42f605-8171-63e2-9b6b-3ea6dc26f1aa",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5322,
						dequeueIfLuaFalse = true,
						name = "Target - Fire Weak",
						uuid = "70c6f43f-b954-5fe2-9bab-cdad00513a82",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5323,
						dequeueIfLuaFalse = true,
						name = "Target - Ice Weak",
						uuid = "b2d42f2b-3438-a153-b386-ed63324010cd",
						version = 3,
					},
				},
				
				{
					data = 
					{
						buffID = 5324,
						dequeueIfLuaFalse = true,
						name = "Target - Lightning Weak",
						uuid = "f02cb8c6-8caa-a0f8-bf06-93dcd07d6986",
						version = 3,
					},
				},
			},
			name = "P. BLM",
			throttleTime = 100,
			timeout = 2.75,
			uuid = "caa3b091-3ad6-f0cd-a769-4a79b53f5634",
			version = 2,
		},
		inheritedIndex = 60,
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
		inheritedIndex = 79,
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
						actionLua = "-- Version 1.0\nOCElementalWeakness = {}\n\nOCElementalWeakness.FireTable = {[13741]=true,[13871]=true,[13874]=true,[13875]=true,[13877]=true,[13878]=true,[13884]=true,[13886]=true,[13887]=true,[13890]=true,[13893]=true,[13894]=true,[13895]=true,[13900]=true,[13911]=true,[13919]=true,[13925]=true,[13926]=true,[13931]=true,[13932]=true,[13941]=true,[14491]=true,[14518]=true,[14520]=true,[14714]=true,[14717]=true,[14726]=true,[14735]=true,[14738]=true,[14762]=true,[14765]=true,[14771]=true,[14776]=true,[14785]=true,[14787]=true,[14789]=true,[14790]=true,[14860]=true,[14861]=true,[14862]=true,[14865]=true,[14866]=true,[14869]=true,[14870]=true,[14871]=true,[14878]=true,[14880]=true,[14882]=true,[14885]=true,[14886]=true,[14887]=true,[14888]=true,[14892]=true,[14893]=true,[14894]=true,[14909]=true,[14913]=true,[14915]=true,[14916]=true,[14919]=true,[14929]=true,[14931]=true}\nOCElementalWeakness.IceTable = {[13819]=true,[13873]=true,[13880]=true,[13882]=true,[13885]=true,[13888]=true,[13896]=true,[13897]=true,[13902]=true,[13904]=true,[13907]=true,[13908]=true,[13909]=true,[13914]=true,[13916]=true,[13918]=true,[13920]=true,[13930]=true,[13938]=true,[13939]=true,[14503]=true,[14523]=true,[14719]=true,[14736]=true,[14772]=true,[14791]=true,[14805]=true,[14840]=true,[14841]=true,[14863]=true,[14867]=true,[14869]=true,[14875]=true,[14879]=true,[14881]=true,[14883]=true,[14889]=true,[14895]=true,[14897]=true,[14898]=true,[14902]=true,[14906]=true,[14908]=true,[14914]=true,[14920]=true,[14932]=true}\nOCElementalWeakness.LightningTable = {[13636]=true,[13637]=true,[13702]=true,[13726]=true,[13728]=true,[13729]=true,[13809]=true,[13814]=true,[13815]=true,[13876]=true,[13879]=true,[13881]=true,[13883]=true,[13891]=true,[13903]=true,[13912]=true,[13913]=true,[13915]=true,[13917]=true,[13924]=true,[13928]=true,[13929]=true,[13933]=true,[13934]=true,[13936]=true,[13937]=true,[13942]=true,[14505]=true,[14508]=true,[14509]=true,[14728]=true,[14764]=true,[14774]=true,[14775]=true,[14795]=true,[14799]=true,[14800]=true,[14802]=true,[14804]=true,[14806]=true,[14809]=true,[14817]=true,[14820]=true,[14857]=true,[14858]=true,[14859]=true,[14868]=true,[14874]=true,[14875]=true,[14876]=true,[14877]=true,[14890]=true,[14891]=true,[14900]=true,[14901]=true,[14905]=true,[14922]=true}\nOCElementalWeakness.WindTable = {[13739]=true,[13855]=true,[13856]=true,[13872]=true,[13892]=true,[13898]=true,[13899]=true,[13901]=true,[13905]=true,[13910]=true,[13921]=true,[13922]=true,[13923]=true,[13935]=true,[13940]=true,[14490]=true,[14511]=true,[14512]=true,[14517]=true,[14717]=true,[14764]=true,[14767]=true,[14801]=true,[14864]=true,[14872]=true,[14873]=true,[14878]=true,[14883]=true,[14884]=true,[14896]=true,[14899]=true,[14903]=true,[14904]=true,[14907]=true,[14908]=true,[14910]=true,[14911]=true,[14912]=true,[14917]=true,[14918]=true,[14921]=true,[14923]=true,[14930]=true}\n\nlocal WeaknessLookup = {\n    {table = OCElementalWeakness.FireTable,      element = \"Fire\"},\n    {table = OCElementalWeakness.IceTable,       element = \"Ice\"},\n    {table = OCElementalWeakness.LightningTable, element = \"Lightning\"},\n    {table = OCElementalWeakness.WindTable,      element = \"Wind\"},\n}\n\n\nlocal function entityIsInTable(entity, weaknessTable)\n    if not entity then return false end\n    return weaknessTable[entity.contentid] == true\nend\n\nfunction OCElementalWeakness.returnWeakness(entityid)\n    local isWeak = false\n    local element1 = nil\n    local element2 = nil\n    local entity = TensorCore.mGetEntity(entityid)\n\n    if not entity then return isWeak, element1, element2 end\n\n    for _, entry in ipairs(WeaknessLookup) do\n        if entry.table[entity.contentid] then\n            isWeak = true\n            if element1 == nil then\n                element1 = entry.element\n            else\n                element2 = entry.element\n            end\n        end\n    end\n\n    return isWeak, element1, element2\nend\n\nfunction OCElementalWeakness.returnTargetWeakness()\n    local isWeak = false\n    local element1 = nil\n    local element2 = nil\n    local entity = TensorCore.mGetTarget()\n\n    if not entity then return isWeak, element1, element2 end\n\n    for _, entry in ipairs(WeaknessLookup) do\n        if entry.table[entity.contentid] then\n            isWeak = true\n            if element1 == nil then\n                element1 = entry.element\n            else\n                element2 = entry.element\n            end\n        end\n    end\n\n    return isWeak, element1, element2\nend\n\nfunction OCElementalWeakness.hasFireWeakness(entityid)\n    local entity = TensorCore.mGetEntity(entityid)\n    if entity == nil then return false end\n    return entityIsInTable(entity, OCElementalWeakness.FireTable)\nend\n\nfunction OCElementalWeakness.hasFireWeaknessTarget()\n    local target = TensorCore.mGetTarget()\n    if target == nil then return false end\n    return entityIsInTable(target, OCElementalWeakness.FireTable)\nend\n\nfunction OCElementalWeakness.hasIceWeakness(entityid)\n    local entity = TensorCore.mGetEntity(entityid)\n    if entity == nil then return false end\n    return entityIsInTable(entity, OCElementalWeakness.IceTable)\nend\n\nfunction OCElementalWeakness.hasIceWeaknessTarget()\n    local target = TensorCore.mGetTarget()\n    if target == nil then return false end\n    return entityIsInTable(target, OCElementalWeakness.IceTable)\nend\n\nfunction OCElementalWeakness.hasLightningWeakness(entityid)\n    local entity = TensorCore.mGetEntity(entityid)\n    if entity == nil then return false end\n    return entityIsInTable(entity, OCElementalWeakness.LightningTable)\nend\n\nfunction OCElementalWeakness.hasLightningWeaknessTarget()\n    local target = TensorCore.mGetTarget()\n    if target == nil then return false end\n    return entityIsInTable(target, OCElementalWeakness.LightningTable)\nend\n\nfunction OCElementalWeakness.hasWindWeakness(entityid)\n    local entity = TensorCore.mGetEntity(entityid)\n    if entity == nil then return false end\n    return entityIsInTable(entity, OCElementalWeakness.WindTable)\nend\n\nfunction OCElementalWeakness.hasWindWeaknessTarget()\n    local target = TensorCore.mGetTarget()\n    if target == nil then return false end\n    return entityIsInTable(target, OCElementalWeakness.WindTable)\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"a097f95b-d712-26bb-bc3c-67e7d96a3d54",
								true,
							},
							
							{
								"a9e10e6e-ef84-7cd4-a7d7-87aa1d246d21",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "171ad113-405d-9cc2-a0c3-98ef6411eff2",
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
							1346,
						},
						name = "Occult Crescent",
						uuid = "a097f95b-d712-26bb-bc3c-67e7d96a3d54",
						version = 3,
					},
					inheritedIndex = 1,
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return OCElementalWeakness == nil",
						dequeueIfLuaFalse = true,
						name = "Is Loaded",
						uuid = "a9e10e6e-ef84-7cd4-a7d7-87aa1d246d21",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return true",
						name = "Version 1.0",
						uuid = "ccbb38f1-0010-7282-8939-ac5c809936e9",
						version = 3,
					},
				},
			},
			eventType = 12,
			name = "[Misc] Elemental Weakness Funcs",
			throttleTime = 1000,
			uuid = "c7932cb2-aedb-9f4c-8d8b-c5f9c3b85e62",
			version = 2,
		},
		inheritedIndex = 58,
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
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1252,
							1346,
						},
						localmapid = 1252,
						uuid = "6cdcc0ad-fa02-e3af-97af-f926c182182f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.dedoArrowTime == nil or TimeSince(data.dedoArrowTime) > 1000",
						uuid = "c7b2860b-8289-7795-a478-9d3865187c43",
						version = 3,
					},
				},
			},
			eventType = 12,
			name = "Arrow objects",
			uuid = "6d0328b9-df88-b08a-a5f2-c23e5dd03dd9",
			version = 2,
		},
		inheritedIndex = 68,
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
						actionLua = "MoogleTelegraphs.Settings.aoeIDUserBlacklist[47308] = {label = \"Knowledge Level 5 Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47309] = {label = \"Knowledge Level 3 Flare\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47311] = {label = \"Knowledge Level 5 Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47312] = {label = \"Knowledge Level 3 Flare\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47313] = {label = \"Knowledge Level 4 Holy\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47314] = {label = \"Prime Knowledge Level Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50554] = {label = \"Knowledge Level 5 Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50555] = {label = \"Knowledge Level 3 Flare\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50557] = {label = \"Knowledge Level 5 Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50558] = {label = \"Knowledge Level 3 Flare\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50559] = {label = \"Knowledge Level 4 Holy\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50560] = {label = \"Prime Knowledge Level Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50561] = {label = \"Prime Knowledge Level Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[41284] = {label = \"Ancient Holy\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[41395] = {label = \"Ancient Holy\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[41315] = {label = \"Lethal Nails\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[41316] = {label = \"Lethal Nails\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[41317] = {label = \"Lethal Nails\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[41830] = {label = \"Barefisted Death\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47073] = {label = \"Garrote\", source = \"Occult Reactions - Double Trouble CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47152] = {label = \"Sinister Sight\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47191] = {label = \"Stunning Sheen\", source = \"Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[49879] = {label = \"Prime Knowledge Level Death\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserSetCones[50691] = {name=\"Dual Cut\",angle=180,source=\"Occult Crescent Reactions - Double Trouble CE\"}\nMoogleTelegraphs.Settings.aoeIDUserSetCones[50692] = {name=\"Dual Cut\",angle=180,source=\"Occult Crescent Reactions - Double Trouble CE\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41759] = {name=\"Crystallized Chaos\",radius=7,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41760] = {name=\"Crystallized Chaos\",radius=13,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41761] = {name=\"Crystallized Chaos\",radius=19,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41729] = {name=\"Crystallized Chaos\",radius=7,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41731] = {name=\"Crystallized Chaos\",radius=19,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41733] = {name=\"Crystallized Chaos\",radius=7,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41734] = {name=\"Crystallized Chaos\",radius=13,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserSetDonuts[41735] = {name=\"Crystallized Chaos\",radius=19,source=\"CE: Trial by Claw Occult Reactions\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47310] = {label = \"Knowledge Level 4 Holy\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[50556] = {label = \"Knowledge Level 4 Holy\", source = \"Occult Reactions - Folios CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[47439] = { label = 'Tendon Ripper', source = 'North Horn Reactions - Abductor' }\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[49799] = {label = \"Plaincracker\", source = \"Occult Reactions - Appaling Behavior CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[49779] = {label = \"Bad Breath\", source = \"Occult Reactions - Appaling Behavior CE\"}\nMoogleTelegraphs.Settings.aoeIDUserBlacklist[49777] = {label = \"Bad Breath\", source = \"Occult Reactions - Appaling Behavior CE\"}\nself.used = true",
						conditions = 
						{
							
							{
								"07fa8a6f-9963-dc2a-b0a3-3d17971ac0a4",
								true,
							},
						},
						endIfUsed = true,
						gVar = "ACR_RikuMNK3_CD",
						uuid = "c8a70073-5277-c09f-9529-db7c9ea85b0a",
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
							1346,
						},
						localmapid = 1252,
						name = "South Horn",
						uuid = "07fa8a6f-9963-dc2a-b0a3-3d17971ac0a4",
						version = 3,
					},
				},
			},
			eventType = 11,
			name = "Blacklist+draws moogle (enable this)",
			uuid = "0c591123-b2c0-d2e0-aca9-9e17cf24d43e",
			version = 2,
		},
		inheritedIndex = 65,
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
						actionLua = "local currentWeather = GetCurrentWeather()\n\nif GlobalCurrentWeather == nil or GlobalCurrentWeather ~= currentWeather then\n    GlobalCurrentWeather = currentWeather\n    if currentWeather == 192 then\n       TensorCore.showRaidWarning(\"Weather for Forked Tower spawned!\", 0, 15)\n\t   TensorCore.sendParsedChatMessage(\"/e {color:228,208,10}[Occult Crescent Notification]{color:255,255,255} Weather for forked tower spawned!\")\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"4b9ce06b-2e8a-4bb6-aef8-63b65ecbe699",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Weather Shotcall",
						uuid = "e25652c9-033a-4802-8191-96fe1fc4ed69",
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
								"4b9ce06b-2e8a-4bb6-aef8-63b65ecbe699",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "empty reaction for throttle",
						uuid = "ed9f9916-a111-4703-8ea8-2ee55de2e3a0",
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
						localmapid = 1346,
						name = "North Horn",
						uuid = "4b9ce06b-2e8a-4bb6-aef8-63b65ecbe699",
						version = 3,
					},
				},
			},
			enabled = false,
			name = "[OC] Weather Text Shotcall",
			throttleTime = 5000,
			uuid = "5dc65816-0d2a-4fd3-9218-ad0eb935e372",
			version = 2,
		},
		inheritedIndex = 68,
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
						actionLua = "local currentWeather = GetCurrentWeather()\n\nif GlobalCurrentWeather == nil or GlobalCurrentWeather ~= currentWeather then\n    GlobalCurrentWeather = currentWeather\n    if currentWeather == 192 then\n        AnyoneCore.Shotcall(\"Weather for Forked Tower spawned.\", false, 8, true)\n        TensorCore.sendParsedChatMessage(\"/e {color:228,208,10}[Occult Crescent Notification]{color:255,255,255} Weather for forked tower spawned! <se.9>\")\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"bcca0f60-82e7-833b-ad3e-08fe2b194132",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Weather Shotcall",
						uuid = "e907fad8-1f1d-e527-921c-763fe3fb1e6e",
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
								"bcca0f60-82e7-833b-ad3e-08fe2b194132",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "empty reaction for throttle",
						uuid = "67d56c9c-13f2-7092-ac36-25425bedd3e4",
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
						localmapid = 1346,
						name = "North Horn",
						uuid = "bcca0f60-82e7-833b-ad3e-08fe2b194132",
						version = 3,
					},
				},
			},
			name = "[OC] Weather sound shotcall",
			throttleTime = 5000,
			uuid = "9ba5faa6-7acc-ce33-8f9a-0e4357579a21",
			version = 2,
		},
		inheritedIndex = 67,
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
						actionLua = "local id = eventArgs.entityID\nlocal e = TensorCore.mGetEntity(id)\n\nlocal gaze = {\n    id          = id,\n    addedAt     = Now(),\n    channelTime = (eventArgs.channelTimeMax + .25 ) * 1000,\n    pos         = e.pos,\n}\n\nif data.gaze1 == nil then\n    data.gaze1 = gaze\nelseif data.gaze2 == nil then\n    data.gaze2 = gaze\nelseif data.gaze1.addedAt <= data.gaze2.addedAt then\n    data.gaze1 = gaze\nelse\n    data.gaze2 = gaze\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"580991dc-6fa1-8a65-a6ab-73874302a058",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "2be71a66-6f6f-9645-991c-6b5ef5206778",
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
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "Occult Crescent",
						uuid = "8585bf26-81c3-8633-a4a7-6fa2ea58a7b5",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47152,
						name = "Gaze Channels",
						spellIDList = 
						{
							47152,
							47148,
							47191,
						},
						uuid = "580991dc-6fa1-8a65-a6ab-73874302a058",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[Extra] Gaze Tracker",
			uuid = "ef41ca3b-b8b3-b055-9750-acd44ba586ba",
			version = 2,
		},
		inheritedIndex = 63,
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
						actionLua = "local g1, g2 = data.gaze1, data.gaze2\n\nif g1 ~= nil and TimeSince(g1.addedAt) >= g1.channelTime then\n    data.gaze1, g1 = nil, nil\nend\nif g2 ~= nil and TimeSince(g2.addedAt) >= g2.channelTime then\n    data.gaze2, g2 = nil, nil\nend\n\nif g1 == nil and g2 == nil then\n    -- nothing live -- release the lock, but only if we were the one holding it\n    if data.gazeLocked then\n        TensorCore.API.TensorACR.toggleLockFace(false)\n        data.gazeLocked = nil\n    end\nelse\n    local h\n    local p = TensorCore.mGetPlayer()\n   \n\n    if g1 ~= nil and g2 ~= nil then\n        h = TensorCore.Avoidance.getHeadingBetweenPos(p.pos, TensorCore.mGetEntity(g1.id).pos, TensorCore.mGetEntity(g2.id).pos)\n    elseif g1 ~= nil then\n        h = TensorCore.getHeadingToTarget(p.pos, TensorCore.mGetEntity(g1.id).pos)\n    elseif g2 ~= nil then\n        h = TensorCore.getHeadingToTarget(p.pos, TensorCore.mGetEntity(g2.id).pos)\n\tend\n\n    h = h + math.pi\n    TensorCore.API.TensorACR.setLockFaceHeading(h)\n\n    if not data.gazeLocked then\n        TensorCore.API.TensorACR.toggleLockFace(true)\n        data.gazeLocked = true\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"82688da5-fbc1-d9ce-8558-f22096750a4b",
								true,
							},
							
							{
								"c466a5b4-da07-b94c-8d31-302e253a99d0",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "5e58978f-57b2-7b38-8327-6269b5b4be39",
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
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "Occult Crescent",
						uuid = "82688da5-fbc1-d9ce-8558-f22096750a4b",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return FFXIV_Common_BotRunning == true",
						name = "Bot Running",
						uuid = "c466a5b4-da07-b94c-8d31-302e253a99d0",
						version = 3,
					},
				},
			},
			eventType = 12,
			name = "[Extra] Gaze Resolver",
			uuid = "eb4b56b6-2b74-6468-8fba-53017fc139c8",
			version = 2,
		},
		inheritedIndex = 64,
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
						actionLua = "-- Gaze Tracker display  (companion to the channel-event tracker)\n-- Reads the shared globals: data.gaze1 / data.gaze2\nlocal GUI_FLAGS = 97\n\n-- ── tuning ──────────────────────────────────────────────────────────\nlocal WARN_MS   = 2000    -- remaining <= this -> yellow\nlocal DANGER_MS = 750     -- remaining <= this -> red\n-- ────────────────────────────────────────────────────────────────────\n\nif data.gazeAutoClear == nil then data.gazeAutoClear = true end\n\nlocal function fmtPos(p)\n    if p == nil then return \"n/a\" end\n    return string.format(\"%.1f, %.1f, %.1f\", p.x or 0, p.y or 0, p.z or 0)\nend\n\n-- entity may have despawned since it was captured, so guard the lookup\nlocal function liveEntity(id)\n    local ok, e = pcall(TensorCore.mGetEntity, id)\n    if ok then return e end\n    return nil\nend\n\nlocal function drawSlot(label, g)\n    GUI:TextColored(0.55, 0.55, 0.55, 1.0, label)\n\n    if g == nil then\n        GUI:Text(\"   -- empty --\")\n        return nil\n    end\n\n    local remaining = (g.addedAt + g.channelTime) - Now()\n    if remaining < 0 then remaining = 0 end\n\n    local r, gr, b = 0.3, 1.0, 0.4\n    if remaining <= DANGER_MS then\n        r, gr, b = 1.0, 0.25, 0.25\n    elseif remaining <= WARN_MS then\n        r, gr, b = 1.0, 0.85, 0.2\n    end\n\n    local e    = liveEntity(g.id)\n    local name = (e and e.name) or \"?\"\n\n    GUI:Text(string.format(\"   %s  (id %d)\", tostring(name), g.id))\n    GUI:TextColored(r, gr, b, 1.0,\n        string.format(\"   %.2fs left  /  %.2fs total\",\n            remaining / 1000, g.channelTime / 1000))\n    GUI:Text(\"   spawn pos: \" .. fmtPos(g.pos))\n    if e and e.pos then\n        GUI:Text(\"   live  pos: \" .. fmtPos(e.pos))\n    else\n        GUI:TextColored(0.8, 0.5, 0.5, 1.0, \"   live  pos: entity gone\")\n    end\n\n    return remaining\nend\n\nGUI:Begin(\"GazeTracker#Cherry\", true, GUI_FLAGS)\n\nGUI:SetWindowFontSize(1.25)\nGUI:TextColored(0, 1, 1, 1.0, \"Gaze Tracker\")\nGUI:SetWindowFontSize(1.0)\n\nlocal rem1 = drawSlot(\"Gaze 1\", data.gaze1)\nGUI:Separator()\nlocal rem2 = drawSlot(\"Gaze 2\", data.gaze2)\nGUI:Separator()\n\ndata.gazeAutoClear = GUI:Checkbox(\"Auto-clear expired\", data.gazeAutoClear)\nif GUI:Button(\"Clear both\") then\n    data.gaze1 = nil\n    data.gaze2 = nil\nend\n\nif data.gazeAutoClear then\n    if rem1 ~= nil and rem1 <= 0 then data.gaze1 = nil end\n    if rem2 ~= nil and rem2 <= 0 then data.gaze2 = nil end\nend\n\nGUI:End()\nself.used = true",
						conditions = 
						{
							
							{
								"054370dc-acb1-d5a6-bf38-116bddca4aae",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "dc89f476-dba2-4fde-9e93-74c9f1654c5c",
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
						localMapIDList = 
						{
							1252,
							1346,
						},
						name = "Occult Crescent",
						uuid = "054370dc-acb1-d5a6-bf38-116bddca4aae",
						version = 3,
					},
				},
			},
			eventType = 12,
			name = "[Extra] Gaze Display",
			uuid = "ccc078bf-d8c3-16bf-a777-ce9c90a5be43",
			version = 2,
		},
		inheritedIndex = 65,
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
						actionLua = "local green,yellow,red,blue = 1677786914,1677787134,1677721855,1694449152\n\ndata.dedoTargetNames = data.dedoTargetNames or {\n    -- Non-treasure objects you want to track.\n    -- Treasure objects are detected by ent.type == 4.\n\n    [\"survey point\"] = yellow,\n    [\"2010139\"] = {color = red, forceVisible = true}, -- Carrots\n    -- [\"Random Test Name\"] = blue,\n\n    -- You can also use any U32 color value from Anyone's Dev Monitor.\n}\n\ndata.dedoArrowEnts = data.dedoArrowEnts or {}\ndata.dedoArrowTime = Now()\ntable.clear(data.dedoArrowEnts)\n\nfor id, ent in pairs(TensorCore.entityList(\"\")) do\n    local targetConfig\n\n    -- Track all treasure objects by type.\n    if ent.type == 4 then\n        targetConfig = green\n    else\n        -- All other tracked objects still use name/contentid matching.\n        local lowerName = string.lower(ent.name)\n        targetConfig = data.dedoTargetNames[lowerName] or data.dedoTargetNames[tostring(ent.contentid)]\n    end\n\n    if targetConfig then\n        local color, forceVisible\n\n        if type(targetConfig) == \"table\" then\n            color = targetConfig.color\n            forceVisible = targetConfig.forceVisible or false\n        else\n            color = targetConfig\n            forceVisible = false\n        end\n\n        local dist = TensorCore.getDistance2d(TensorCore.mGetPlayer().pos, ent.pos)\n\n        if dist > 5 then\n            data.dedoArrowEnts[id] = {\n                name = ent.name,\n                pos = ent.pos,\n                color = color,\n                dist = dist,\n            }\n        end\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"2daac994-6b45-bc9f-a201-75cf47112acf",
								true,
							},
							
							{
								"76cf4cc7-0310-8b22-89b8-9ca4d11dfd4c",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Modify List",
						uuid = "cd63cd05-6492-be10-a239-d2c45dd18bfa",
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
								"2daac994-6b45-bc9f-a201-75cf47112acf",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						uuid = "b8f1e279-9905-2a5c-9953-de97dcb3a596",
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
							1346,
						},
						localmapid = 1252,
						uuid = "2daac994-6b45-bc9f-a201-75cf47112acf",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.dedoArrowTime == nil or TimeSince(data.dedoArrowTime) > 1000",
						uuid = "76cf4cc7-0310-8b22-89b8-9ca4d11dfd4c",
						version = 3,
					},
				},
			},
			enabled = false,
			eventType = 12,
			name = "Arrow objects",
			uuid = "b4dea9fb-caa4-148e-9ae8-92c5564e94af",
			version = 2,
		},
		inheritedIndex = 66,
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
			name = "-- Occulant Crescent",
			uuid = "7affaeba-16a3-388a-9c7a-193cccdb0287",
			version = 2,
		},
		inheritedIndex = 69,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			eventType = 18,
			name = "[RepairedLion] Orb AoE",
			uuid = "063b86b6-c420-08c8-b4d6-9f5efd9b1e6a",
			version = 2,
		},
		inheritedIndex = 84,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[NeoGarula] Rushing Rumble Cast",
			throttleTime = 250,
			uuid = "9221989a-79a6-6bde-834c-88fc67082d1c",
			version = 2,
		},
		inheritedIndex = 85,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.a2 == 4 and eventArgs.a3 == 8 and eventArgs.a4 == 0\n\n",
						dequeueIfLuaFalse = true,
						uuid = "92a83f85-62aa-4c5d-9041-216f3cffad2d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.deathclawCones == nil or table.size(data.deathclawCones) < 2",
						uuid = "3101f3ac-f676-087b-a530-94ebe04426dc",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs.entityContentID == 13812 and eventArgs.oldActiveAura1 == 2428 and eventArgs.newActiveAura1 == 2429",
						dequeueIfLuaFalse = true,
						uuid = "550e20d9-f13d-9dc3-89be-04cde5829013",
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						version = 3,
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
						actionLua = "local golems = TensorCore.entityList(\"contentid=14510\")\nlocal drawer = TensorCore.getMoogleDrawer()\n\nif golems then\n    for _, ent in pairs(golems) do\n        if Argus.isEntityVisible(ent) then\n            local heading = ent.pos.h or 0\n            local radius = 35\n            local angle = math.rad(90)\n\n            drawer:addCone(ent.pos.x, ent.pos.y, ent.pos.z, radius, angle, heading)\n        end\n    end\nend\nself.used = true",
						conditions = 
						{
							
							{
								"774eac16-bb4e-24df-8a8c-8473fb20d9ca",
								true,
							},
							
							{
								"feb6418a-08ec-14c4-abaf-322a531c4a40",
								true,
							},
							
							{
								"439ef45f-289c-0ed2-bf31-25624bd1e31a",
								true,
							},
						},
						gVar = "ACR_RikuSGE3_CD",
						name = "draw cone on golem",
						uuid = "33279f1c-79c5-4430-a39f-2832e4e9474a",
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
						conditionLua = "local player = TensorCore.mGetPlayer()\nreturn TensorCore.getDistance2d(player.pos, { h = 0, x = -518.5, y = 48, z = -641.5 }) < 33.5",
						dequeueIfLuaFalse = true,
						name = "check arena",
						uuid = "774eac16-bb4e-24df-8a8c-8473fb20d9ca",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local el = TensorCore.entityList(\"contentid=14510\")\nif el then\n    for _, ent in pairs(el) do\n        if Argus.isEntityVisible(ent) then\n            return true\n        end\n    end\nend\nreturn false",
						dequeueIfLuaFalse = true,
						name = "check golem visibility",
						uuid = "feb6418a-08ec-14c4-abaf-322a531c4a40",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Self",
						conditionType = 12,
						dequeueIfLuaFalse = true,
						localMapIDList = 
						{
							1346,
							1252,
						},
						localmapid = 1252,
						name = "In OC",
						uuid = "439ef45f-289c-0ed2-bf31-25624bd1e31a",
						version = 3,
					},
				},
			},
			eventType = 12,
			name = "[QuarriedAway] Draw Golem Cone",
			uuid = "0ea5ceab-d365-3875-a292-b1cf6abe1cc3",
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
						actionLua = "-- A list of the data variables:\n-- data.ocCombatTimer: Combat Timer. Used to determine if there are 2 or 3 entities (first cast <40s if always 2 entities)\n-- data.ocLevel: The player's new adjusted level with the buffs. This is cached so we only call it once instead of 3 times for performance\n-- data.ocFoliosCache: a Now() to determine how long ago we cached buff levels\n-- data.ocPrimes: Prime numbers from 20-45\n\nlocal angle = math.rad(120)\nlocal arenapos = { x = 659, y = 132, z = 659 }\nlocal id = eventArgs.spellID\nlocal entity = TensorCore.mGetEntity(eventArgs.entityID)\nlocal currentLevel = data.ocLevel\n\nlocal function calculateLevel()\n\tlocal _, _, _, effectiveKnowledgeLevel = TensorCore.getOccultCrescentInfo()\n\tdata.ocLevel = effectiveKnowledgeLevel\n\tdata.ocFoliosCache = Now()\nend\n\nif (data.ocLevel == nil or data.ocFoliosCache == nil) or TimeSince(data.ocFoliosCache) > 5000 then\n\tcalculateLevel()\nend\n\nif (data.ocCombatTimer ~= nil) then\n\tif TimeSince(data.ocCombatTimer) < 40000 then angle = math.pi end\nelse\n\tif TensorReactions_CurrentTimer < 40 then angle = math.pi end\nend\n\nlocal primes = data.ocPrimes\nif (primes == nil) then\n\tprimes = { [23] = true, [29] = true, [31] = true, [37] = true, [41] = true, [43] = true }\n\tdata.ocPrimes = primes\nend\n\n-- Unsafe books checks\nlocal function drawUnsafe(ent)\n\tlocal h = TensorCore.getHeadingToTarget(arenapos, ent.pos)\n\tlocal red = TensorCore.getStaticFlatDrawer(2818572543)\n\tlocal size = 25\n\tred:addTimedCone(10700, arenapos.x, arenapos.y + 0.05, arenapos.z, size, angle, h)\nend\n\nlocal lvl = data.ocLevel\nlocal unsafe = false\n\nif (id == 47317) then      -- Page 8: Knowledge Level 4 Holy\n\tunsafe = (lvl % 4 == 0)\nelseif (id == 47316) then  -- Page 16: Knowledge Level 3 Flare\n\tunsafe = (lvl % 3 == 0)\nelseif (id == 47315) then  -- Page 64: Knowledge Level 5 Death\n\tunsafe = (lvl % 5 == 0)\nelseif (id == 47318) then  -- Page 512: Prime Knowledge Level Death\n\tunsafe = primes[lvl] == true\nend\n\nif (unsafe) then drawUnsafe(entity) end\n\nself.used = true",
						conditions = 
						{
							
							{
								"629912c2-8b53-4871-bd8f-2b4fc518cfbb",
								true,
							},
							
							{
								"87155c2c-0862-9d65-aa3c-a42fbdf1bf15",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						uuid = "64b07f6d-06c8-ded2-a0a4-709139e41524",
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
						localmapid = 1346,
						name = "In North Horn",
						uuid = "629912c2-8b53-4871-bd8f-2b4fc518cfbb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Channels",
						spellIDList = 
						{
							47315,
							47316,
							47317,
							47318,
						},
						uuid = "87155c2c-0862-9d65-aa3c-a42fbdf1bf15",
						version = 3,
					},
				},
			},
			eventType = 3,
			name = "[Forbidden Folios] Draws",
			uuid = "9836e89a-9906-e9ba-8aa9-4739b26436b3",
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
						actionLua = "local entityID = eventArgs.entityID\nlocal wind = TensorCore.mGetEntity(entityID)\nif not wind or not wind.pos then return end\ndata.northHornBitingWindStars = data.northHornBitingWindStars or {}\n\nlocal old = data.northHornBitingWindStars[entityID]\nif old then\n\tfor _, uuid in ipairs(old) do Argus.deleteTimedShape(uuid) end\nend\n\n-- Tendon Ripper is two 60x8 crosses offset by 45 degrees.  Absolute heading\n-- keeps the eight-pointed star aligned with the logged world-space AOEs while\n-- OnEnt follows the marked wind as it finishes moving into position.\nlocal drawer = TensorCore.getMoogleDrawer()\nif not drawer then return end\ndata.northHornBitingWindStars[entityID] = {\n\tdrawer:addTimedCrossOnEnt(5200, entityID, 60, 8, nil, nil, nil, nil, 0, true),\n\tdrawer:addTimedCrossOnEnt(5200, entityID, 60, 8, nil, nil, nil, nil, math.pi / 4, true),\n}\nself.used = true\n",
						conditions = 
						{
							
							{
								"32000043-0000-4000-8000-000000000001",
								true,
							},
							
							{
								"32000043-0000-4000-8000-000000000151",
								true,
							},
						},
						gVar = "ACR_RikuMNK3_CD",
						name = "Draw marked wind's eight-pointed star",
						uuid = "32000043-0000-4000-8000-000000000201",
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
						localmapid = 1346,
						name = "North Horn",
						uuid = "32000043-0000-4000-8000-000000000001",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e=TensorCore.mGetEntity(eventArgs.entityID) return eventArgs.markerID == 506 and e and e.contentid == 14506",
						dequeueIfLuaFalse = true,
						name = "Marked Biting Wind",
						uuid = "32000043-0000-4000-8000-000000000151",
						version = 3,
					},
				},
			},
			eventType = 4,
			name = "[North Horn] Abductor - Biting Wind Star",
			uuid = "5fb56afa-2b33-b5a5-b04a-3d1fe8f7279a",
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
						actionLua = "if data.appallingBehaviorAOEOrder == nil then\n    data.appallingBehaviorAOEOrder = {}\nend\n\ntable.insert(data.appallingBehaviorAOEOrder, {\n    sourceEntityID = eventArgs.sourceEntityID\n})\n\nself.used = true",
						conditions = 
						{
							
							{
								"3c3d939b-16d6-7cc4-9edc-006f4e8bfea7",
								true,
							},
							
							{
								"3409826e-49e8-f984-8317-5adf62b912fb",
								true,
							},
							
							{
								"f27e8e99-64ab-8f24-b758-530f17ff626a",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Store Order",
						uuid = "b5fae3cc-f31a-2a88-878a-ae4df4fb6c17",
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
						localmapid = 1346,
						name = "In North Horn",
						uuid = "3c3d939b-16d6-7cc4-9edc-006f4e8bfea7",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 3,
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						name = "Old Tether == 0",
						uuid = "3409826e-49e8-f984-8317-5adf62b912fb",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 3,
						dequeueIfLuaFalse = true,
						eventArgType = 5,
						eventIntValue = 14,
						name = "New Tether == 14",
						uuid = "f27e8e99-64ab-8f24-b758-530f17ff626a",
						version = 3,
					},
				},
			},
			eventType = 15,
			name = "[AppallingBehavior] Store Order",
			uuid = "db4af500-8c21-91b0-9d2b-2b18fddec1f9",
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
						actionLua = "if data.appalingBehaviourAOEOrder == nil then\n    data.appalingBehaviourAOEOrder = {}\nend\n\nlocal lastIndex = #data.appallingBehaviorAOEOrder\n\nif lastIndex > 0 then\n    if eventArgs.a2 == 1 then\n        data.appallingBehaviorAOEOrder[lastIndex].type = \"cone\"\n    elseif eventArgs.a2 == 5 then\n        data.appallingBehaviorAOEOrder[lastIndex].type = \"circle\"\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"e9acbcc6-dc1e-f791-afbf-64351a1c9e74",
								true,
							},
							
							{
								"4dcc6558-a17e-4251-95bd-a3d0bd7e575a",
								true,
							},
							
							{
								"4e151852-b0a1-23ef-8882-017a7b376d1d",
								true,
							},
							
							{
								"3a88cfc4-3bcf-1701-a911-f98a6e3db192",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Store Cone/Circle",
						uuid = "955b5f57-e0b8-1e54-8129-887e67487db5",
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
						localmapid = 1346,
						name = "In North Horn",
						uuid = "e9acbcc6-dc1e-f791-afbf-64351a1c9e74",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 2015274,
						name = "Hidden Entity",
						uuid = "4dcc6558-a17e-4251-95bd-a3d0bd7e575a",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventIntValue = 1,
						name = "a2 >= 1",
						uuid = "4e151852-b0a1-23ef-8882-017a7b376d1d",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						comparator = 2,
						dequeueIfLuaFalse = true,
						eventArgType = 2,
						eventIntValue = 5,
						name = "a2 <= 5",
						uuid = "3a88cfc4-3bcf-1701-a911-f98a6e3db192",
						version = 3,
					},
				},
			},
			eventType = 20,
			name = "[AppallingBehavior] Store Type",
			uuid = "4cbd8d02-6e99-04ef-b984-8f4fc8b8774c",
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
						actionLua = "data.appallingBehaviorAOEOrder = nil\nself.used = true",
						conditions = 
						{
							
							{
								"76a1ab78-39e7-23ef-821d-cef9a605c1df",
								true,
							},
							
							{
								"bbac79fd-f3c0-b345-bb27-a839b5319c35",
								true,
							},
							
							{
								"1bc2f7e1-77cb-b7d4-8ac9-b5b2f59fbb8f",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Reset Tables",
						uuid = "21526daa-d113-2cad-bc6c-1dd539908ae6",
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
						localmapid = 1346,
						name = "In North Horn",
						uuid = "76a1ab78-39e7-23ef-821d-cef9a605c1df",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgType = 3,
						eventBoolValue = 2,
						name = "Is Visible: False",
						uuid = "1bc2f7e1-77cb-b7d4-8ac9-b5b2f59fbb8f",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14715,
						name = "Palkeeper ContentID",
						uuid = "bbac79fd-f3c0-b345-bb27-a839b5319c35",
						version = 3,
					},
				},
			},
			eventType = 22,
			name = "[AppallingBehavior] Reset Tables",
			uuid = "3b19f57d-58a4-62f4-a510-8833dbfc7afe",
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
						actionLua = "local drawer = TensorCore.getMoogleDrawer()\nlocal delayInterval = 4500\n\nfor index, entry in ipairs(data.appallingBehaviorAOEOrder) do\n    local currentDelay = (index - 1) * delayInterval\n\n    if entry.type == \"cone\" then\n        drawer:addTimedConeOnEnt(\n            5000,                  -- timeout\n            entry.sourceEntityID,  -- entID\n            50,                    -- radius\n            math.rad(100),         -- angle\n            nil,                   -- targetID\n            currentDelay           -- delay\n        )\n\n    elseif entry.type == \"circle\" then\n        drawer:addTimedCircleOnEnt(\n            5000,                  -- timeout\n            entry.sourceEntityID,  -- entID\n            30,                    -- radius\n            currentDelay           -- delay\n        )\n    end\nend\n\nself.used = true",
						conditions = 
						{
							
							{
								"496521f7-b3be-a575-b1c5-afb970ae8e40",
								true,
							},
							
							{
								"d458eb78-1900-c148-9cc0-2ec671568050",
								true,
							},
							
							{
								"11911316-cfa1-4f07-9d19-5b52241a2fa9",
								true,
							},
						},
						gVar = "ACR_RikuWAR3_CD",
						name = "Draws",
						uuid = "2c36b967-917b-2ffb-af81-2c705ec2cd22",
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
						localmapid = 1346,
						name = "In North Horn",
						uuid = "496521f7-b3be-a575-b1c5-afb970ae8e40",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 2,
						eventEntityContentID = 14714,
						name = "Pallmagia ContentID",
						uuid = "d458eb78-1900-c148-9cc0-2ec671568050",
						version = 3,
					},
				},
				
				{
					data = 
					{
						category = "Event",
						dequeueIfLuaFalse = true,
						eventArgOptionType = 3,
						eventArgType = 2,
						name = "Casts",
						spellIDList = 
						{
							49773,
							49775,
						},
						uuid = "11911316-cfa1-4f07-9d19-5b52241a2fa9",
						version = 3,
					},
				},
			},
			eventType = 2,
			name = "[AppallingBehavior] Draws",
			uuid = "e69d7ffd-c8a8-b2c9-9014-7eba5c81c0b1",
			version = 2,
		},
	}, 
	inheritedProfiles = 
	{
	},
}



return tbl