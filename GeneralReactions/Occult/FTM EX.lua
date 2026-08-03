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
			enabled = false,
			eventType = 2,
			loop = false,
			mechanicTime = 0,
			name = "[FTM] ===v282===",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "1a2b3c4d-00ff-4b2b-9cff-b2c1c105a0ff",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local id = a.spellID
if id ~= 49660 and id ~= 50360 and id ~= 49661 and id ~= 49687 then return end
if data.b2LlSwords == nil then return end

if id == 49687 then
    -- Swordpointe re-anchors the full knockback schedule.
    local kb1 = Now() + 2100
    for _, r in pairs(data.b2LlSwords) do
        if r.beatIdx ~= nil then
            r.hitAt = kb1 + r.beatIdx * 2500 + (r.kind == "AOE" and 2500 or 0)
        end
    end
    data.b2LlAnchored = true
    self.used = true
    return
end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end

local key, rec
for k, r in pairs(data.b2LlSwords) do
    local dx, dz = r.x - ent.pos.x, r.z - ent.pos.z
    if dx * dx + dz * dz < 2.25 then
        key, rec = k, r
        break
    end
end
if rec == nil then return end
if rec.done and id ~= 49661 then return end

for i = 1, #rec.uuids do Argus.deleteTimedShape(rec.uuids[i]) end
rec.uuids = {}
if AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
    for i = 1, #rec.texts do AnyoneCore.removeTimedWorldText(rec.texts[i]) end
end
rec.texts = {}

if id == 49661 then
    -- The same sword knocks back one beat after its circle.
    local blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.3, 0.6, 1.0, 0.55), 2)
    rec.uuids[#rec.uuids + 1] = blue:addTimedCircle(2600, ent.pos.x, ent.pos.y, ent.pos.z, 2)
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
        rec.texts[#rec.texts + 1] = AnyoneCore.addTimedWorldText(2600, "KB", { x = ent.pos.x, y = ent.pos.y + 2.0, z = ent.pos.z }, GUI:ColorConvertFloat4ToU32(0.4, 0.7, 1.0, 1.0), true, 1.3)
    end
    rec.kind = "KB"
    rec.hitAt = Now() + 2500
else
    rec.done = true
    -- Re-anchor the next pending knockback.
    local best
    for _, r in pairs(data.b2LlSwords) do
        if not r.done and (best == nil or r.hitAt < best.hitAt) then best = r end
    end
    if best ~= nil and best.hitAt < Now() + 1500 then
        best.hitAt = Now() + 2500
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"8d2e3bc1-5f22-4ea3-ab4c-662cf1d8e202",
								true,
							},
						},
						name = "SD - Cleanup + Followup KB",
						uuid = "6d64a4d4-f153-478d-a6f7-41459f24f083",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil or a.spellID == nil then return end
local id = a.spellID

if id == 47489 then
    if data.npHeads == nil then return end
    local element = data.npHeads[a.entityID]
    if element == nil then return end
    local x, y, z = a.castPosX, a.castPosY, a.castPosZ
    if x == nil or y == nil or z == nil then return end
    data.npDraws = data.npDraws or {}
    data.npOrder = data.npOrder or {}
    data.npSpots = data.npSpots or {}
    data.npDone = data.npDone or {}
    data.npSpots[a.entityID] = { x = x, y = y, z = z, element = element }
    data.npOrder[#data.npOrder + 1] = a.entityID

    if data.npDrawFull == nil then
        local function fillColor(elem, alpha)
            if elem == "ice" then return GUI:ColorConvertFloat4ToU32(0.35, 0.75, 1.0, alpha) end
            if elem == "thunder" then return GUI:ColorConvertFloat4ToU32(1.0, 0.9, 0.2, alpha) end
            return GUI:ColorConvertFloat4ToU32(1.0, 0.35, 0.15, alpha)
        end
        local function label(elem)
            if elem == "ice" then return "ICE +" end
            if elem == "thunder" then return "LTG X" end
            return "FIRE O"
        end
        local function wipe(rec)
            if rec == nil then return end
            for i = 1, #rec.shapes do Argus.deleteTimedShape(rec.shapes[i]) end
            if rec.text ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
                AnyoneCore.removeTimedWorldText(rec.text)
            end
        end
        data.npWipe = wipe
        data.npDrawFull = function(entID)
            local s = data.npSpots[entID]
            if s == nil or data.npDone[entID] then return end
            local rec = data.npDraws[entID]
            if rec ~= nil and rec.mode == "full" then return end
            wipe(rec)
            local d = TensorCore.getStaticDrawer(fillColor(s.element, 0.45), 1)
            local shapes = {}
            local dur = 40000
            if s.element == "ice" then
                shapes[#shapes + 1] = d:addTimedCenteredRect(dur, s.x, s.y, s.z, 90, 15, 0)
                shapes[#shapes + 1] = d:addTimedCenteredRect(dur, s.x, s.y, s.z, 90, 15, math.pi / 2)
            elseif s.element == "thunder" then
                -- Thunder uses four diagonal cones.
                local rad45 = math.rad(45)
                shapes[#shapes + 1] = d:addTimedCone(dur, s.x, s.y, s.z, 60, rad45, math.pi / 4)
                shapes[#shapes + 1] = d:addTimedCone(dur, s.x, s.y, s.z, 60, rad45, 3 * math.pi / 4)
                shapes[#shapes + 1] = d:addTimedCone(dur, s.x, s.y, s.z, 60, rad45, -math.pi / 4)
                shapes[#shapes + 1] = d:addTimedCone(dur, s.x, s.y, s.z, 60, rad45, -3 * math.pi / 4)
            else
                shapes[#shapes + 1] = d:addTimedCircle(dur, s.x, s.y, s.z, 18)
            end
            local text
            if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                text = AnyoneCore.addTimedWorldText(dur, label(s.element), { x = s.x, y = s.y + 2.0, z = s.z }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.2)
            end
            data.npDraws[entID] = { mode = "full", shapes = shapes, text = text }
        end
        data.npDrawMarker = function(entID)
            local s = data.npSpots[entID]
            if s == nil or data.npDone[entID] or data.npDraws[entID] ~= nil then return end
            local d = TensorCore.getStaticDrawer(fillColor(s.element, 0.8), 2)
            local shapes = { d:addTimedCircle(40000, s.x, s.y, s.z, 1.5) }
            local text
            if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                text = AnyoneCore.addTimedWorldText(40000, label(s.element), { x = s.x, y = s.y + 2.0, z = s.z }, fillColor(s.element, 1.0), true, 0.9)
            end
            data.npDraws[entID] = { mode = "marker", shapes = shapes, text = text }
        end
        data.npPromote = function(elem)
            local sources = {}
            for i = 1, #data.npOrder do
                local eid = data.npOrder[i]
                local s = data.npSpots[eid]
                if s ~= nil and s.element == elem then
                    data.npDrawFull(eid)
                    if not data.npDone[eid] then
                        sources[#sources + 1] = { x = s.x, z = s.z }
                    end
                end
            end
            -- Include the boss copy only when present in this set.
            local inDC = data.npDarkCurrentUntil ~= nil and Now() < data.npDarkCurrentUntil
            if data.npBossPos ~= nil and not inDC then
                sources[#sources + 1] = { x = data.npBossPos.x, z = data.npBossPos.z }
            end
            -- Cut exact danger geometry from the flat safe overlay.
            if #sources > 0 and data.npBossPos ~= nil
                and ArgusDrawsPlus ~= nil and ArgusDrawsPlus.getEnabled() == true
                and Argus2 ~= nil and Argus2.getNextUnusedChannel ~= nil
                and TensorCore.getStaticFlatDrawer ~= nil then
                if data.npSafeShapes ~= nil then
                    for i = 1, #data.npSafeShapes do Argus.deleteTimedShape(data.npSafeShapes[i]) end
                end
                data.npSafeShapes = {}
                local channel = data.npSafeChannel
                if channel == nil then
                    channel = Argus2.getNextUnusedChannel(true)
                    if channel == nil then channel = 1 end
                    data.npSafeChannel = channel
                end
                local green = 1493237504
                local occ = Argus2.RenderFlags.FLAG_OCCLUDE
                local hy = (data.npBossPos.y or 0) + 0.05
                local dur = 15000
                local ss = data.npSafeShapes
                local base = TensorCore.getStaticFlatDrawer(green, nil, channel)
                -- Use the true arena radius and exact AOE sizes.
                ss[#ss + 1] = base:addTimedCircle(dur, data.npBossPos.x, hy, data.npBossPos.z, 29.5, 0, false, true, 0)
                local cut = TensorCore.getStaticFlatDrawer(green, nil, channel)
                for i = 1, #sources do
                    local sx, sz = sources[i].x, sources[i].z
                    if elem == "fire" then
                        ss[#ss + 1] = cut:addTimedCircle(dur, sx, hy, sz, 18, 0, false, false, occ)
                    elseif elem == "ice" then
                        ss[#ss + 1] = cut:addTimedCenteredRect(dur, sx, hy, sz, 90, 15, 0, 0, false, false, occ)
                        ss[#ss + 1] = cut:addTimedCenteredRect(dur, sx, hy, sz, 90, 15, math.pi / 2, 0, false, false, occ)
                    else
                        local diag = { math.pi / 4, 3 * math.pi / 4, -math.pi / 4, -3 * math.pi / 4 }
                        for j = 1, 4 do
                            ss[#ss + 1] = cut:addTimedCone(dur, sx, hy, sz, 60, math.rad(45), diag[j], 0, false, false, occ)
                        end
                    end
                end
                -- Reapply active Dark Current cuts after rebuilding.
                if data.npExaCuts ~= nil then
                    local nowT = Now()
                    local keep = {}
                    for i = 1, #data.npExaCuts do
                        local c = data.npExaCuts[i]
                        if c.til > nowT then
                            keep[#keep + 1] = c
                            local cdelay = c.showAt - nowT
                            if cdelay < 0 then cdelay = 0 end
                            local cdur = (c.til - nowT) - cdelay
                            if cdur > 0 then
                                ss[#ss + 1] = cut:addTimedCenteredRect(cdur, c.x, hy, c.z, c.l, c.w, c.h, cdelay, false, false, occ)
                            end
                        end
                    end
                    data.npExaCuts = keep
                end
                -- Repaint danger shapes above the cutout overlay.
                local ch2 = data.npDangerChannel
                if ch2 == nil then
                    ch2 = Argus2.getNextUnusedChannel(true)
                    if ch2 == nil then ch2 = channel + 1 end
                    data.npDangerChannel = ch2
                end
                local redF = TensorCore.getStaticFlatDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.32), nil, ch2)
                for i = 1, #sources do
                    local sx, sz = sources[i].x, sources[i].z
                    if elem == "fire" then
                        ss[#ss + 1] = redF:addTimedCircle(dur, sx, hy, sz, 18, 0, false, true, 0)
                    elseif elem == "ice" then
                        ss[#ss + 1] = redF:addTimedCenteredRect(dur, sx, hy, sz, 90, 15, 0, 0, false, true, 0)
                        ss[#ss + 1] = redF:addTimedCenteredRect(dur, sx, hy, sz, 90, 15, math.pi / 2, 0, false, true, 0)
                    else
                        local diag = { math.pi / 4, 3 * math.pi / 4, -math.pi / 4, -3 * math.pi / 4 }
                        for j = 1, 4 do
                            ss[#ss + 1] = redF:addTimedCone(dur, sx, hy, sz, 60, math.rad(45), diag[j], 0, false, true, 0)
                        end
                    end
                end
            end
            if #sources > 0 then
                data.npActiveElement = elem
                data.npMoveUntil = Now() + 15000
                data.npIsSafe = function(px, pz)
                    for i = 1, #sources do
                        local dx = px - sources[i].x
                        local dz = pz - sources[i].z
                        if elem == "fire" then
                            if dx * dx + dz * dz < 19 * 19 then return false end
                        elseif elem == "ice" then
                            local ax = math.abs(dx)
                            local az = math.abs(dz)
                            if (ax < 8.5 and az < 46) or (ax < 46 and az < 8.5) then return false end
                        else
                            if dx * dx + dz * dz < 61 * 61 then
                                local ang = math.atan2(dx, dz)
                                local best = 10
                                local diag = { math.pi / 4, 3 * math.pi / 4, -math.pi / 4, -3 * math.pi / 4 }
                                for j = 1, 4 do
                                    local dd = math.abs(ang - diag[j])
                                    if dd > math.pi then dd = 2 * math.pi - dd end
                                    if dd < best then best = dd end
                                end
                                if best < math.rad(24) then return false end
                            end
                        end
                    end
                    return true
                end
            end
        end
    end

    -- Resolve channels determine order; flight order does not.
    data.npDrawMarker(a.entityID)
    self.used = true

elseif id == 47494 or id == 47495 or id == 47496
    or id == 47510 or id == 47511 or id == 47512 then
    if data.npDraws == nil then return end
    local rec = data.npDraws[a.entityID]
    if rec == nil then return end
    data.npWipe(rec)
    data.npDraws[a.entityID] = nil
    data.npDone[a.entityID] = true
    data.npHeads[a.entityID] = nil
    -- Stop guidance until the next element is promoted.
    if data.npSpots ~= nil then
        local elem = data.npSpots[a.entityID] and data.npSpots[a.entityID].element
        if elem ~= nil then
            local remaining = false
            for eid, s in pairs(data.npSpots) do
                if s.element == elem and not data.npDone[eid] then
                    remaining = true
                    break
                end
            end
            if not remaining and data.npActiveElement == elem then
                data.npIsSafe = nil
                data.npActiveElement = nil
                if data.npSafeShapes ~= nil then
                    for i = 1, #data.npSafeShapes do Argus.deleteTimedShape(data.npSafeShapes[i]) end
                    data.npSafeShapes = nil
                end
            end
        end
    end
    -- Promote the next unresolved element when aura order is known.
    if data.npAnnounceOrder ~= nil and data.npPromote ~= nil then
        for i = 1, #data.npAnnounceOrder do
            local e = data.npAnnounceOrder[i]
            local unresolved = false
            for eid, s in pairs(data.npSpots) do
                if s.element == e and not data.npDone[eid] then
                    unresolved = true
                    break
                end
            end
            if unresolved then
                data.npPromote(e)
                break
            end
        end
    end
    self.used = true
end
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"af405de3-7144-40c5-8d6e-884e03f0a404",
								true,
							},
						},
						name = "NP - Markers + Cleanup",
						uuid = "4c7eefad-9ae8-4663-b103-34c03e91baeb",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil or a.spellID == nil then return end
local id = a.spellID
local SPIN = { [49648] = true, [49649] = true, [49650] = true,
               [49651] = true, [49652] = true, [49653] = true }
local FLIP = { [50431] = true, [50432] = true, [50433] = true,
               [50434] = true, [50435] = true, [50436] = true }
if not SPIN[id] and not FLIP[id] then return end
if data.b2Rings == nil then return end
local rec = data.b2Rings[a.entityID]
if rec == nil or rec.stage == "done" then return end

if FLIP[id] then
    rec.stage = 2
    data.b2RingDraw(rec, rec.second, 6000)
    data.b2RingOverlay()
    if data.b2RingNext ~= nil then data.b2RingNext() end
    self.used = true
    return
end

-- The first hit corrects an inaccurate pose record.
local DONUT_IDS = { [49648] = true, [49649] = true, [49650] = true }
if rec.hits == nil then rec.hits = 0 end
rec.hits = rec.hits + 1
if rec.hits == 1 then
    local actualFirst = DONUT_IDS[id] and "donut" or "chariot"
    if rec.first ~= actualFirst then
        if rec.first ~= nil and not rec.assumed then
            AnyoneCore.log("[B2 Cyclo] Pose order mismatch; using first-hit order.", 5)
        elseif rec.assumed then
            AnyoneCore.log("[B2 Cyclo] Default pose mismatch; using first-hit order.", 5)
        end
        rec.first = actualFirst
    end
    rec.assumed = nil
    rec.second = actualFirst == "donut" and "chariot" or "donut"
end
if rec.hits >= 2 then
    data.b2RingWipe(rec)
    rec.stage = "done"
    -- Remove the overlay after the final ring.
    local anyLive = false
    for _, r in pairs(data.b2Rings) do
        if r.stage == 1 or r.stage == 2 then anyLive = true break end
    end
    if not anyLive then
        if data.b2SafeShapes ~= nil then
            for i = 1, #data.b2SafeShapes do Argus.deleteTimedShape(data.b2SafeShapes[i]) end
            data.b2SafeShapes = nil
        end
        if data.b2NextShapes ~= nil then
            for i = 1, #data.b2NextShapes do Argus.deleteTimedShape(data.b2NextShapes[i]) end
            data.b2NextShapes = nil
        end
        if data.b2NextText ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            AnyoneCore.removeTimedWorldText(data.b2NextText)
            data.b2NextText = nil
        end
    end
else
    -- The flip cast redraws stage two.
    data.b2RingWipe(rec)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0002-4b2b-9c02-b2c1c105a002",
								true,
							},
						},
						name = "B2 - Cycloswords Flip",
						uuid = "1a2b3c4d-0005-4b2b-9c05-b2c1c105a005",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil or a.entityID == nil then return end
local id = a.spellID
if id ~= 47714 and id ~= 47715 then return end
local bd = data.b1Duet
if bd == nil or bd.wm == nil then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end

-- Group paired waves by arrival time.
if bd.waveBeat == nil or TimeSince(bd.waveAt or 0) > 1800 then
    bd.waveBeat = (bd.waveBeat or 0) + 1
    bd.cur = {}
end
bd.waveAt = Now()
-- The caster's edge determines the lane axis.
if math.abs(ent.pos.z - bd.cz) > math.abs(ent.pos.x - bd.cx) then
    bd.cur.col = ent.pos.x
else
    bd.cur.row = ent.pos.z
end
if bd.cur.row == nil or bd.cur.col == nil then
    self.used = true
    return
end
local safeX = bd.cur.col < bd.cx and bd.cx + 10 or bd.cx - 10
local safeZ = bd.cur.row < bd.cz and bd.cz + 10 or bd.cz - 10
local q = bd.quadOf(safeX, safeZ)
bd.beats[bd.waveBeat] = q

if bd.waveBeat == 1 then
    if bd.safe1q ~= nil and q ~= bd.safe1q then
        AnyoneCore.log("[Breathy Duet] Marker and wave positions differ; using wave position.", 5)
    end
elseif bd.waveBeat == 2 and bd.committed == nil and bd.beats[1] ~= nil then
    bd.committed = true
    if bd.chain ~= nil then
        -- Validate the route that was committed from quad ticks.
        if bd.chain[2] ~= q then
            AnyoneCore.log("[Breathy Duet] Route changed; rebuilding from wave positions.", 5)
            bd.chain = nil -- Rebuild from the observed waves.
        else
            self.used = true
            return
        end
    end
    -- Quadrants are numbered clockwise from NW.
    local step = (q - bd.beats[1]) % 4
    local dir = step == 1 and 1 or -1
    local chain = { bd.beats[1], q }
    for k = 3, 4 do
        chain[k] = ((chain[k - 1] - 1 + dir) % 4) + 1
    end
    local y = bd.y or ent.pos.y
    local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.25, 0.7), 2)
    for k = 2, 4 do
        local p = bd.wm[chain[k]]
        local dur = 1500 + (k - 2) * 3650 + 2000
        green:addTimedCircle(dur, p.x, y, p.z, 2)
        if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
            -- Labels show visit order.
            AnyoneCore.addTimedWorldText(dur, tostring(k), { x = p.x, y = y + 1.5, z = p.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.4)
        end
    end
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall(dir == 1 and "Rotate clockwise" or "Rotate counterclockwise", true, 6)
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-001e-4b2b-9c1e-b2c1c105a01e",
								true,
							},
						},
						name = "B1 - Breathy Duet Waves",
						uuid = "1a2b3c4d-001f-4b2b-9c1f-b2c1c105a01f",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil then return end
-- Advance the NEXT markers when a weapon resolves.
local RES = { [48912] = true, [48913] = true, [48914] = true, [48915] = true }
if RES[a.spellID] then
    local st = data.idxQuad
    if st ~= nil and st.order ~= nil and data.idxWeaponStage ~= nil then
        if data.idxFireAt == nil or TimeSince(data.idxFireAt) > 1500 then
            data.idxFireAt = Now()
            st.fireN = (st.fireN or 0) + 1
            data.idxWeaponStage(st.order[st.fireN + 1], 3600)
        end
    end
    self.used = true
    return
end
local M = {
    [50363] = "Between platforms now",
    [50364] = "On platforms now",
    [48911] = "Get in now",
    [48910] = "Out of middle now",
    -- The standalone harp draw is handled by the phase announcer.
    [48384] = "Out of middle now",
}
local msg = M[a.spellID]
if msg == nil then return end
if data.idxWindCalled ~= nil and TimeSince(data.idxWindCalled) < 1500 then return end
data.idxWindCalled = Now()
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(msg, true, 4)
end
-- Redraw Quadrilogy danger shapes at the windup.
local WD = { [50363] = "SWORD", [50364] = "BELL", [48911] = "BOW", [48910] = "HARP" }
local wpn = WD[a.spellID]
if wpn ~= nil and data.idxWeaponDraw ~= nil then
    data.idxWeaponDraw(wpn, 2600)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0012-4b2b-9c12-b2c1c105a012",
								true,
							},
						},
						name = "B4 - Weapon Windups",
						uuid = "1a2b3c4d-0026-4b2b-9c26-b2c1c105a026",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or (a.spellID ~= 48404 and a.spellID ~= 48405) then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end

-- Anchor once because the channel event repeats every frame.
if a.spellID == 48405 then
    if a.channelTimeMax ~= nil and data.idxKbUntil ~= nil and Now() < data.idxKbUntil
        and (data.idxKbLanceAt == nil or TimeSince(data.idxKbLanceAt) > 10000) then
        data.idxKbLanceAt = Now()
        local hitAt = Now() + math.floor(a.channelTimeMax * 1000) + 250
        data.idxKbAt = hitAt
        data.idxKbUntil = hitAt + 1200
    end
    self.used = true
    return
end

if data.idxKbUntil == nil or Now() > data.idxKbUntil then
    data.idxKbSrcs = {}
    data.idxKbAt = Now() + 6100
    data.idxKbUntil = Now() + 8500
end
local s = data.idxKbSrcs
s[#s + 1] = { x = ent.pos.x, y = ent.pos.y, z = ent.pos.z }
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0024-4b2b-9c24-b2c1c105a024",
								true,
							},
						},
						name = "B4 - Propulsive KB",
						uuid = "1a2b3c4d-0027-4b2b-9c27-b2c1c105a027",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 49660,
						spellIDList = 
						{
							49660,
							50360,
							49661,
							49687,
						},
						dequeueIfLuaFalse = true,
						name = "Steelsbreath/Steelsforge",
						uuid = "8d2e3bc1-5f22-4ea3-ab4c-662cf1d8e202",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47489,
						spellIDList = 
						{
							47489,
							47494,
							47495,
							47496,
							47510,
							47511,
							47512,
						},
						dequeueIfLuaFalse = true,
						name = "Flight/Resolve Casts",
						uuid = "af405de3-7144-40c5-8d6e-884e03f0a404",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 49648,
						spellIDList = 
						{
							49648,
							49649,
							49650,
							49651,
							49652,
							49653,
							50431,
							50432,
							50433,
							50434,
							50435,
							50436,
						},
						dequeueIfLuaFalse = true,
						name = "Cycloswords Spin/Flip",
						uuid = "1a2b3c4d-0002-4b2b-9c02-b2c1c105a002",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47714,
						spellIDList = 
						{
							47714,
							47715,
						},
						dequeueIfLuaFalse = true,
						name = "Duet Waves",
						uuid = "1a2b3c4d-001e-4b2b-9c1e-b2c1c105a01e",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 48910,
						spellIDList = 
						{
							48910,
							48911,
							50363,
							50364,
							48384,
							48386,
							48912,
							48913,
							48914,
							48915,
						},
						dequeueIfLuaFalse = true,
						name = "Index Weapon Windup Casts",
						uuid = "1a2b3c4d-0012-4b2b-9c12-b2c1c105a012",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 48404,
						spellIDList = 
						{
							48404,
						},
						dequeueIfLuaFalse = true,
						name = "Index Clone Jumps",
						uuid = "1a2b3c4d-0024-4b2b-9c24-b2c1c105a024",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 2,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Casts",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "ab122f2b-31f1-4577-be22-495fc181d860",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil or a.spellID == nil then return end
local id = a.spellID
if id == 47507 then
    -- Severed Dark Current has no boss-centered element copy.
    data.npDarkCurrentUntil = Now() + 45000
    self.used = true
    return
end
if data.npPromote == nil then return end

local element
if id == 47490 then
    element = "fire"
elseif id == 47491 then
    element = "ice"
elseif id == 47492 or id == 50358 then
    element = "thunder"
elseif id == 47494 or id == 47495 or id == 47496
    or id == 47510 or id == 47511 or id == 47512 then
    if data.npHeads ~= nil then element = data.npHeads[a.entityID] end
end
if element == nil then return end
data.npPromote(element)
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"b0516ef4-8255-4bd6-9e7f-995fa4a1b505",
								true,
							},
						},
						name = "NP - Promote On Severed/Ancient",
						uuid = "c1e40c22-8a75-4b7c-9f02-6b3d9f5e8a12",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID ~= 47507 or a.channelTimeMax == nil then return end
-- Anchor once because the channel event repeats every frame.
if data.npDCPredrawAt ~= nil and TimeSince(data.npDCPredrawAt) < 60000 then return end
data.npDCPredrawAt = Now()
local boss = TensorCore.mGetEntity(a.entityID)
local y = (boss ~= nil and boss.pos ~= nil and boss.pos.y) or -724.0
local cx, cz = 100.0, 800.0
local thin = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.75, 0.3, 1.0, 0.30), 2)
local danger = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.75, 0.3, 1.0, 0.45), 1)
-- Persist cuts so safe-overlay rebuilds retain Dark Current lanes.
if data.npExaCarve == nil then
    data.npExaCarve = function(cx2, cz2, len, wid, hh, delayMs, durMs)
        data.npExaCuts = data.npExaCuts or {}
        data.npExaCuts[#data.npExaCuts + 1] = { x = cx2, z = cz2, l = len, w = wid, h = hh,
            showAt = Now() + delayMs, til = Now() + delayMs + durMs }
        if data.npSafeShapes ~= nil and data.npSafeChannel ~= nil
            and Argus2 ~= nil and Argus2.RenderFlags ~= nil
            and TensorCore.getStaticFlatDrawer ~= nil then
            local cut = TensorCore.getStaticFlatDrawer(1493237504, nil, data.npSafeChannel)
            local hy2 = (data.npBossPos ~= nil and data.npBossPos.y or -724.0) + 0.05
            data.npSafeShapes[#data.npSafeShapes + 1] = cut:addTimedCenteredRect(durMs, cx2, hy2, cz2, len, wid, hh, delayMs, false, false, Argus2.RenderFlags.FLAG_OCCLUDE)
        end
    end
end
for k = 0, 2 do
    local h = math.pi - k * (2 * math.pi / 3)
    local impact = 10600 + k * 6600
    thin:addTimedCenteredRect(2500, cx, y, cz, 60, 10, h, impact - 4500)
    danger:addTimedCenteredRect(2000, cx, y, cz, 60, 10, h, impact - 2000)
    data.npExaCarve(cx, cz, 60, 10, h, impact - 4500, 4500)
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
        local lp = TensorCore.getPosInDirection({ x = cx, y = y, z = cz }, h, 25)
        if lp ~= nil then
            AnyoneCore.addTimedWorldText(impact, tostring(k + 1), { x = lp.x, y = y + 1.5, z = lp.z }, GUI:ColorConvertFloat4ToU32(0.85, 0.5, 1.0, 1.0), true, 1.5)
        end
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0035-4b2b-9c35-b2c1c105a035",
								true,
							},
						},
						name = "NP - DC Aim Armer (set open)",
						uuid = "1a2b3c4d-0036-4b2b-9c36-b2c1c105a036",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID ~= 47514 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil or ent.contentid ~= 14503 then return end
data.npFgActive = Now()
data.npFgCenter = { x = ent.pos.x, y = ent.pos.y, z = ent.pos.z }
data.npFgVolleys = nil
data.npFgFirstAura = nil
data.npFgLastAura = nil
data.npFgVolleyList = nil
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"d1f83b62-4a09-4c75-8e2b-06b5c9d47a18",
								true,
							},
						},
						name = "NP - FG Start",
						uuid = "7a05e8d1-93c4-4f62-b8a7-2e51d0c96f33",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil then return end
local id = a.spellID
-- Later-boss triggers support mid-run reloads.
if id ~= 49726 and id ~= 47632 and id ~= 50717 and id ~= 49619 and id ~= 49646 and id ~= 47507 and id ~= 48407 and id ~= 48403 then return end
if data.b1MoogleInit == true then
    self.used = true
    return
end
if MoogleTelegraphs == nil or MoogleTelegraphs.Settings == nil then
    AnyoneCore.log("[Aevis Overrides] MoogleTelegraphs unavailable", 5)
    self.used = true
    return
end
data.b1MoogleInit = true
local S = MoogleTelegraphs.Settings
local src = "FTM B1 - Occult Reactions"
if S.aoeIDUserSetDonuts ~= nil then
    S.aoeIDUserSetDonuts[47640] = { name = "Fulgurous Fugue", radius = 18, source = src } -- inner radius
    S.aoeIDUserSetDonuts[47686] = { name = "Blazeloop", radius = 5, source = src }
    -- Cycloswords uses the paired chariot radius.
    S.aoeIDUserSetDonuts[49648] = { name = "Cyclo Spin donut (small ring)", radius = 10, source = src }
    S.aoeIDUserSetDonuts[49649] = { name = "Cyclo Spin donut (mid ring)", radius = 15, source = src }
    S.aoeIDUserSetDonuts[49650] = { name = "Cyclo Spin donut (large ring)", radius = 20, source = src }
end
-- Replace the Storm's Breath wash with the landing guide.
S.aoeIDUserBlacklist[47638] = "Storm's Breath KB (Aevis) - " .. src
-- 48245 is the full-arena knockback circle.
S.aoeIDUserBlacklist[48245] = "Storm's Breath arena wash (Aevis) - " .. src
-- Redraw AR2 shapes sequentially.
S.aoeIDUserBlacklist[50728] = "Freezing Fugue AR2 (Aevis) - " .. src
S.aoeIDUserBlacklist[47629] = "Fulgurous Fugue AR2 (Aevis) - " .. src
-- Mirror configuration uses the same shapes in reverse order.
S.aoeIDUserBlacklist[47630] = "Freezing Fugue AR2 cfgY (Aevis) - " .. src
S.aoeIDUserBlacklist[50727] = "Fulgurous Fugue AR2 cfgY (Aevis) - " .. src
-- Dark Current is fully custom-drawn.
S.aoeIDUserBlacklist[47500] = "Dark Current initial (Necrophobia) - " .. src
S.aoeIDUserBlacklist[47501] = "Dark Current slab (Necrophobia) - " .. src
S.aoeIDUserBlacklist[47509] = "Severed Dark Current line (Necrophobia) - " .. src
-- Suppress duplicate Propulsive Shockwave circles.
S.aoeIDUserBlacklist[48447] = "Propulsive Shockwave circles (Index) - " .. src
if S.aoeIDUserSetCircles ~= nil then
    S.aoeIDUserSetCircles[47639] = { name = "Poison Breath", radius = 18, source = src } -- payload aoeLength=18
    S.aoeIDUserSetCircles[47641] = { name = "Freezing Fugue", radius = 20, source = src } -- payload aoeLength=20
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"a7d20f36-4b18-4c95-8e63-17f5b0d29a44",
								true,
							},
						},
						name = "B1 - Aevis Moogle Overrides",
						uuid = "6c39e1a8-72d5-4f04-b9c6-08a4e5d31f77",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil or a.entityID == nil then return end
local id = a.spellID
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end
local cid = ent.contentid
if cid ~= 14490 and cid ~= 14491 then return end

-- Filter before updating the set clock.
local ORDERS = {
    [47671] = { "plus", "plus" },  -- "Crossblaze and Repeat"
    [47675] = { "plus", "plus" },  -- "Crossblaze and Repeat"
    [47672] = { "ring", "ring" },  -- "Blazeloop and Repeat"
    [47676] = { "ring", "ring" },  -- "Blazeloop and Repeat"
    [47673] = { "plus", "ring" },  -- "Crossblaze, Blazeloop"
    [47677] = { "plus", "ring" },  -- "Crossblaze, Blazeloop"
    [47674] = { "ring", "plus" },  -- "Blazeloop, Crossblaze"
    [47678] = { "ring", "plus" },  -- "Blazeloop, Crossblaze"
}
local isAnnounce = ORDERS[id] ~= nil
local isHeadTick = (id == 47683 or id == 47684)
local isHelper = (id == 50706 or id == 50707 or id == 50708)
local STEP_SHAPE = { [47685] = "plus", [47687] = "plus", [47686] = "ring", [47688] = "ring" }
local isStep = STEP_SHAPE[id] ~= nil
if not isAnnounce and not isHeadTick and not isHelper and not isStep then return end

-- Step channels replace pending labels and may repeat on head copies.
if isStep then
    local st = data.b1Blaze and data.b1Blaze[cid]
    if st ~= nil and st.pend ~= nil then
        st.lastStep = st.lastStep or {}
        if st.lastStep[id] ~= nil and TimeSince(st.lastStep[id]) < 1500 then
            self.used = true
            return
        end
        st.lastStep[id] = Now()
        for k = 1, 2 do
            local p = st.pend[k]
            if p ~= nil and p.unknown then
                if p.uuid ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
                    AnyoneCore.removeTimedWorldText(p.uuid)
                end
                local ms = ((a.channelTimeMax or 2) + 1) * 1000
                local label = tostring(p.seq) .. (STEP_SHAPE[id] == "ring" and " IN" or " OUT")
                if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                    AnyoneCore.addTimedWorldText(ms, label, { x = p.x, y = p.y + 2.0, z = p.z }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.4)
                end
                p.unknown = false
                break
            end
        end
    end
    self.used = true
    return
end

-- Head IDs persist between sets but change between pulls.
local newSet = data.b1BlazeSetAt == nil or TimeSince(data.b1BlazeSetAt) > 60000
if newSet then
    data.b1BlazeEids = data.b1BlazeEids or {}
    local samePull
    if isHelper then
        samePull = data.b1BlazeSetAt ~= nil and TimeSince(data.b1BlazeSetAt) < 240000
    else
        samePull = data.b1BlazeEids[a.entityID] == true
    end
    if samePull then
        data.b1BlazeSetN = (data.b1BlazeSetN or 0) + 1
    else
        data.b1BlazeSetN = 1
        data.b1BlazeEids = {}
    end
    data.b1BlazeSeq = 0
    data.b1BlazeHits = {}
    data.b1Blaze = {}
end
data.b1BlazeSetAt = Now()
if not isHelper then
    data.b1BlazeEids = data.b1BlazeEids or {}
    data.b1BlazeEids[a.entityID] = true
end
data.b1Blaze = data.b1Blaze or {}
if isHeadTick then
    self.used = true
    return
end

if isAnnounce then
    local order = ORDERS[id]
    local st = data.b1Blaze[cid]
    if st ~= nil and st.step > 0 then
        -- Preserve a step already consumed by a same-batch helper.
        st.order = order
    else
        data.b1Blaze[cid] = { order = order, step = 0 }
    end
    -- Noise buffs are polled during this window.
    data.b1NoiseUntil = Now() + 45000
    self.used = true
    return
end

local st = data.b1Blaze[cid]
if st == nil then
    -- Step channels replace unknown announce patterns.
    st = { order = nil, step = 0 }
    data.b1Blaze[cid] = st
    AnyoneCore.log("[Aevis Blaze] Announce order unavailable; awaiting step channels.", 5)
    data.b1NoiseUntil = Now() + 45000
end
st.step = st.step + 1
if st.step > 2 then
    self.used = true
    return
end
local shape = st.order ~= nil and st.order[st.step] or nil
local ms = (a.channelTimeMax or 5) * 1000
local p = ent.pos

-- Record the hit schedule for the Noise knockback timer.
data.b1BlazeHits = data.b1BlazeHits or {}
data.b1BlazeHits[cid] = data.b1BlazeHits[cid] or {}
local hl = data.b1BlazeHits[cid]
hl[#hl + 1] = Now() + ms
data.b1BlazeSeq = (data.b1BlazeSeq or 0) + 1
local label
if shape ~= nil then
    label = tostring(data.b1BlazeSeq) .. (shape == "ring" and " IN" or " OUT")
else
    label = tostring(data.b1BlazeSeq) .. " ?"
end
local uuid
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    uuid = AnyoneCore.addTimedWorldText(ms, label, { x = p.x, y = p.y + 2.0, z = p.z }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.4)
end
st.pend = st.pend or {}
st.pend[st.step] = { uuid = uuid, x = p.x, y = p.y, z = p.z,
                     seq = data.b1BlazeSeq, unknown = shape == nil }
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"b8e41c27-5d09-4a86-9f72-28c6d1e40b55",
								true,
							},
						},
						name = "B1 - Blaze Sequence",
						uuid = "4f82d0b3-6e17-4c58-a29d-73b5f4e08c66",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID ~= 47631 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.contentid ~= 14490 then return end
data.b1StormUntil = Now() + (a.channelTimeMax or 8.7) * 1000
data.b1StormOrigin = { x = -900, z = 700 }
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall("Knockback", true, 5)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"c9f52d38-6e10-4b97-a083-39d7e2f51c66",
								true,
							},
						},
						name = "B1 - Storm Breath Start",
						uuid = "5a94f1c2-8027-4d69-b2a5-51f9e4b73e88",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID ~= 47702 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil then return end
local glow = ent.contentid
if glow ~= 14490 and glow ~= 14491 then return end
local fontCid = glow == 14490 and 14497 or 14498
local fonts = data.b1Fonts and data.b1Fonts[fontCid]
if fonts == nil or #fonts == 0 then
    AnyoneCore.log("[Aevis Terrors] Font positions unavailable for " .. tostring(fontCid) .. ".", 5)
    self.used = true
    return
end
local ms = (a.channelTimeMax or 6.7) * 1000
local danger = TensorCore.getMoogleDrawer()
for i = 1, #fonts do
    local f = fonts[i]
    danger:addTimedCenteredRect(ms, f.x, f.y, f.z, 60, 5, f.h)
end
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(glow == 14490 and "Green glowing" or "Blue glowing", true, 6)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"f2c85a61-9143-4ec0-d3b6-62a0b5c84f99",
								true,
							},
						},
						name = "B1 - Two Terrors",
						uuid = "03d96b72-a254-4fd1-84c7-73b1c6d95a00",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID ~= 47646 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or (ent.contentid ~= 14490 and ent.contentid ~= 14491) then return end
-- The solver can also initialize from Cluster AOEs.
if data.b1Duet == nil or (data.b1Duet.t0 ~= nil and TimeSince(data.b1Duet.t0) > 30000) then
    data.b1Duet = { t0 = Now(), hits = {}, beats = 1, solved = false }
end
if not data.b1Duet.solved then
    data.b1Duet.hit1 = Now() + (a.channelTimeMax or 16.7) * 1000
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"36ac9da5-d587-4c24-b7fa-a6e4f90c8d33",
								true,
							},
						},
						name = "B1 - Breathy Duet Start",
						uuid = "58ce1fc7-f709-4e46-d91c-c806b12e0f55",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil or a.entityID == nil then return end
local id = a.spellID
if id ~= 50699 and id ~= 50700 and id ~= 47653 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end

if data.b1Duet == nil or (data.b1Duet.t0 ~= nil and TimeSince(data.b1Duet.t0) > 40000) then
    data.b1Duet = { t0 = Now(), beats = {}, waveN = 0, ticks = {}, tickN = 0 }
end
local bd = data.b1Duet

-- Quad ticks disambiguate the mirrored route.
if id == 47653 then
    if TimeSince(bd.tickAt or 0) > 1500 then
        bd.tickN = bd.tickN + 1
        bd.ticks[bd.tickN] = {}
    end
    bd.tickAt = Now()
    local cx, cz = -900.0, 700.0
    local q
    if ent.pos.x < cx then q = ent.pos.z < cz and 1 or 4
    else q = ent.pos.z < cz and 2 or 3 end
    bd.ticks[bd.tickN][q] = true

    if bd.chain == nil and bd.safe1q ~= nil and bd.tickN >= 3 then
        local valid = {}
        for _, dir in ipairs({ 1, -1 }) do
            local c = { bd.safe1q }
            local ok = true
            for k = 2, 4 do c[k] = ((c[k - 1] - 1 + dir) % 4) + 1 end
            for k = 1, math.min(4, bd.tickN) do
                if bd.ticks[k] ~= nil and bd.ticks[k][c[k]] then ok = false break end
            end
            if ok then valid[#valid + 1] = { chain = c, dir = dir } end
        end
        if #valid == 1 then
            bd.chain = valid[1].chain
            local y = bd.y or ent.pos.y
            local hit1 = (bd.markerAt or Now()) + 19700
            local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.25, 0.7), 2)
            for k = 2, 4 do
                local p = bd.wm[bd.chain[k]]
                local dur = hit1 + (k - 1) * 3650 + 1200 - Now()
                if dur > 0 then
                    green:addTimedCircle(dur, p.x, y, p.z, 2)
                    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                        -- Labels show visit order, not waymark numbers.
                        AnyoneCore.addTimedWorldText(dur, tostring(k), { x = p.x, y = y + 1.5, z = p.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.4)
                    end
                end
            end
            if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
                AnyoneCore.Shotcall(valid[1].dir == 1 and "Rotate clockwise" or "Rotate counterclockwise", true, 6)
            end
        end
    end
    self.used = true
    return
end
-- Markers sit around the fixed arena center (-900, 700).
bd.cx, bd.cz = -900.0, 700.0
-- Fall back to ice=row if shooter spawns were missed.
local iceAxis
if data.b1DuetAxis ~= nil and TimeSince(data.b1DuetAxis.at or 0) < 40000 then
    iceAxis = data.b1DuetAxis.ice
end
if iceAxis == nil then
    if AnyoneCore ~= nil and AnyoneCore.log ~= nil then
        AnyoneCore.log("[Breathy Duet] Shooter axes unavailable; using fallback orientation.", 5)
    end
    iceAxis = "row"
end
if id == 50700 then
    if iceAxis == "col" then bd.laneCol = ent.pos.x else bd.laneRow = ent.pos.z end
else
    if iceAxis == "col" then bd.laneRow = ent.pos.z else bd.laneCol = ent.pos.x end
end
if bd.called == nil and bd.laneRow ~= nil and bd.laneCol ~= nil then
    bd.called = true
    bd.markerAt = Now()
    -- The safe quadrant is diagonal to the two active lanes.
    local safeX = bd.laneCol < bd.cx and bd.cx + 10 or bd.cx - 10
    local safeZ = bd.laneRow < bd.cz and bd.cz + 10 or bd.cz - 10
    bd.safe1 = { x = safeX, z = safeZ }
    -- Group waymarks: 1=NW, 2=NE, 3=SE, 4=SW.
    bd.wm = {
        [1] = { x = bd.cx - 5, z = bd.cz - 6.7 },
        [2] = { x = bd.cx + 5, z = bd.cz - 6.7 },
        [3] = { x = bd.cx + 5, z = bd.cz + 6.7 },
        [4] = { x = bd.cx - 5, z = bd.cz + 6.7 },
    }
    local function quadOf(x, z)
        if x < bd.cx then return z < bd.cz and 1 or 4 end
        return z < bd.cz and 2 or 3
    end
    bd.quadOf = quadOf
    bd.safe1q = quadOf(safeX, safeZ)
    local y = ent.pos.y
    bd.y = y
    local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.25, 0.7), 2)
    local p = bd.wm[bd.safe1q]
    green:addTimedCircle(21000, p.x, y, p.z, 2)
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
        AnyoneCore.addTimedWorldText(21000, "1 START", { x = p.x, y = y + 1.5, z = p.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.4)
    end
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall("Duet, start " .. tostring(bd.safe1q), true, 8)
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"47bd0eb6-e698-4d35-c80b-b7f5a01d9e44",
								true,
							},
						},
						name = "B1 - Breathy Duet Solver",
						uuid = "69df20d8-081a-4f57-ea2d-d917c23f1a66",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil then return end
local id = a.spellID
local FULG = { [47619] = true, [47629] = true, [50723] = true, [50727] = true, [50725] = true }
local FREZ = { [50724] = true, [50728] = true, [47620] = true, [47630] = true, [50726] = true }
if not FULG[id] and not FREZ[id] then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or (ent.contentid ~= 14489 and ent.contentid ~= 14490 and ent.contentid ~= 14491) then return end
-- Main/helper channels arrive together, sometimes on different heads.
local color = FULG[id] and "FULG" or "FREZ"
if data.b1FugSeen == nil then data.b1FugSeen = {} end
local seen = data.b1FugSeen[color]
if seen ~= nil and (Now() - seen) < 3000 then return end
data.b1FugSeen[color] = Now()
local fireCid, call
if FREZ[id] then
    fireCid, call = 14498, "Out, between green"
else
    fireCid, call = 14497, "In, between blue"
end
local fonts = data.b1Fonts and data.b1Fonts[fireCid]
if fonts == nil or #fonts == 0 then
    AnyoneCore.log("[Aevis AR2] Font positions unavailable for " .. tostring(fireCid) .. ".", 5)
    self.used = true
    return
end
local ms = (a.channelTimeMax or 10) * 1000
-- Keep the two font sets from overlapping.
local delay = 0
if data.b1AR2Busy ~= nil and data.b1AR2Busy > Now() then
    delay = data.b1AR2Busy - Now() + 200
end
data.b1AR2Busy = Now() + ms
local dur = ms - delay
if dur < 1500 then dur = 1500 end
local danger = TensorCore.getMoogleDrawer()
for i = 1, #fonts do
    local f = fonts[i]
    danger:addTimedCenteredRect(dur, f.x, f.y, f.z, 60, 5, f.h, delay)
end

if delay > 0 then
    -- Keep the callout synchronized with the delayed draw.
    data.b1AR2Call = call
    data.b1AR2CallTime = Now() + delay
elseif AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(call, true, 8)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"58ce2fd8-f810-4f57-d02d-d918c34f2a77",
								true,
							},
						},
						name = "B1 - AR2 Fugues",
						uuid = "7a0f31e9-192b-4068-fb3e-ea28d34a2b77",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil then return end
local id = a.spellID
if id ~= 49667 and id ~= 49668 and id ~= 49672 then return end

if id == 49667 then
    -- Exclude the boss from the clone solver.
    data.b2BossEid = a.entityID
    self.used = true
    return
end

if id == 49668 then
    -- Announce once per instance.
    if data.b2DanceArmed == nil or TimeSince(data.b2DanceArmed) > 25000 then
        data.b2DanceArmed = Now()
        data.b2DanceN = 0
        data.b2DanceSolved = nil
        data.b2DanceSample = nil
        data.b2DanceTimeoutLog = nil
        data.b2DanceCloneN = nil
    end
    self.used = true
    return
end

local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end
if data.b2DanceN == nil or (data.b2DanceLast ~= nil and TimeSince(data.b2DanceLast) > 20000) then
    data.b2DanceN = 0
end
data.b2DanceN = data.b2DanceN + 1
data.b2DanceLast = Now()
local n = data.b2DanceN
local cx, cz = 600.0, 703.975
local y = ent.pos.y
local h = ent.pos.h or 0

local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.45), 1)
red:addTimedCenteredRect(1300, cx, y, cz, 60, 20, h)
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    local lx = cx + 12 * math.sin(h)
    local lz = cz + 12 * math.cos(h)
    AnyoneCore.addTimedWorldText(1300, tostring(n), { x = lx, y = y + 1.5, z = lz }, GUI:ColorConvertFloat4ToU32(1, 0.5, 0.4, 1), true, 1.6)
end
if n == 1 then
    -- Replace the solver predraws when lane one begins.
    if data.b2DancePre ~= nil and Argus ~= nil and Argus.deleteTimedShape ~= nil then
        for i = 1, #data.b2DancePre do
            Argus.deleteTimedShape(data.b2DancePre[i])
        end
    end
    data.b2DancePre = nil
    if data.b2DancePreTexts ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
        for i = 1, #data.b2DancePreTexts do
            AnyoneCore.removeTimedWorldText(data.b2DancePreTexts[i])
        end
    end
    data.b2DancePreTexts = nil
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0003-4b2b-9c03-b2c1c105a003",
								true,
							},
						},
						name = "B2 - Sword Dance",
						uuid = "1a2b3c4d-0006-4b2b-9c06-b2c1c105a006",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or (a.spellID ~= 48404 and a.spellID ~= 48405) then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end

-- Anchor once because the channel event repeats every frame.
if a.spellID == 48405 then
    if a.channelTimeMax ~= nil and data.idxKbUntil ~= nil and Now() < data.idxKbUntil
        and (data.idxKbLanceAt == nil or TimeSince(data.idxKbLanceAt) > 10000) then
        data.idxKbLanceAt = Now()
        local hitAt = Now() + math.floor(a.channelTimeMax * 1000) + 250
        data.idxKbAt = hitAt
        data.idxKbUntil = hitAt + 1200
    end
    self.used = true
    return
end

if data.idxKbUntil == nil or Now() > data.idxKbUntil then
    data.idxKbSrcs = {}
    data.idxKbAt = Now() + 6100
    data.idxKbUntil = Now() + 8500
end
local s = data.idxKbSrcs
s[#s + 1] = { x = ent.pos.x, y = ent.pos.y, z = ent.pos.z }
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0037-4b2b-9c37-b2c1c105a037",
								true,
							},
						},
						name = "B4 - Propulsive KB Re-anchor",
						uuid = "1a2b3c4d-0038-4b2b-9c38-b2c1c105a038",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID ~= 48906 then return end
data.idxQuadSetUntil = Now() + 17000
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-003b-4b2b-9c3b-b2c1c105a03b",
								true,
							},
						},
						name = "B4 - Quad Mode Flag",
						uuid = "1a2b3c4d-003c-4b2b-9c3c-b2c1c105a03c",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.spellID == nil then return end
local id = a.spellID
local msg
if id == 48408 then
    msg = "Adds, kill inner bombs first"
elseif id == 48384 then
    -- The harp callout is handled by its windup cast.
    if data.idxWeaponRed ~= nil then data.idxWeaponRed("HARP", 6900) end
    self.used = true
    return
elseif id == 48386 then
    msg = "Bow, in when clear"
else
    return
end
local key = "idxAnn" .. tostring(id)
if data[key] ~= nil and TimeSince(data[key]) < 20000 then
    self.used = true
    return
end
data[key] = Now()
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(msg, true, 6)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0013-4b2b-9c13-b2c1c105a013",
								true,
							},
						},
						name = "B4 - Phase Announces",
						uuid = "1a2b3c4d-0016-4b2b-9c16-b2c1c105a016",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47490,
						spellIDList = 
						{
							47490,
							47491,
							47492,
							50358,
							47494,
							47495,
							47496,
							47507,
							47510,
							47511,
							47512,
						},
						dequeueIfLuaFalse = true,
						name = "Severed/Ancient Channels",
						uuid = "b0516ef4-8255-4bd6-9e7f-995fa4a1b505",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47507,
						spellIDList = 
						{
							47507,
						},
						dequeueIfLuaFalse = true,
						name = "DC Set Channel",
						uuid = "1a2b3c4d-0035-4b2b-9c35-b2c1c105a035",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47514,
						spellIDList = 
						{
							47514,
						},
						dequeueIfLuaFalse = true,
						name = "Fertile Ground Channel",
						uuid = "d1f83b62-4a09-4c75-8e2b-06b5c9d47a18",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 49726,
						spellIDList = 
						{
							49726,
							47632,
							50717,
							49619,
							49646,
							47507,
							48407,
							48403,
						},
						dequeueIfLuaFalse = true,
						name = "Moogle Override Triggers",
						uuid = "a7d20f36-4b18-4c95-8e63-17f5b0d29a44",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47671,
						spellIDList = 
						{
							47671,
							47672,
							47673,
							47674,
							47675,
							47676,
							47677,
							47678,
							47683,
							47684,
							47685,
							47686,
							47687,
							47688,
							50706,
							50707,
							50708,
						},
						dequeueIfLuaFalse = true,
						name = "Blaze Announce/Helpers",
						uuid = "b8e41c27-5d09-4a86-9f72-28c6d1e40b55",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47631,
						spellIDList = 
						{
							47631,
						},
						dequeueIfLuaFalse = true,
						name = "Storm's Breath Channel",
						uuid = "c9f52d38-6e10-4b97-a083-39d7e2f51c66",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47702,
						spellIDList = 
						{
							47702,
						},
						dequeueIfLuaFalse = true,
						name = "Two Terrors Wide Channel",
						uuid = "f2c85a61-9143-4ec0-d3b6-62a0b5c84f99",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 47646,
						spellIDList = 
						{
							47646,
						},
						dequeueIfLuaFalse = true,
						name = "Breathy Duet Channel",
						uuid = "36ac9da5-d587-4c24-b7fa-a6e4f90c8d33",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 50699,
						spellIDList = 
						{
							50699,
							50700,
							47653,
						},
						dequeueIfLuaFalse = true,
						name = "Duet Cluster Markers",
						uuid = "47bd0eb6-e698-4d35-c80b-b7f5a01d9e44",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 50724,
						spellIDList = 
						{
							50724,
							47619,
							47629,
							50728,
							50723,
							50727,
							47620,
							47630,
							50725,
							50726,
						},
						dequeueIfLuaFalse = true,
						name = "AR2 Fugue Channels",
						uuid = "58ce2fd8-f810-4f57-d02d-d918c34f2a77",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 49667,
						spellIDList = 
						{
							49667,
							49668,
							49672,
						},
						dequeueIfLuaFalse = true,
						name = "Sword Dance Channels",
						uuid = "1a2b3c4d-0003-4b2b-9c03-b2c1c105a003",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 48405,
						spellIDList = 
						{
							48405,
						},
						dequeueIfLuaFalse = true,
						name = "Index Lance Shockwave Channel",
						uuid = "1a2b3c4d-0037-4b2b-9c37-b2c1c105a037",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 48906,
						spellIDList = 
						{
							48906,
						},
						dequeueIfLuaFalse = true,
						name = "Index Quadrilogy Channel",
						uuid = "1a2b3c4d-003b-4b2b-9c3b-b2c1c105a03b",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Event",
						eventArgOptionType = 3,
						eventArgType = 2,
						eventSpellID = 50472,
						spellIDList = 
						{
							50472,
							48434,
							48917,
							48408,
							48384,
							48386,
						},
						dequeueIfLuaFalse = true,
						name = "Index Phase Channels",
						uuid = "1a2b3c4d-0013-4b2b-9c13-b2c1c105a013",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 3,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Channels",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "b7d51a09-63cd-4de5-9a41-2f8f1f6d7a01",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil then return end
local src = a.sourceEntityID or a.sourceID
local tid = a.newTetherID
if src == nil or tid == nil then return end
local element
if tid == 400 or tid == 144 then
    element = "fire"
elseif tid == 401 or tid == 145 then
    element = "ice"
elseif tid == 402 or tid == 146 then
    element = "thunder"
else
    return
end
local ent = TensorCore.mGetEntity(src)
if ent == nil or ent.contentid ~= 14504 then return end

-- Start a new set after the previous records expire.
if data.npHeads == nil or (data.npLastTether ~= nil and TimeSince(data.npLastTether) > 60000) then
    data.npHeads = {}
    data.npDraws = {}
    data.npOrder = {}
    data.npSpots = {}
    data.npDone = {}
    data.npAnnounceOrder = {}
end
data.npLastTether = Now()
data.npHeads[src] = element
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"9e3f4cd2-6033-4fb4-bc5d-773df2e9f303",
								true,
							},
						},
						name = "NP - Record Head Elements",
						uuid = "e623802a-d982-4f96-8fb7-08ba7844e227",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newTetherID == 400 or eventArgs.newTetherID == 401 or eventArgs.newTetherID == 402 or eventArgs.newTetherID == 144 or eventArgs.newTetherID == 145 or eventArgs.newTetherID == 146)",
						dequeueIfLuaFalse = true,
						name = "Element Tether IDs",
						uuid = "9e3f4cd2-6033-4fb4-bc5d-773df2e9f303",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 15,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Tethers",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "5c9fa8db-7ac4-4a07-a494-74e5d621146b",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local list = data.npFgVolleyList
if list == nil or data.npFgCenter == nil then return end
local player = TensorCore.mGetPlayer()
if player == nil or player.pos == nil then return end
local now = Now()
for i = 1, #list do
    local v = list[i]
    if v ~= nil and not v.done then
        if now > v.fireAt + 600 then
            v.done = true
        else
            if not v.drawn and v.fireAt - now <= 4500 then
                v.drawn = true
                local dur = (v.fireAt - now) + 600
                local c = data.npFgCenter
                local py = player.pos.y

                -- Mark the firing head separately from the destination.
                local orange = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.6, 0.1, 0.8), 2)
                orange:addTimedCircle(dur, v.x, py, v.z, 2.5)
                if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                    AnyoneCore.addTimedWorldText(dur, "FIRING", { x = v.x, y = py + 2.0, z = v.z }, GUI:ColorConvertFloat4ToU32(1.0, 0.7, 0.2, 1.0), true, 1.6)
                end

                -- Place the destination near arena center.
                local hasBlue = TensorCore.hasBuff(player.id, 5136)
                local hasPink = TensorCore.hasBuff(player.id, 5137)
                local safeH, call
                if hasPink and not hasBlue then
                    safeH, call = v.blueH, "Blue side"
                elseif hasBlue and not hasPink then
                    safeH, call = v.pinkH, "Pink side"
                end
                if safeH ~= nil then
                    local gp = TensorCore.getPosInDirection({ x = c.x, y = py, z = c.z }, safeH, 8)
                    if gp ~= nil then
                        local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.25, 0.7), 2)
                        green:addTimedCircle(dur, gp.x, gp.y, gp.z, 2.5)
                        if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                            AnyoneCore.addTimedWorldText(dur, "SAFE", { x = gp.x, y = gp.y + 1.5, z = gp.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.5)
                        end
                    end
                    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
                        AnyoneCore.Shotcall(call, true, 5)
                    end
                else
                    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
                        AnyoneCore.Shotcall("Any side", true, 5)
                    end
                end
            end
            break
        end
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"f6b03d18-29e5-4a71-b5c2-83d94f0a6e77",
								true,
							},
						},
						name = "NP - FG Guide",
						uuid = "0b74e5c9-2a86-4d13-9fe0-51a2c8d67b90",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local u = data.b1StormUntil
if u == nil or Now() > u then return end
local o = data.b1StormOrigin
if o == nil then return end
local player = TensorCore.mGetPlayer()
if player == nil or player.pos == nil then return end
local px, pz = player.pos.x, player.pos.z
local dx, dz = px - o.x, pz - o.z
local d = math.sqrt(dx * dx + dz * dz)
if d < 0.5 then dx, dz, d = 0, 1, 1 end
local KB = 13
local lx = px + dx / d * KB
local lz = pz + dz / d * KB
local ex, ez = lx - o.x, lz - o.z
local unsafe = (ex * ex + ez * ez) > 31 * 31
local col = unsafe and 2214592767 or 2214657792
local drawer = TensorCore.getStaticFlatDrawer(col)
if drawer == nil then return end
local h = math.atan2(lx - px, lz - pz)
drawer:addArrow(px, player.pos.y + 0.05, pz, h, KB, 0.25, nil, nil, true, false, 0)
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"d0a63e49-7f21-4ca8-b194-40e8f3a62d77",
								true,
							},
						},
						name = "B1 - Storm Breath Landing",
						uuid = "6b05a2d3-9138-4e70-c3b6-62a0f5c84f99",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local u = data.b1NoiseUntil
if u == nil or Now() > u then return end
local player = TensorCore.mGetPlayer()
if player == nil or player.pos == nil then return end
local buffs = {
    -- Wind names indicate their source direction.
    { id = 5054, call = "Blue noise, knocked West", dx = -1 },
    { id = 5055, call = "Blue noise, knocked East", dx = 1 },
    { id = 5052, call = "Green noise, knocked West", dx = -1 },
    { id = 5053, call = "Green noise, knocked East", dx = 1 },
}
local active
for i = 1, 4 do
    if TensorCore.hasBuff(player.id, buffs[i].id) then
        active = buffs[i]
        break
    end
end
if active == nil then
    data.b1NoiseCalled = nil
    return
end
if data.b1NoiseCalled ~= active.id then
    data.b1NoiseCalled = active.id
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall(active.call, true, 8)
    end
end
local KB = 10
local px, py, pz = player.pos.x, player.pos.y, player.pos.z
-- Each Noise resolves after its matching head attack.
local headCid = (active.id == 5054 or active.id == 5055) and 14491 or 14490
local kbAt
local hl = data.b1BlazeHits and data.b1BlazeHits[headCid]
if hl ~= nil then
    for i = 1, #hl do
        local k = hl[i] + 1100
        if k > Now() - 300 and (kbAt == nil or k < kbAt) then kbAt = k end
    end
end
-- Use a shrinking ring because label countdowns use a different clock.
if kbAt ~= nil then
    local rem = kbAt - Now()
    if rem > -200 then
        if data.b1NoiseTextFor ~= kbAt and AnyoneCore ~= nil
            and AnyoneCore.addTimedWorldTextOnEnt ~= nil then
            data.b1NoiseTextFor = kbAt
            AnyoneCore.addTimedWorldTextOnEnt(rem + 300, "KB", player.id,
                GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.5, 2.2)
        end
        if rem > 0 and rem <= 4000 then
            local ring = TensorCore.getStaticFlatDrawer(rem <= 2600 and 2214592767 or 2214657792)
            if ring ~= nil then
                ring:addCircle(px, py + 0.05, pz, 0.5 + 3.5 * rem / 4000)
            end
        end
    end
end
local imminent = kbAt ~= nil and (kbAt - Now()) <= 2600
if imminent and data.b1NoiseKbCalled ~= kbAt then
    data.b1NoiseKbCalled = kbAt
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall("Knockback now", true, 3)
    end
end
-- Turn red shortly before the knockback resolves.
local drawer = TensorCore.getStaticFlatDrawer(imminent and 2214592767 or 2214657792)
if drawer == nil then return end
local h = active.dx > 0 and (math.pi / 2) or (-math.pi / 2)
drawer:addArrow(px, py + 0.05, pz, h, KB, 0.25, nil, nil, true, false, 0)
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"8b1a42fa-2a3c-4179-ac4f-fb39e45b3c88",
								true,
							},
						},
						name = "B1 - Noise Guide",
						uuid = "9c2b53ab-3b4d-4280-bd50-0c4af56c4d99",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
if data.b1AR2Call == nil then return end
if Now() < (data.b1AR2CallTime or 0) then return end
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(data.b1AR2Call, true, 6)
end
data.b1AR2Call = nil
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"7a2f53ac-4c5e-4291-be61-1d5ba67d5e00",
								true,
							},
						},
						name = "B1 - AR2 Deferred Call",
						uuid = "8b3a64bd-5d6f-43a2-cf72-2e6cb78e6f11",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
if data.b2LlSwords == nil then return end
local player = TensorCore.mGetPlayer()
if player == nil or player.pos == nil then return end

-- Find the next unresolved knockback.
local active
for _, r in pairs(data.b2LlSwords) do
    if not r.done and r.hitAt ~= nil and r.hitAt > Now() - 400 then
        if active == nil or r.hitAt < active.hitAt then active = r end
    end
end
if active == nil then
    if data.b2LlKbTextUuid ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
        AnyoneCore.removeTimedWorldText(data.b2LlKbTextUuid)
        data.b2LlKbTextUuid = nil
        data.b2LlKbTextFor = nil
    end
    return
end
local rem = active.hitAt - Now()
if rem > 9000 then return end

-- Use a shrinking ring because label countdowns use a different clock.
if data.b2LlKbTextFor ~= active.hitAt and AnyoneCore ~= nil
    and AnyoneCore.addTimedWorldTextOnEnt ~= nil and rem > 0 then
    data.b2LlKbTextFor = active.hitAt
    AnyoneCore.addTimedWorldTextOnEnt(rem + 300, "KB", player.id,
        GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.5, 2.2)
end



-- Point from the player toward the projected landing position.
local KB = 10
local px, py, pz = player.pos.x, player.pos.y, player.pos.z
local dx, dz = px - active.x, pz - active.z
if dx * dx + dz * dz < 0.04 then dz = -1 end
local h = math.atan2(dx, dz)
local imminent = rem <= 2600
-- The shrinking ring acts as the countdown.
if rem > 0 and rem <= 4000 then
    local ring = TensorCore.getStaticFlatDrawer(imminent and 2214592767 or 2214657792)
    if ring ~= nil then
        ring:addCircle(px, py + 0.05, pz, 0.5 + 3.5 * rem / 4000)
    end
end
local drawer = TensorCore.getStaticFlatDrawer(imminent and 2214592767 or 2214657792)
if drawer == nil then return end
drawer:addArrow(px, py + 0.05, pz, h, KB, 0.25, nil, nil, true, false, 0)
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0004-4b2b-9c04-b2c1c105a004",
								true,
							},
						},
						name = "B2 - Leaping Lift Guide",
						uuid = "1a2b3c4d-0007-4b2b-9c07-b2c1c105a007",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
if data.idxKbUntil == nil or Now() > data.idxKbUntil then return end
if data.idxKbSrcs == nil or #data.idxKbSrcs == 0 or data.idxKbAt == nil then return end
local player = TensorCore.mGetPlayer()
if player == nil or player.pos == nil then return end
local px, py, pz = player.pos.x, player.pos.y, player.pos.z
local best, bd
for i = 1, #data.idxKbSrcs do
    local s = data.idxKbSrcs[i]
    local d = (px - s.x) ^ 2 + (pz - s.z) ^ 2
    if bd == nil or d < bd then best, bd = s, d end
end
local rem = data.idxKbAt - Now()
if rem < -300 then return end
local imminent = rem <= 2600
if imminent and data.idxKbCalled ~= data.idxKbAt then
    data.idxKbCalled = data.idxKbAt
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall("Knockback now", true, 3)
    end
end
if rem > 0 and rem <= 4000 then
    local ring = TensorCore.getStaticFlatDrawer(imminent and 2214592767 or 2214657792)
    if ring ~= nil then
        ring:addCircle(px, py + 0.05, pz, 0.5 + 3.5 * rem / 4000)
    end
end
local dx, dz = px - best.x, pz - best.z
if dx * dx + dz * dz < 0.04 then dz = -1 end
local h = math.atan2(dx, dz)
local drawer = TensorCore.getStaticFlatDrawer(imminent and 2214592767 or 2214657792)
if drawer == nil then return end
drawer:addArrow(px, py + 0.05, pz, h, 10, 0.25, nil, nil, true, false, 0)
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0025-4b2b-9c25-b2c1c105a025",
								true,
							},
						},
						name = "B4 - Propulsive KB Guide",
						uuid = "1a2b3c4d-0029-4b2b-9c29-b2c1c105a029",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.npFgVolleyList ~= nil",
						dequeueIfLuaFalse = true,
						name = "FG Schedule Active",
						uuid = "f6b03d18-29e5-4a71-b5c2-83d94f0a6e77",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.b1StormUntil ~= nil and Now() < data.b1StormUntil",
						dequeueIfLuaFalse = true,
						name = "Storm KB Window",
						uuid = "d0a63e49-7f21-4ca8-b194-40e8f3a62d77",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.b1NoiseUntil ~= nil and Now() < data.b1NoiseUntil",
						dequeueIfLuaFalse = true,
						name = "Noise Window",
						uuid = "8b1a42fa-2a3c-4179-ac4f-fb39e45b3c88",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.b1AR2Call ~= nil",
						dequeueIfLuaFalse = true,
						name = "AR2 Deferred Call Pending",
						uuid = "7a2f53ac-4c5e-4291-be61-1d5ba67d5e00",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.b2LlSwords ~= nil",
						dequeueIfLuaFalse = true,
						name = "Leaping Lift Schedule Active",
						uuid = "1a2b3c4d-0004-4b2b-9c04-b2c1c105a004",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return data.idxKbUntil ~= nil and Now() <= data.idxKbUntil",
						dequeueIfLuaFalse = true,
						name = "Index KB Window Active",
						uuid = "1a2b3c4d-0025-4b2b-9c25-b2c1c105a025",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 12,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Frame",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "c7e2f940-1b56-4a08-92dd-4f6a8e01c355",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local cid = a.contentID or a.entityContentID
if cid ~= 14497 and cid ~= 14498 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end
-- A gap between spawn batches starts a new layout.
if data.b1Fonts == nil or (data.b1FontsAt ~= nil and TimeSince(data.b1FontsAt) > 5000) then
    data.b1Fonts = { [14497] = {}, [14498] = {} }
end
data.b1FontsAt = Now()
local list = data.b1Fonts[cid]
list[#list + 1] = { x = ent.pos.x, y = ent.pos.y, z = ent.pos.z, h = ent.pos.h }
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"e1b74f50-8032-4db9-c2a5-51f9a4b73e88",
								true,
							},
						},
						name = "B1 - Font Recorder",
						uuid = "25fb8d94-c476-4b13-a6e9-95d3e8fb7c22",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil then return end
local cid = a.contentID or a.entityContentID
-- 14494: Lightning; 14495: Ice.
if cid ~= 14494 and cid ~= 14495 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end
if data.b1DuetAxis == nil or TimeSince(data.b1DuetAxis.at or 0) > 40000 then
    data.b1DuetAxis = {}
end
local ax = data.b1DuetAxis
-- Arena center: (-900, 700).
local axis = math.abs(ent.pos.z - 700.0) > math.abs(ent.pos.x + 900.0) and "col" or "row"
if cid == 14495 then ax.ice = axis else ax.levin = axis end
ax.at = Now()
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-002f-4b2b-9c2f-b2c1c105a02f",
								true,
							},
						},
						name = "B1 - Duet Axis Recorder",
						uuid = "1a2b3c4d-0030-4b2b-9c30-b2c1c105a030",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local cid = a.entityContentID
if cid == nil then
    local e = TensorCore.mGetEntity(a.entityID)
    cid = e ~= nil and e.contentid or nil
end
if cid ~= 14723 and cid ~= 14724 and cid ~= 14725 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end
local dx, dz = ent.pos.x - 0.0, ent.pos.z + 628.0
local r = math.sqrt(dx * dx + dz * dz)
if r < 17 or r > 22 then return end
local k = math.atan2(dx, dz) / (math.pi / 3)
local snapped = math.floor(k + 0.5)
if math.abs(k - snapped) > 0.15 then return end
if data.idxChemAt ~= nil and TimeSince(data.idxChemAt) < 35000 then return end
data.idxChemAt = Now()
-- Platform axes are even multiples of 60 degrees.
local msg = (snapped % 2 == 0) and "Chemistry, start home" or "Chemistry, start clockwise"
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(msg, true, 7)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0049-4b2b-9c49-b2c1c105a049",
								true,
							},
						},
						name = "B4 - Chemistry Start",
						uuid = "1a2b3c4d-0048-4b2b-9c48-b2c1c105a048",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local cid = a.entityContentID
if cid == nil then
    local e = TensorCore.mGetEntity(a.entityID)
    cid = e ~= nil and e.contentid or nil
end
local ELEM = { [14723] = "ICE", [14724] = "FIRE", [14725] = "LIGHTNING" }
local elem = ELEM[cid]
if elem == nil then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil then return end
local dx, dz = ent.pos.x - 0.0, ent.pos.z + 628.0
local r = math.sqrt(dx * dx + dz * dz)
if r < 18 or r > 23 then return end
local ang = math.atan2(dx, dz)
local k = ang / (math.pi / 3)
if math.abs(k - math.floor(k + 0.5)) < 0.15 then return end
if data.idxOmni2 == nil or TimeSince(data.idxOmni2.at) > 15000 then
    data.idxOmni2 = { at = Now(), orbs = {} }
end
local st2 = data.idxOmni2
st2.at = Now()
st2.orbs[#st2.orbs + 1] = { elem = elem, ang = ang }
if #st2.orbs < 6 or st2.riders ~= nil then
    self.used = true
    return
end
-- Shortest clockwise travel to an element axis determines order.
local dirs = data.idxOmni ~= nil and data.idxOmni.dirs or nil
if dirs == nil then
    AnyoneCore.log("[IDX Omni] Pointer axes unavailable for paired volleys.", 5)
    self.used = true
    return
end
local best = {}
for i = 1, #st2.orbs do
    local o = st2.orbs[i]
    local h = dirs[o.elem]
    if h ~= nil then
        for _, e in ipairs({ h, h + math.pi }) do
            local d = (o.ang - e) % (2 * math.pi)
            if best[o.elem] == nil or d < best[o.elem] then best[o.elem] = d end
        end
    end
end
local order = {}
for e, d in pairs(best) do order[#order + 1] = { e = e, d = d } end
table.sort(order, function(x, y) return x.d < y.d end)
st2.riders = {}
for i = 1, #order do
    st2.riders[i] = order[i].e
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0049-4b2b-9c49-b2c1c105a049",
								true,
							},
						},
						name = "B4 - Omni2 Pinwheels",
						uuid = "1a2b3c4d-004e-4b2b-9c4e-b2c1c105a04e",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.contentID == 14497 or eventArgs.contentID == 14498 or eventArgs.entityContentID == 14497 or eventArgs.entityContentID == 14498)",
						dequeueIfLuaFalse = true,
						name = "Arcane Font Add",
						uuid = "e1b74f50-8032-4db9-c2a5-51f9a4b73e88",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.contentID == 14494 or eventArgs.contentID == 14495 or eventArgs.entityContentID == 14494 or eventArgs.entityContentID == 14495)",
						dequeueIfLuaFalse = true,
						name = "Duet Charmed Shooter Add",
						uuid = "1a2b3c4d-002f-4b2b-9c2f-b2c1c105a02f",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local c = eventArgs ~= nil and eventArgs.entityContentID or nil if c == nil and eventArgs ~= nil and eventArgs.entityID ~= nil then local e = TensorCore.mGetEntity(eventArgs.entityID) c = e ~= nil and e.contentid or nil end return c == 14723 or c == 14724 or c == 14725",
						dequeueIfLuaFalse = true,
						name = "Chemistry Crystal Adds",
						uuid = "1a2b3c4d-0049-4b2b-9c49-b2c1c105a049",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 5,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Adds",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "14ea7c83-b365-4a02-95d8-84c2d7ea6b11",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.aoeID == nil then return end
local id = a.aoeID
if id ~= 47500 and id ~= 47509 and id ~= 47501 then return end
local x, y, z, h = a.x, a.y, a.z, a.heading
if x == nil or y == nil or z == nil or h == nil then return end

-- Exact slab creates also update the durable safe-overlay cuts.
if data.npExaCarve == nil then
    data.npExaCarve = function(cx2, cz2, len, wid, hh, delayMs, durMs)
        data.npExaCuts = data.npExaCuts or {}
        data.npExaCuts[#data.npExaCuts + 1] = { x = cx2, z = cz2, l = len, w = wid, h = hh,
            showAt = Now() + delayMs, til = Now() + delayMs + durMs }
        if data.npSafeShapes ~= nil and data.npSafeChannel ~= nil
            and Argus2 ~= nil and Argus2.RenderFlags ~= nil
            and TensorCore.getStaticFlatDrawer ~= nil then
            local cut = TensorCore.getStaticFlatDrawer(1493237504, nil, data.npSafeChannel)
            local hy2 = (data.npBossPos ~= nil and data.npBossPos.y or -724.0) + 0.05
            data.npSafeShapes[#data.npSafeShapes + 1] = cut:addTimedCenteredRect(durMs, cx2, hy2, cz2, len, wid, hh, delayMs, false, false, Argus2.RenderFlags.FLAG_OCCLUDE)
        end
    end
end

if id == 47501 then
    local c = TensorCore.getPosInDirection({ x = x, y = y, z = z }, h, 5)
    if c ~= nil then
        local dms = math.floor((a.duration or 0.7) * 1000)
        local danger = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.75, 0.3, 1.0, 0.45), 1)
        danger:addTimedCenteredRect(dms, c.x, c.y, c.z, 10, 60, h)
        data.npExaCarve(c.x, c.z, 10, 60, h, 0, dms)
    end
    self.used = true
    return
end

local firstPair, initialImpact
if id == 47509 then
    firstPair, initialImpact = 3300, 1200
else
    firstPair, initialImpact = 5750, 3700
end
local CADENCE = 2100
local LEAD = 2000
local PAIRS = 3

local origin = { x = x, y = y, z = z }
local center = TensorCore.getPosInDirection(origin, h, 30)
if center == nil then return end

-- Keep the direction band visually subordinate to active slabs.
local band = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.75, 0.3, 1.0, 0.12), 1)
local bandDur = firstPair + (PAIRS - 1) * CADENCE
band:addTimedCenteredRect(bandDur, center.x, center.y, center.z, 60, 60, h)

-- Draw the initial line through impact.
local danger = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.75, 0.3, 1.0, 0.45), 1)
danger:addTimedCenteredRect(initialImpact, center.x, center.y, center.z, 60, 10, h)

-- Show each slab pair only during its lead window.
local perp1 = h + math.pi / 2
local perp2 = h - math.pi / 2
for k = 1, PAIRS do
    -- Slab positions are inner-edge anchors.
    local off = 10 * k
    local impact = firstPair + (k - 1) * CADENCE
    local delay = impact - LEAD
    if delay < 0 then delay = 0 end
    local dur = impact - delay
    local p1 = TensorCore.getPosInDirection(center, perp1, off)
    local p2 = TensorCore.getPosInDirection(center, perp2, off)
    if p1 ~= nil then
        danger:addTimedCenteredRect(dur, p1.x, p1.y, p1.z, 60, 10, h, delay)
    end
    if p2 ~= nil then
        danger:addTimedCenteredRect(dur, p2.x, p2.y, p2.z, 60, 10, h, delay)
    end
end

-- Persist matching cuts for later safe-overlay rebuilds.
data.npExaCarve(center.x, center.z, 60, 10, h, 0, initialImpact)
for k = 1, PAIRS do
    local off = 10 * k
    local impact = firstPair + (k - 1) * CADENCE
    local delay = impact - LEAD
    if delay < 0 then delay = 0 end
    local dur = impact - delay
    local p1 = TensorCore.getPosInDirection(center, perp1, off)
    local p2 = TensorCore.getPosInDirection(center, perp2, off)
    if p1 ~= nil then data.npExaCarve(p1.x, p1.z, 60, 10, h, delay, dur) end
    if p2 ~= nil then data.npExaCarve(p2.x, p2.z, 60, 10, h, delay, dur) end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"e8b94d17-52c0-4a6f-9d31-7f80c2a5be07",
								true,
							},
						},
						name = "NP - Dark Current Exas",
						uuid = "3d60e9a2-84f5-4c17-b028-95a1e6d74c33",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.aoeID == nil then return end
local id = a.aoeID
local FULG_DONUT = { [47629] = true, [50727] = true }
local FREZ_CIRCLE = { [50728] = true, [47630] = true }
if not FULG_DONUT[id] and not FREZ_CIRCLE[id] then return end
if a.x == nil or a.y == nil or a.z == nil then return end
local ms = (a.duration or 10.7) * 1000
local delay = 0
if data.b1AR2ShapeEnd ~= nil and data.b1AR2ShapeEnd > Now() then
    delay = data.b1AR2ShapeEnd - Now() + 200
end
local dur = ms - delay
if dur < 1500 then dur = 1500 end
data.b1AR2ShapeEnd = Now() + delay + dur
local danger = TensorCore.getMoogleDrawer()
if FREZ_CIRCLE[id] then
    danger:addTimedCircle(dur, a.x, a.y, a.z, 20, delay)
else
    danger:addTimedDonut(dur, a.x, a.y, a.z, 18, 60, delay)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"69df31ea-2a3b-4068-fc4f-fb29e45b3c88",
								true,
							},
						},
						name = "B1 - AR2 Boss Shapes",
						uuid = "7a1e42fb-3b4c-4179-0d50-0c3af56c4d99",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.aoeCastType ~= 10 then return end
-- Other cast-type 10 AOEs must not match this handler.
local t = a.aoeType
if t == nil or t < 750 or t > 755 then return end
local L = a.aoeLength
if L == nil or L <= 0 then return end
local x, y, z = a.x, a.y, a.z
local h = a.heading or 0
-- Trim the payload duration to the sweep cadence.
local hitMs = math.floor(((a.delay or 0) + (a.duration or 3.2)) * 1000) - 1200

-- Draw an annular sector rather than a full pie.
local inner = L - 5
local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.45), 1)
red:addTimedDonutCone(hitMs, x, y, z, inner, L, math.rad(90), h, 0)

-- Preview the next quarter with an outline.
local STEP = { [750] = -math.pi / 2, [752] = math.pi / 2 }
local step = STEP[a.aoeType or -1]
if step ~= nil then
    local thin = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.6, 0.2, 0.30), 2)
    thin:addTimedDonutCone(4400, x, y, z, inner, L, math.rad(90), h + step, 0)
elseif a.aoeType ~= 755 and AnyoneCore ~= nil and AnyoneCore.log ~= nil then
    data.b2SweepWarned = data.b2SweepWarned or {}
    if not data.b2SweepWarned[a.aoeType or -1] then
        data.b2SweepWarned[a.aoeType or -1] = true
        AnyoneCore.log("[B2 Sweeps] Unsupported sweep type " .. tostring(a.aoeType) .. "; drawing current arc only.", 5)
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0033-4b2b-9c33-b2c1c105a033",
								true,
							},
						},
						name = "B2 - Throwing Sword Sweeps",
						uuid = "1a2b3c4d-0034-4b2b-9c34-b2c1c105a034",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.aoeID == nil then return end
local id = a.aoeID
if id ~= 48455 and id ~= 48445 then return end
if a.x == nil or a.z == nil then return end

-- Reset before the next mechanic can reuse the counter.
if data.idxBlitz == nil or (data.idxBlitzAt ~= nil and TimeSince(data.idxBlitzAt) > 12000) then
    data.idxBlitz = { n = 0, lastSet = nil }
end
local st = data.idxBlitz
if st.lastSet == nil or TimeSince(st.lastSet) > 800 then
    st.n = st.n + 1
    st.lastSet = Now()
end
data.idxBlitzAt = Now()

local ms = (a.duration or 8) * 1000
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    -- A rectangle payload starts at its near edge.
    local h = a.heading or 0
    local half = (a.aoeLength or 15) / 2
    local lx = a.x + half * math.sin(h)
    local lz = a.z + half * math.cos(h)
    AnyoneCore.addTimedWorldText(ms, tostring(st.n), { x = lx, y = (a.y or -684) + 1.5, z = lz }, GUI:ColorConvertFloat4ToU32(1.0, 0.7, 0.3, 1.0), true, 1.5)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0014-4b2b-9c14-b2c1c105a014",
								true,
							},
						},
						name = "B4 - Bladeblitz Order",
						uuid = "1a2b3c4d-0017-4b2b-9c17-b2c1c105a017",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.aoeID ~= 48445 then return end
if a.x == nil or a.z == nil then return end
local cx, cz, cy = 0.0, -628.0, -684.0
local dx, dz = a.x - cx, a.z - cz
local r = math.sqrt(dx * dx + dz * dz)
if r < 24 then return end
local ang = math.atan2(dx, dz)
-- The lateral offset determines rotation direction.
local third = 2.0944
local A = math.floor(ang / third + 0.5) * third
local rel = (ang - A + math.pi) % (2 * math.pi) - math.pi
local s = rel >= 0 and 1 or -1
-- Canonical path, mirrored and rotated for each entry.
local PATH = {
    { 3.25, 21.0 }, { 3.25, 15.0 }, { 3.25, 9.0 }, { 7.79, 4.5 },
    { 9.42, -1.68 }, { 14.62, -4.68 }, { 19.81, -7.68 }, { 25.01, -10.68 },
}
local danger = TensorCore.getMoogleDrawer()
local cosA, sinA = math.cos(A), math.sin(A)
for k = 1, 8 do
    local px, pz = PATH[k][1] * s, PATH[k][2]
    local wx = px * cosA + pz * sinA + cx
    local wz = pz * cosA - px * sinA + cz
    local hitIn = 7100 + 2000 * (k - 1)
    local delay = hitIn - 4000
    if delay < 0 then delay = 0 end
    danger:addTimedCircle(hitIn - delay + 300, wx, cy, wz, 6, delay)
end
if data.idxExaCallAt == nil or TimeSince(data.idxExaCallAt) > 20000 then
    data.idxExaCallAt = Now()
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall(s == 1 and "Exaflares, rotating counterclockwise" or "Exaflares, rotating clockwise", true, 6)
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-004a-4b2b-9c4a-b2c1c105a04a",
								true,
							},
						},
						name = "B4 - Exaflares",
						uuid = "1a2b3c4d-004c-4b2b-9c4c-b2c1c105a04c",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.aoeID == 47500 or eventArgs.aoeID == 47501 or eventArgs.aoeID == 47509)",
						dequeueIfLuaFalse = true,
						name = "Dark Current Lines",
						uuid = "e8b94d17-52c0-4a6f-9d31-7f80c2a5be07",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.aoeID == 50728 or eventArgs.aoeID == 47629 or eventArgs.aoeID == 50727 or eventArgs.aoeID == 47630)",
						dequeueIfLuaFalse = true,
						name = "AR2 Boss Shape AOEs",
						uuid = "69df31ea-2a3b-4068-fc4f-fb29e45b3c88",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and eventArgs.aoeCastType == 10 and eventArgs.aoeType ~= nil and eventArgs.aoeType >= 750 and eventArgs.aoeType <= 755",
						dequeueIfLuaFalse = true,
						name = "Throwing Sword Ring Sweeps",
						uuid = "1a2b3c4d-0033-4b2b-9c33-b2c1c105a033",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.aoeID == 48455 or eventArgs.aoeID == 48445)",
						dequeueIfLuaFalse = true,
						name = "Index Bladeblitz AOEs",
						uuid = "1a2b3c4d-0014-4b2b-9c14-b2c1c105a014",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and eventArgs.aoeID == 48445",
						dequeueIfLuaFalse = true,
						name = "Exa Entry AOEs",
						uuid = "1a2b3c4d-004a-4b2b-9c4a-b2c1c105a04a",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 18,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] AOEs",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "f2a71c58-9e04-4b3d-a6e2-1c85d09f3b44",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local aura = a.newActiveAura1
if aura ~= 2993 and aura ~= 3052 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil or ent.contentid ~= 14822 then return end

-- Start a new set after the previous aura batch expires.
if data.b2LlSwords == nil or (data.b2LlLastAura ~= nil and TimeSince(data.b2LlLastAura) > 25000) then
    data.b2LlSwords = {}
    data.b2LlCount = 0
    data.b2LlBeats = 0
    data.b2LlFirstAura = nil
    data.b2LlAOEOrders = nil
    data.b2LlAOECalled = nil
end
if data.b2LlSwords[a.entityID] ~= nil then return end

if data.b2LlFirstAura == nil then data.b2LlFirstAura = Now() end
data.b2LlLastAura = Now()
data.b2LlCount = data.b2LlCount + 1

local isAOE = (aura == 3052)
-- A Steelsforge sword uses one beat for its circle and one for knockback.
local beatIdx = data.b2LlBeats
local hitAt = data.b2LlFirstAura + 11300 + beatIdx * 2500
data.b2LlBeats = data.b2LlBeats + (isAOE and 2 or 1)
local dur = hitAt - Now() + 1500
if dur < 3000 then dur = 12000 end

local p = ent.pos
local rec = { kind = isAOE and "AOE" or "KB", x = p.x, z = p.z, y = p.y,
              order = data.b2LlCount, beatIdx = beatIdx,
              -- Steelsforge knockback follows its circle by one beat.
              hitAt = hitAt + (isAOE and 2500 or 0),
              uuids = {}, texts = {} }

-- Wait for both Steelsforge auras before announcing their order.
if isAOE then
    data.b2LlAOEOrders = data.b2LlAOEOrders or {}
    data.b2LlAOEOrders[#data.b2LlAOEOrders + 1] = data.b2LlCount
    if #data.b2LlAOEOrders == 2 and data.b2LlAOECalled == nil then
        data.b2LlAOECalled = true
        if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
            local W = { "one", "two", "three", "four", "five" }
            local o1, o2 = data.b2LlAOEOrders[1], data.b2LlAOEOrders[2]
            AnyoneCore.Shotcall("Circles on " .. (W[o1] or o1) .. " and " .. (W[o2] or o2), true, 6)
        end
    end
end
if isAOE then
    local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.25, 0.2, 0.45), 1)
    rec.uuids[#rec.uuids + 1] = red:addTimedCircle(dur, p.x, p.y, p.z, 13)
else
    local blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.3, 0.6, 1.0, 0.55), 2)
    rec.uuids[#rec.uuids + 1] = blue:addTimedCircle(dur, p.x, p.y, p.z, 2)
end
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    local label = (isAOE and "AOE " or "KB ") .. tostring(data.b2LlCount)
    local col
    if isAOE then
        col = GUI:ColorConvertFloat4ToU32(1.0, 0.35, 0.3, 1.0)
    else
        col = GUI:ColorConvertFloat4ToU32(0.4, 0.7, 1.0, 1.0)
    end
    rec.texts[#rec.texts + 1] = AnyoneCore.addTimedWorldText(dur, label, { x = p.x, y = p.y + 2.0, z = p.z }, col, true, 1.3)
end
data.b2LlSwords[a.entityID] = rec
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"7c1f2ab0-4e11-4d92-9a3b-551be0c7d101",
								true,
							},
						},
						name = "SD - Predraw KB/AOE Swords",
						uuid = "18ba4446-e82c-4b93-b438-f39b659d22b9",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local aura = a.newActiveAura1
if aura ~= 2942 and aura ~= 2943 and aura ~= 2944 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil or ent.contentid ~= 14825 then return end

if data.b2Rings == nil or (data.b2RingLast ~= nil and TimeSince(data.b2RingLast) > 30000) then
    data.b2Rings = {}
    data.b2RingCount = 0
end
if data.b2Rings[a.entityID] ~= nil and data.b2Rings[a.entityID].stage ~= "done" then return end
data.b2RingLast = Now()
data.b2RingCount = data.b2RingCount + 1

local R = { [2942] = 10, [2943] = 15, [2944] = 20 }
local r = R[aura]
-- Pose state remains valid until another pose event replaces it.
local ord = data.b2RingOrder and data.b2RingOrder[a.entityID]
local firstShape = ord ~= nil and ord.first or nil
local donutFirst = firstShape == "donut"
local p = ent.pos
local dur = 12000 -- Fallback if cleanup events are missed.

if data.b2RingHelpers == nil then
    data.b2RingHelpers = true
    data.b2RingWipe = function(rec)
        if rec == nil then return end
        for i = 1, #rec.shapes do Argus.deleteTimedShape(rec.shapes[i]) end
        rec.shapes = {}
        if rec.text ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            AnyoneCore.removeTimedWorldText(rec.text)
            rec.text = nil
        end
    end
    -- Unknown order shows outlines of both possible shapes.
    data.b2RingDraw = function(rec, shape, ms)
        data.b2RingWipe(rec)
        if shape == nil then
            local amber = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.8, 0.2, 0.6), 2)
            rec.shapes[#rec.shapes + 1] = amber:addTimedCircle(ms, rec.x, rec.y, rec.z, rec.r)
            rec.shapes[#rec.shapes + 1] = amber:addTimedDonut(ms, rec.x, rec.y, rec.z, rec.r, rec.r + 1)
            if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                rec.text = AnyoneCore.addTimedWorldText(ms, "?", { x = rec.x, y = rec.y + 2.0, z = rec.z }, GUI:ColorConvertFloat4ToU32(1.0, 0.85, 0.3, 1.0), true, 1.6)
            end
            return
        end
        local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.45), 1)
        if shape == "chariot" then
            rec.shapes[#rec.shapes + 1] = red:addTimedCircle(ms, rec.x, rec.y, rec.z, rec.r)
        else
            rec.shapes[#rec.shapes + 1] = red:addTimedDonut(ms, rec.x, rec.y, rec.z, rec.r, 31)
        end
        if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
            local lbl = shape == "chariot" and "OUT" or "IN"
            lbl = lbl .. (rec.assumed and " likely" or " now")
            rec.text = AnyoneCore.addTimedWorldText(ms, lbl, { x = rec.x, y = rec.y + 2.0, z = rec.z }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.3)
        end
    end
    -- Find the post-flip point with the greatest clearance.
    data.b2RingNext = function()
        if data.b2NextShapes ~= nil then
            for i = 1, #data.b2NextShapes do Argus.deleteTimedShape(data.b2NextShapes[i]) end
            data.b2NextShapes = nil
        end
        if data.b2NextText ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            AnyoneCore.removeTimedWorldText(data.b2NextText)
            data.b2NextText = nil
        end
        local live = {}
        for _, rec in pairs(data.b2Rings) do
            if rec.stage == 1 or rec.stage == 2 then
                live[#live + 1] = rec
            end
        end
        -- The NEXT marker is only useful for multi-ring patterns.
        if #live < 2 then return end
        for i = 1, #live do
            -- Treat the factory pose as known until the first hit corrects it.
            if live[i].second == nil then return end
        end
        -- Fine sampling is required for narrow safe pockets.
        local cx, cz = 600.0, 703.975
        local best, bestScore
        for ri = 0, 19 do
            local r = ri * 1.5
            local steps = ri == 0 and 1 or 32
            for ai = 0, steps - 1 do
                local ang = ai * (2 * math.pi / steps)
                local px = cx + r * math.sin(ang)
                local pz = cz + r * math.cos(ang)
                local score = 29.5 - r
                for i = 1, #live do
                    local rec = live[i]
                    local dx, dz = px - rec.x, pz - rec.z
                    local d = math.sqrt(dx * dx + dz * dz)
                    local c
                    if rec.second == "chariot" then
                        c = d - rec.r
                    else
                        c = rec.r - d
                    end
                    if c < score then score = c end
                end
                if bestScore == nil or score > bestScore then
                    bestScore = score
                    best = { x = px, z = pz }
                end
            end
        end
        if best == nil or bestScore == nil or bestScore < 0.3 then
            AnyoneCore.log("[B2 Cyclo] No shared safe position found.", 5)
            return
        end
        local y = live[1].y
        local yellow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.9, 0.2, 0.8), 2)
        -- Set-end cleanup normally removes this first.
        data.b2NextShapes = { yellow:addTimedCircle(25000, best.x, y, best.z, 1.5) }
        if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
            data.b2NextText = AnyoneCore.addTimedWorldText(25000, "NEXT", { x = best.x, y = y + 1.6, z = best.z }, GUI:ColorConvertFloat4ToU32(1.0, 0.95, 0.4, 1.0), true, 1.3)
        end
    end
    -- Build the shared safe overlay from all live rings.
    data.b2RingOverlay = function()
        if ArgusDrawsPlus == nil or ArgusDrawsPlus.getEnabled() ~= true
            or Argus2 == nil or Argus2.getNextUnusedChannel == nil
            or TensorCore.getStaticFlatDrawer == nil then return end
        if data.b2SafeShapes ~= nil then
            for i = 1, #data.b2SafeShapes do Argus.deleteTimedShape(data.b2SafeShapes[i]) end
        end
        data.b2SafeShapes = {}
        local live = {}
        for _, rec in pairs(data.b2Rings) do
            if rec.stage == 1 or rec.stage == 2 then live[#live + 1] = rec end
        end
        -- Only multi-ring patterns need the safe overlay.
        if #live < 2 then return end
        for i = 1, #live do
            local shape = live[i].stage == 1 and live[i].first or live[i].second
            -- Include rings using the factory pose assumption.
            if shape == nil then return end
        end
        local channel = data.b2SafeChannel
        if channel == nil then
            channel = Argus2.getNextUnusedChannel(true)
            if channel == nil then channel = 1 end
            data.b2SafeChannel = channel
        end
        local green = 1493237504
        local occ = Argus2.RenderFlags.FLAG_OCCLUDE
        local cx, cz = 600.0, 703.975
        local hy = live[1].y + 0.05
        local ss = data.b2SafeShapes
        local dur2 = 12000
        local base = TensorCore.getStaticFlatDrawer(green, nil, channel)
        ss[#ss + 1] = base:addTimedCircle(dur2, cx, hy, cz, 29.5, 0, false, true, 0)
        local cut = TensorCore.getStaticFlatDrawer(green, nil, channel)
        for i = 1, #live do
            local rec = live[i]
            local shape = rec.stage == 1 and rec.first or rec.second
            if shape == "chariot" then
                ss[#ss + 1] = cut:addTimedCircle(dur2, rec.x, hy, rec.z, rec.r, 0, false, false, occ)
            else
                ss[#ss + 1] = cut:addTimedDonut(dur2, rec.x, hy, rec.z, rec.r, 60, 0, false, false, occ)
            end
        end
        -- Repaint danger shapes above the cutout overlay.
        local ch2 = data.b2DangerChannel
        if ch2 == nil then
            ch2 = Argus2.getNextUnusedChannel(true)
            if ch2 == nil then ch2 = channel + 1 end
            data.b2DangerChannel = ch2
        end
        local redF = TensorCore.getStaticFlatDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.32), nil, ch2)
        for i = 1, #live do
            local rec = live[i]
            local shape = rec.stage == 1 and rec.first or rec.second
            if shape == "chariot" then
                ss[#ss + 1] = redF:addTimedCircle(dur2, rec.x, hy, rec.z, rec.r, 0, false, true, 0)
            else
                ss[#ss + 1] = redF:addTimedDonut(dur2, rec.x, hy, rec.z, rec.r, 60, 0, false, true, 0)
            end
        end
    end
end

-- Rings without a pose event use the factory chariot-first pose.
local assumed = firstShape == nil
local f1 = firstShape or "chariot"
local rec = {
    x = p.x, y = p.y, z = p.z, r = r,
    first = f1,
    second = f1 == "donut" and "chariot" or "donut",
    assumed = assumed or nil,
    stage = 1, shapes = {}, text = nil,
}
data.b2Rings[a.entityID] = rec
data.b2RingDraw(rec, rec.first, dur)
data.b2RingOverlay()
data.b2RingNext()
if assumed then
    AnyoneCore.log("[B2 Cyclo] Pose unavailable; using default chariot-first order.", 5)
end

-- Other actor state exposes ring size but not shape order.

-- Only the centered single-ring pattern receives a callout.
local ddx, ddz = p.x - 600.0, p.z - 703.975
if firstShape ~= nil and ddx * ddx + ddz * ddz < 9 and AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall(donutFirst and "Go in first, then out" or "Go out first, then in", true, 6)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0001-4b2b-9c01-b2c1c105a001",
								true,
							},
						},
						name = "B2 - Cycloswords Rings",
						uuid = "1a2b3c4d-0008-4b2b-9c08-b2c1c105a008",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local element
if a.newActiveAura1 == 2908 then
    element = "fire"
elseif a.newActiveAura1 == 2909 then
    element = "ice"
elseif a.newActiveAura1 == 2910 then
    element = "thunder"
else
    return
end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.contentid ~= 14503 then return end
if ent.pos ~= nil then
    data.npBossPos = { x = ent.pos.x, y = ent.pos.y, z = ent.pos.z }
end
if data.npSpots == nil or data.npPromote == nil then return end

data.npAnnounceOrder = data.npAnnounceOrder or {}
local known = false
for i = 1, #data.npAnnounceOrder do
    if data.npAnnounceOrder[i] == element then known = true end
end
if not known then
    data.npAnnounceOrder[#data.npAnnounceOrder + 1] = element
    local n = #data.npAnnounceOrder
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil
        and AnyoneCore.removeTimedWorldText ~= nil then
        local label
        if element == "ice" then
            label = n .. ". ICE +"
        elseif element == "thunder" then
            label = n .. ". LTG X"
        else
            label = n .. ". FIRE O"
        end
        for eid, s in pairs(data.npSpots) do
            local rec = data.npDraws and data.npDraws[eid]
            if s.element == element and rec ~= nil and rec.mode == "marker" then
                if rec.text ~= nil then AnyoneCore.removeTimedWorldText(rec.text) end
                rec.text = AnyoneCore.addTimedWorldText(40000, label, { x = s.x, y = s.y + 2.0, z = s.z }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.1)
            end
        end
    end
end

-- Promote only the first unresolved element.
for i = 1, #data.npAnnounceOrder do
    local e = data.npAnnounceOrder[i]
    local unresolved = false
    for eid, s in pairs(data.npSpots) do
        if s.element == e and not (data.npDone and data.npDone[eid]) then
            unresolved = true
            break
        end
    end
    if unresolved then
        if e == element then data.npPromote(element) end
        break
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"c1627001-9366-4ce7-af80-aa6005b2c606",
								true,
							},
						},
						name = "NP - Orb Announce Order",
						uuid = "0a5d8c33-7e46-4f92-b1c8-de62f4a97b05",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local variant = a.newActiveAura1
if variant ~= 2911 and variant ~= 2912 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil or ent.contentid ~= 14504 then return end
if data.npFgCenter == nil then
    AnyoneCore.log("[Fertile Ground] Arena center unavailable; volley ignored.", 5)
    self.used = true
    return
end
if data.npFgVolleys == nil or (data.npFgLastAura ~= nil and TimeSince(data.npFgLastAura) > 30000) then
    data.npFgVolleys = {}
    data.npFgFirstAura = nil
end
data.npFgLastAura = Now()
if data.npFgVolleys[a.entityID] ~= nil then return end
if data.npFgFirstAura == nil then data.npFgFirstAura = Now() end
local idx = 0
for _ in pairs(data.npFgVolleys) do idx = idx + 1 end
idx = idx + 1
data.npFgVolleys[a.entityID] = idx

local FIRST_FIRE = 13200
local CADENCE = 6000
local fireIn = (data.npFgFirstAura + FIRST_FIRE + (idx - 1) * CADENCE) - Now()
if fireIn < 0 then fireIn = 0 end

local px, py, pz = ent.pos.x, ent.pos.y, ent.pos.z
local hc = math.atan2(data.npFgCenter.x - px, data.npFgCenter.z - pz)
-- Aura variant determines the half-color orientation.
local blueH = hc + math.pi / 2
local pinkH = hc - math.pi / 2
if variant == 2912 then blueH, pinkH = pinkH, blueH end

local showLead = 4500
local delay = fireIn - showLead
if delay < 0 then delay = 0 end
local dur = fireIn - delay + 600

-- Anchor halves at arena center so both sides cover evenly.
local c = data.npFgCenter
local blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.2, 0.9, 1.0, 0.18), 1)
local pink = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.4, 0.8, 0.16), 1)
blue:addTimedCone(dur, c.x, c.y, c.z, 30, math.pi, blueH, delay)
pink:addTimedCone(dur, c.x, c.y, c.z, 30, math.pi, pinkH, delay)
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    AnyoneCore.addTimedWorldText(fireIn + 600, tostring(idx), { x = px, y = py + 2.0, z = pz }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.4)
end
-- The frame guide resolves personal safety shortly before each volley.
data.npFgVolleyList = data.npFgVolleyList or {}
data.npFgVolleyList[idx] = { x = px, z = pz, fireAt = Now() + fireIn, blueH = blueH, pinkH = pinkH }
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"e4a92c07-58d1-4b36-9f74-1a2d80c5e629",
								true,
							},
						},
						name = "NP - FG Volleys",
						uuid = "8c17f4a6-05be-4d29-a3e8-79b0d2c15e44",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local elem
if a.newActiveAura1 == 2908 then
    elem = "fire"
elseif a.newActiveAura1 == 2909 then
    elem = "ice"
elseif a.newActiveAura1 == 2910 then
    elem = "thunder"
else
    return
end
if data.npFgActive == nil or TimeSince(data.npFgActive) > 120000 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil or ent.contentid ~= 14503 then return end
local x, y, z = ent.pos.x, ent.pos.y, ent.pos.z
local dur = 5000
if elem == "fire" then
    local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.35, 0.15, 0.45), 1)
    red:addTimedCircle(dur, x, y, z, 18)
elseif elem == "ice" then
    local blue = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.35, 0.75, 1.0, 0.4), 1)
    blue:addTimedCenteredRect(dur, x, y, z, 90, 15, 0)
    blue:addTimedCenteredRect(dur, x, y, z, 90, 15, math.pi / 2)
else
    local yellow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.9, 0.2, 0.45), 1)
    local rad45 = math.rad(45)
    yellow:addTimedCone(dur, x, y, z, 60, rad45, math.pi / 4)
    yellow:addTimedCone(dur, x, y, z, 60, rad45, 3 * math.pi / 4)
    yellow:addTimedCone(dur, x, y, z, 60, rad45, -math.pi / 4)
    yellow:addTimedCone(dur, x, y, z, 60, rad45, -3 * math.pi / 4)
end
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    local label = elem == "fire" and "FIRE O" or (elem == "ice" and "ICE +" or "LTG X")
    AnyoneCore.addTimedWorldText(dur, label, { x = x, y = y + 2.5, z = z }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.3)
end

-- Carve the element from the pending volley's safe half.
if data.npFgVolleyList ~= nil
    and ArgusDrawsPlus ~= nil and ArgusDrawsPlus.getEnabled() == true
    and Argus2 ~= nil and Argus2.getNextUnusedChannel ~= nil
    and TensorCore.getStaticFlatDrawer ~= nil then
    local player = TensorCore.mGetPlayer()
    if player ~= nil and player.pos ~= nil then
        local now = Now()
        local v
        for i = 1, #data.npFgVolleyList do
            local cand = data.npFgVolleyList[i]
            if cand ~= nil and not cand.done and cand.fireAt - now <= 6000 and cand.fireAt - now > -600 then
                v = cand
                break
            end
        end
        local hasBlue = TensorCore.hasBuff(player.id, 5136)
        local hasPink = TensorCore.hasBuff(player.id, 5137)
        local safeH
        if v ~= nil then
            if hasPink and not hasBlue then
                safeH = v.blueH
            elseif hasBlue and not hasPink then
                safeH = v.pinkH
            end
        end
        if safeH ~= nil then
            local channel = data.npFgSafeChannel
            if channel == nil then
                channel = Argus2.getNextUnusedChannel(true)
                if channel == nil then channel = 2 end
                data.npFgSafeChannel = channel
            end
            local green = 1493237504
            local occ = Argus2.RenderFlags.FLAG_OCCLUDE
            local hy = y + 0.05
            local dur2 = (v.fireAt - now) + 600
            local base = TensorCore.getStaticFlatDrawer(green, nil, channel)
            base:addTimedCone(dur2, x, hy, z, 29.5, math.pi, safeH, 0, false, true, 0)
            local cut = TensorCore.getStaticFlatDrawer(green, nil, channel)
            if elem == "fire" then
                cut:addTimedCircle(dur2, x, hy, z, 18, 0, false, false, occ)
            elseif elem == "ice" then
                cut:addTimedCenteredRect(dur2, x, hy, z, 90, 15, 0, 0, false, false, occ)
                cut:addTimedCenteredRect(dur2, x, hy, z, 90, 15, math.pi / 2, 0, false, false, occ)
            else
                local rad45 = math.rad(45)
                cut:addTimedCone(dur2, x, hy, z, 60, rad45, math.pi / 4, 0, false, false, occ)
                cut:addTimedCone(dur2, x, hy, z, 60, rad45, 3 * math.pi / 4, 0, false, false, occ)
                cut:addTimedCone(dur2, x, hy, z, 60, rad45, -math.pi / 4, 0, false, false, occ)
                cut:addTimedCone(dur2, x, hy, z, 60, rad45, -3 * math.pi / 4, 0, false, false, occ)
            end
        end
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"c1627001-9366-4ce7-af80-aa6005b2c606",
								true,
							},
						},
						name = "NP - FG Elements",
						uuid = "9e2a06b8-17cf-4e35-8d19-40c7f3a28b55",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local aura = a.newActiveAura1
if aura ~= 2890 and aura ~= 2891 then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.pos == nil or ent.contentid ~= 14722 then return end

local cx, cz, cy = 0.0, -628.0, -684.0
data.idxPredict = data.idxPredict or {}
if data.idxPredict[a.entityID] ~= nil then return end

local spawnAng = math.atan2(ent.pos.x - cx, ent.pos.z - cz)
local finAng = spawnAng - 1.0472
local R = 15.55
local fx = cx + R * math.sin(finAng)
local fz = cz + R * math.cos(finAng)
data.idxPredict[a.entityID] = { x = fx, z = fz, aura = aura }

local dur = 10400
local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.35, 0.2, 0.45), 1)
if aura == 2891 then
    red:addTimedCircle(dur, fx, cy, fz, 10)
else
    red:addTimedDonut(dur, fx, cy, fz, 3, 15)
end
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    AnyoneCore.addTimedWorldText(dur, aura == 2891 and "AWAY" or "UNDER",
        { x = fx, y = cy + 2.0, z = fz }, GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.3)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0011-4b2b-9c11-b2c1c105a011",
								true,
							},
						},
						name = "B4 - Predict Orbs",
						uuid = "1a2b3c4d-0018-4b2b-9c18-b2c1c105a018",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
local W = { [2764] = "BOW", [2765] = "SWORD", [2766] = "BELL", [2767] = "HARP" }
local w = W[a.newActiveAura1]
if w == nil then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.contentid ~= 14717 then return end

-- Separate glow sequences by their arrival gap.
if data.idxQuad == nil or (data.idxQuadAt ~= nil and TimeSince(data.idxQuadAt) > 8000) then
    data.idxQuad = { n = 0 }
end
data.idxQuadAt = Now()
local st = data.idxQuad
st.n = st.n + 1

-- Call the required movement rather than the weapon name.
local CALL = {
    SWORD = "Sword, between platforms",
    BELL = "Bell, on platforms",
    BOW = "Bow, get in",
    HARP = "Harp, out of middle",
}
-- Standalone Bell/Bow glows remain ambiguous until their windup.
local msg = CALL[w]
-- The Quadrilogy flag resolves the first-glow ambiguity.
local inQuad = data.idxQuadSetUntil ~= nil and Now() < data.idxQuadSetUntil
if st.n == 1 and (w == "HARP" or w == "BOW") and not inQuad then
    msg = nil
end


st.order = st.order or {}
st.order[st.n] = w
-- Stage the first safe spots once the sequence is unambiguous.
if data.idxWeaponStage ~= nil and st.staged1 == nil then
    local inQuadNow = data.idxQuadSetUntil ~= nil and Now() < data.idxQuadSetUntil
    if st.n == 1 and inQuadNow then
        st.staged1 = true
        data.idxWeaponStage(w, 15000)
    elseif st.n == 2 then
        st.staged1 = true
        data.idxWeaponStage(st.order[1], 12000)
    end
end
if data.idxWeaponDraw == nil then
    -- Platform and letter axes are offset by 60 degrees.
    local cx, cz, cy = 0.0, -628.0, -684.0
    local P = { 0.0, 2.0944, -2.0944 }
    local L = { math.pi, 1.0472, -1.0472 }
    local PLAT = { { x = -17.754, z = -638.25 }, { x = 17.754, z = -638.25 }, { x = 0.0, z = -607.5 } }
    -- Active shapes are red; the next weapon is staged in amber.
    -- Cone width follows the verified rendered result.
    local function weaponShapes(d, wpn, ms, delay)
        if wpn == "HARP" then
            d:addTimedCircle(ms, cx, cy, cz, 16, delay)
        elseif wpn == "BOW" then
            for i = 1, 3 do d:addTimedCircle(ms, PLAT[i].x, cy, PLAT[i].z, 11, delay) end
        elseif wpn == "SWORD" then
            for i = 1, 3 do d:addTimedCone(ms, cx, cy, cz, 32, math.rad(60), P[i], delay) end
        elseif wpn == "BELL" then
            for i = 1, 3 do d:addTimedCone(ms, cx, cy, cz, 25, math.rad(60), L[i], delay) end
        end
    end
    -- Draw explicit complements to avoid stacked overlay alpha.
    local function weaponSafe(wpn, ms, delay)
        if ArgusDrawsPlus == nil or ArgusDrawsPlus.getEnabled() ~= true
            or Argus2 == nil or Argus2.getNextUnusedChannel == nil
            or TensorCore.getStaticFlatDrawer == nil then return false end
        -- Avoid duplicate layers during the active overlay window.
        data.idxSafeShown = data.idxSafeShown or {}
        local showAt = Now() + (delay or 0)
        local prev = data.idxSafeShown[wpn]
        if prev ~= nil and showAt >= prev.from - 200 and showAt <= prev.to then return true end
        data.idxSafeShown[wpn] = { from = showAt, to = showAt + ms }
        local ch = data.idxSafeChannel
        if ch == nil then
            ch = Argus2.getNextUnusedChannel(true)
            if ch == nil then ch = 1 end
            data.idxSafeChannel = ch
        end
        local ch2 = data.idxDangerChannel
        if ch2 == nil then
            ch2 = Argus2.getNextUnusedChannel(true)
            if ch2 == nil then ch2 = ch + 1 end
            data.idxDangerChannel = ch2
        end
        local hy = cy + 0.05
        local g = TensorCore.getStaticFlatDrawer(1493237504, 0, ch)
        local redF = TensorCore.getStaticFlatDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.32), 0, ch2)
        if wpn == "HARP" then
            -- Safe area: platform wedges outside the center circle.
            for i = 1, 3 do
                g:addTimedDonutCone(ms, cx, hy, cz, 16, 32, math.rad(60), P[i], delay, false, true, 0)
            end
            redF:addTimedCircle(ms, cx, hy, cz, 16, delay, false, true, 0)
        elseif wpn == "BOW" then
            -- Carve platform circles from one inscribed green donut.
            local occ = Argus2.RenderFlags.FLAG_OCCLUDE
            g:addTimedDonut(ms, cx, hy, cz, 3, 15.5, delay, false, true, 0)
            for i = 1, 3 do
                g:addTimedCircle(ms, PLAT[i].x, hy, PLAT[i].z, 11, delay, false, false, occ)
                redF:addTimedCircle(ms, PLAT[i].x, hy, PLAT[i].z, 11, delay, false, true, 0)
            end
        elseif wpn == "SWORD" then
            -- Safe area: letter wedges.
            for i = 1, 3 do
                g:addTimedCone(ms, cx, hy, cz, 15.5, math.rad(60), L[i], delay, false, true, 0)
                redF:addTimedCone(ms, cx, hy, cz, 32, math.rad(60), P[i], delay, false, true, 0)
            end
        elseif wpn == "BELL" then
            -- Safe area: platform wedges.
            for i = 1, 3 do
                g:addTimedCone(ms, cx, hy, cz, 32, math.rad(60), P[i], delay, false, true, 0)
                redF:addTimedCone(ms, cx, hy, cz, 25, math.rad(60), L[i], delay, false, true, 0)
            end
        end
        return true
    end
    -- Use world-space danger only when the flat overlay is unavailable.
    data.idxWeaponDraw = function(wpn, ms, delay)
        if not weaponSafe(wpn, ms, delay or 0) then
            weaponShapes(TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.45), 1), wpn, ms, delay or 0)
        end
    end
    -- Standalone harp omits the safe overlay during Omni volleys.
    data.idxWeaponRed = function(wpn, ms, delay)
        weaponShapes(TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.45), 1), wpn, ms, delay or 0)
    end
    data.idxWeaponStage = function(wpn, ms)
        if data.idxNextTexts ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            for i = 1, #data.idxNextTexts do AnyoneCore.removeTimedWorldText(data.idxNextTexts[i]) end
        end
        data.idxNextTexts = {}
        if data.idxNextShapes ~= nil and Argus ~= nil and Argus.deleteTimedShape ~= nil then
            for i = 1, #data.idxNextShapes do Argus.deleteTimedShape(data.idxNextShapes[i]) end
        end
        data.idxNextShapes = {}
        if wpn == nil then return end
        -- Never place safe markers in the arena-center hole.
        local pts
        if wpn == "BOW" or wpn == "BELL" then
            pts = {}
            for i = 1, 3 do
                pts[#pts + 1] = { x = cx + 8 * math.sin(P[i]), z = cz + 8 * math.cos(P[i]) }
            end
        elseif wpn == "SWORD" then
            pts = {}
            
            for i = 1, 3 do
                pts[#pts + 1] = { x = cx + 8 * math.sin(L[i]), z = cz + 8 * math.cos(L[i]) }
            end
        else
            pts = PLAT
        end
        -- Use large ground labels and a line to the nearest point.
        local yellow = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.9, 0.2, 0.8), 2)
        local me = TensorCore.mGetPlayer()
        local nearest, nearD
        for i = 1, #pts do
            data.idxNextShapes[#data.idxNextShapes + 1] = yellow:addTimedCircle(ms, pts[i].x, cy, pts[i].z, 2.4)
            data.idxNextShapes[#data.idxNextShapes + 1] = yellow:addTimedCircle(ms, pts[i].x, cy, pts[i].z, 0.8)
            if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                data.idxNextTexts[#data.idxNextTexts + 1] = AnyoneCore.addTimedWorldText(ms, "NEXT",
                    { x = pts[i].x, y = cy + 1.8, z = pts[i].z },
                    GUI:ColorConvertFloat4ToU32(1.0, 0.95, 0.4, 1.0), true, 2.6)
            end
            if me ~= nil and me.pos ~= nil then
                local dd = (me.pos.x - pts[i].x) ^ 2 + (me.pos.z - pts[i].z) ^ 2
                if nearD == nil or dd < nearD then nearest, nearD = pts[i], dd end
            end
        end
        if nearest ~= nil and Argus2 ~= nil and Argus2.addTimedRectFilled ~= nil then
            local lc = GUI:ColorConvertFloat4ToU32(1.0, 0.9, 0.2, 0.22)
            data.idxNextShapes[#data.idxNextShapes + 1] = Argus2.addTimedRectFilled(
                ms, nearest.x, cy + 0.05, nearest.z, 50, 0.6, 0, lc, lc, lc,
                0, nil, me.id, false, nil, nil, nil, nil, nil, false, false, 0, false, 0)
        end
    end
end
if st.n == 4 and st.order[1] ~= nil then
    -- Roll active and staged shapes through the weapon schedule.
    local EST = { 5350, 8600, 11900, 15100 }
    for k = 1, 4 do
        if st.order[k] ~= nil then
            data.idxWeaponDraw(st.order[k], 3100, EST[k] - 2600)
        end
    end
    st.windN = 1
end

if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    -- Show movement actions on the center order board.
    local ACT = { HARP = "OUT OF MID", SWORD = "BETWEEN PLATS", BELL = "ON PLATS", BOW = "IN MID" }
    local lbl = ACT[w]
    if st.n == 1 and (w == "HARP" or w == "BOW")
        and not (data.idxQuadSetUntil ~= nil and Now() < data.idxQuadSetUntil) then
        lbl = w
    end
    local handle = AnyoneCore.addTimedWorldText(15500, tostring(st.n) .. "  " .. lbl,
        { x = 0.0, y = -684.0 + 4.0 - 1.2 * st.n, z = -628.0 },
        GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.15)
    if lbl == w then
        -- Retain an ambiguous first slot for later promotion.
        st.boardPending = { handle = handle, w = w }
    elseif st.n >= 2 and st.boardPending ~= nil then
        -- A second glow confirms Quadrilogy and resolves slot one.
        if AnyoneCore.removeTimedWorldText ~= nil then
            AnyoneCore.removeTimedWorldText(st.boardPending.handle)
        end
        AnyoneCore.addTimedWorldText(12500, "1  " .. ACT[st.boardPending.w],
            { x = 0.0, y = -684.0 + 4.0 - 1.2, z = -628.0 },
            GUI:ColorConvertFloat4ToU32(1, 1, 1, 1), true, 1.15)
        st.boardPending = nil
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0023-4b2b-9c23-b2c1c105a023",
								true,
							},
						},
						name = "B4 - Quadrilogy Glows",
						uuid = "1a2b3c4d-0028-4b2b-9c28-b2c1c105a028",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newActiveAura1 == 2993 or eventArgs.newActiveAura1 == 3052)",
						dequeueIfLuaFalse = true,
						name = "Sword KB/AOE Aura",
						uuid = "7c1f2ab0-4e11-4d92-9a3b-551be0c7d101",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newActiveAura1 == 2942 or eventArgs.newActiveAura1 == 2943 or eventArgs.newActiveAura1 == 2944)",
						dequeueIfLuaFalse = true,
						name = "Cycloswords Ring Aura",
						uuid = "1a2b3c4d-0001-4b2b-9c01-b2c1c105a001",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newActiveAura1 == 2908 or eventArgs.newActiveAura1 == 2909 or eventArgs.newActiveAura1 == 2910)",
						dequeueIfLuaFalse = true,
						name = "Element Orb Aura",
						uuid = "c1627001-9366-4ce7-af80-aa6005b2c606",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newActiveAura1 == 2911 or eventArgs.newActiveAura1 == 2912)",
						dequeueIfLuaFalse = true,
						name = "Head Volley Aura",
						uuid = "e4a92c07-58d1-4b36-9f74-1a2d80c5e629",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newActiveAura1 == 2890 or eventArgs.newActiveAura1 == 2891)",
						dequeueIfLuaFalse = true,
						name = "Index Predict Orb Aura",
						uuid = "1a2b3c4d-0011-4b2b-9c11-b2c1c105a011",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and eventArgs.newActiveAura1 ~= nil and eventArgs.newActiveAura1 >= 2764 and eventArgs.newActiveAura1 <= 2767",
						dequeueIfLuaFalse = true,
						name = "Index Quadrilogy Glow Auras",
						uuid = "1a2b3c4d-0023-4b2b-9c23-b2c1c105a023",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 25,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Auras",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "64597427-86ef-4286-ae28-d56b4951df36",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
-- Resolve content ID from the entity when absent from the payload.
local mcid = a.entityContentID
if mcid == nil then
    local me = TensorCore.mGetEntity(a.entityID)
    mcid = me ~= nil and me.contentid or nil
end
if mcid ~= 2015283 then return end
if a.a2 ~= 1 then return end
local cx, cz = 600.0, 703.975
local QU = math.pi / 4

if data.b2SdMarks == nil or (data.b2SdMarksAt ~= nil and TimeSince(data.b2SdMarksAt) > 20000) then
    data.b2SdMarks = { n = 0, axes = {}, seen = {} }
    data.b2DancePre = nil
    data.b2DancePreTexts = nil
end
data.b2SdMarksAt = Now()
local st = data.b2SdMarks
if st.seen[a.entityID] then return end
st.seen[a.entityID] = true

local ent = TensorCore.mGetEntity(a.entityID)
local h = ent ~= nil and ent.pos ~= nil and ent.pos.h or nil
if h == nil then
    if AnyoneCore ~= nil and AnyoneCore.log ~= nil then
        AnyoneCore.log("[Sword Dance] Ground mark entity unavailable.", 5)
    end
    return
end
local player = TensorCore.mGetPlayer()
local py = player ~= nil and player.pos ~= nil and player.pos.y or -674.0

st.n = st.n + 1
local n = st.n
if n > 4 then return end
local hm = h % math.pi
local axis = math.floor(hm / QU + 0.5) % 4
st.axes[n] = axis

data.b2DancePre = data.b2DancePre or {}
data.b2DancePreTexts = data.b2DancePreTexts or {}
local pre, preTexts = data.b2DancePre, data.b2DancePreTexts

-- Label both ends of each lane axis.
local labelDur = 8300 + 600 * n
local lcol = GUI:ColorConvertFloat4ToU32(1, 1, 1, 1)
if n == 1 then lcol = GUI:ColorConvertFloat4ToU32(1, 0.5, 0.4, 1) end
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    local ang = axis * QU
    for _, s in ipairs({ 1, -1 }) do
        preTexts[#preTexts + 1] = AnyoneCore.addTimedWorldText(labelDur, tostring(n),
            { x = cx + s * 12 * math.sin(ang), y = py + 1.5, z = cz + s * 12 * math.cos(ang) },
            lcol, true, 1.3)
    end
end

if n == 1 then
    -- Predraw the first slash.
    local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.30), 1)
    pre[#pre + 1] = red:addTimedCenteredRect(9200, cx, py, cz, 60, 20, h)
end

-- Three distinct axes determine the fourth.
local commit
if n == 3 then
    local forced = 6 - (st.axes[1] + st.axes[2] + st.axes[3])
    if forced >= 0 and forced <= 3 then
        st.predicted4 = forced
        st.axes[4] = forced
        commit = true
    end
elseif n == 4 then
    if st.predicted4 ~= nil and st.predicted4 ~= axis then
        if AnyoneCore ~= nil and AnyoneCore.log ~= nil then
            AnyoneCore.log("[Sword Dance] Lane order updated.", 5)
        end
        st.axes[4] = axis -- Replace an incorrect prediction.
        commit = true
    elseif st.predicted4 == nil then
        st.axes[4] = axis
        commit = true
    end
end
if commit == nil then
    self.used = true
    return
end

-- Choose the latest lane adjacent to lane one.
local startLane = 4
if (st.axes[4] - st.axes[1]) % 4 == 2 then startLane = 3 end

-- Mark the initial stand lane.
local a4 = st.axes[startLane] * QU
local a1 = st.axes[1] * QU
local cyan = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15, 0.75, 1.0, 0.30), 1)
pre[#pre + 1] = cyan:addTimedCenteredRect(12000, cx, py, cz, 60, 20, a4)

-- Snap route points to nearby waymarks.
local R = 16
local function axisEnd(ang, sign)
    local dirAng = sign > 0 and ang or (ang + math.pi)
    local ex, ez = cx + R * math.sin(dirAng), cz + R * math.cos(dirAng)
    local name
    if Argus ~= nil and Argus.getWaymarkInfo ~= nil then
        local names = { "A", "B", "C", "D", "One", "Two", "Three", "Four" }
        for id = 1, 8 do
            local mx, my, mz, active = Argus.getWaymarkInfo(id)
            if active == true and mx ~= nil then
                local mAng = math.atan2(mx - cx, mz - cz)
                local dd = math.abs((mAng - dirAng + math.pi) % (2 * math.pi) - math.pi)
                if dd < math.rad(15) then
                    ex, ez, name = mx, mz, names[id]
                    break
                end
            end
        end
    end
    if name == nil then
        local dirs = { "south", "southeast", "east", "northeast", "north", "northwest", "west", "southwest" }
        local oct = (math.floor(dirAng / (math.pi / 4) + 0.5)) % 8 + 1
        name = dirs[oct]
    end
    return { x = ex, z = ez, name = name }
end
-- Draw both symmetric routes and call the nearest one.
local dodgePairs = {}
for _, s4 in ipairs({ 1, -1 }) do
    local sE = axisEnd(a4, s4)
    local mBest, mD
    for _, s1 in ipairs({ 1, -1 }) do
        local mE = axisEnd(a1, s1)
        local dd = (sE.x - mE.x) ^ 2 + (sE.z - mE.z) ^ 2
        if mD == nil or dd < mD then mBest, mD = mE, dd end
    end
    local d = 0
    if player ~= nil and player.pos ~= nil then
        d = (player.pos.x - sE.x) ^ 2 + (player.pos.z - sE.z) ^ 2
    end
    dodgePairs[#dodgePairs + 1] = { s = sE, m = mBest, d = d }
end
table.sort(dodgePairs, function(x, y) return x.d < y.d end)
-- Route markers outlive the first-lane cleanup.
local dur = 13000
local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.25, 0.7), 2)
for i = 1, #dodgePairs do
    local pr = dodgePairs[i]
    green:addTimedCircle(dur, pr.s.x, py, pr.s.z, 1.8)
    green:addTimedCircle(dur, pr.m.x, py, pr.m.z, 1.2)
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
        AnyoneCore.addTimedWorldText(dur, "START",
            { x = pr.s.x, y = py + 1.6, z = pr.s.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.5)
        AnyoneCore.addTimedWorldText(dur, "THEN",
            { x = pr.m.x, y = py + 1.6, z = pr.m.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.2)
    end
end
if dodgePairs[1] ~= nil and AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall("Start " .. dodgePairs[1].s.name .. ", into " .. dodgePairs[1].m.name, true, 8)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0022-4b2b-9c22-b2c1c105a022",
								true,
							},
						},
						name = "B2 - Sword Dance Marks",
						uuid = "1a2b3c4d-0021-4b2b-9c21-b2c1c105a021",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e = eventArgs ~= nil and eventArgs.entityID ~= nil and TensorCore.mGetEntity(eventArgs.entityID) or nil return e ~= nil and e.contentid == 2015283",
						dequeueIfLuaFalse = true,
						name = "Sword Dance Ground Marks",
						uuid = "1a2b3c4d-0022-4b2b-9c22-b2c1c105a022",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 19,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Objects",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "1a2b3c4d-0019-4b2b-9c19-b2c1c105a019",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
-- Resolve content ID from the entity when absent from the payload.
local cid = a.entityContentID
if cid == nil then
    local e = TensorCore.mGetEntity(a.entityID)
    cid = e ~= nil and e.contentid or nil
end
if cid == nil then return end
local POINTER = { [2015240] = "FIRE", [2015241] = "ICE", [2015242] = "LIGHTNING" }
local RING = { [2015243] = "FIRE", [2015244] = "ICE", [2015245] = "LIGHTNING" }
if POINTER[cid] == nil and RING[cid] == nil then return end
local cx, cz, cy = 0.0, -628.0, -684.0

if data.idxOmni == nil or (data.idxOmniAt ~= nil and TimeSince(data.idxOmniAt) > 45000) then
    data.idxOmni = { dirs = {}, ringN = 0, seen = {} }
end
data.idxOmniAt = Now()
local st = data.idxOmni

local COLOR = {
    FIRE = { 1.0, 0.35, 0.15 },
    ICE = { 0.35, 0.75, 1.0 },
    LIGHTNING = { 1.0, 0.9, 0.2 },
}

if POINTER[cid] ~= nil then
    if a.a2 ~= nil and a.a2 ~= 1 then return end
    local ent = TensorCore.mGetEntity(a.entityID)
    local h = ent ~= nil and ent.pos ~= nil and ent.pos.h or nil
    if h == nil then return end
    local elem = POINTER[cid]
    st.dirs[elem] = h
    -- Label both ends of each element axis.
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
        local c = COLOR[elem]
        for _, sgn in ipairs({ 1, -1 }) do
            AnyoneCore.addTimedWorldText(24000, elem,
                { x = cx + sgn * 10 * math.sin(h), y = cy + 2.0, z = cz + sgn * 10 * math.cos(h) },
                GUI:ColorConvertFloat4ToU32(c[1], c[2], c[3], 1), true, 1.5)
        end
    end
    self.used = true
    return
end

-- The second-ring gap distinguishes sequential and paired patterns.
local elem = RING[cid]
if data.idxOmniGuide == nil then
    -- Replace the previous danger pair at the requested opacity.
    data.idxOmniPair = function(rec2, alpha)
        if rec2 == nil or rec2.h == nil then return end
        if rec2.shapes ~= nil and Argus ~= nil and Argus.deleteTimedShape ~= nil then
            for i = 1, #rec2.shapes do Argus.deleteTimedShape(rec2.shapes[i]) end
        end
        rec2.shapes = {}
        -- Show order only for the imminent and next pairs.
        if rec2.texts ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            for i = 1, #rec2.texts do AnyoneCore.removeTimedWorldText(rec2.texts[i]) end
        end
        rec2.texts = {}
        if rec2.n ~= nil and rec2.c ~= nil and AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
            for _, sgn in ipairs({ 1, -1 }) do
                rec2.texts[#rec2.texts + 1] = AnyoneCore.addTimedWorldText(7500, tostring(rec2.n),
                    { x = cx + sgn * 10 * math.sin(rec2.h), y = cy + 3.6, z = cz + sgn * 10 * math.cos(rec2.h) },
                    GUI:ColorConvertFloat4ToU32(rec2.c[1], rec2.c[2], rec2.c[3], 1), true, 1.8)
            end
        end
        if ArgusDrawsPlus ~= nil and ArgusDrawsPlus.getEnabled() == true
            and TensorCore.getStaticFlatDrawer ~= nil
            and Argus2 ~= nil and Argus2.getNextUnusedChannel ~= nil then
            local ch2 = data.idxDangerChannel
            if ch2 == nil then
                ch2 = Argus2.getNextUnusedChannel(true)
                if ch2 == nil then ch2 = 1 end
                data.idxDangerChannel = ch2
            end
            local dr = TensorCore.getStaticFlatDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, alpha), 0, ch2)
            rec2.shapes[#rec2.shapes + 1] = dr:addTimedCone(7500, cx, cy + 0.05, cz, 32, math.rad(60), rec2.h, 0, false, true, 0)
            rec2.shapes[#rec2.shapes + 1] = dr:addTimedCone(7500, cx, cy + 0.05, cz, 32, math.rad(60), rec2.h + math.pi, 0, false, true, 0)
        else
            local d = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, alpha + 0.13), 1)
            rec2.shapes[#rec2.shapes + 1] = d:addTimedCone(7500, cx, cy, cz, 32, math.rad(60), rec2.h)
            rec2.shapes[#rec2.shapes + 1] = d:addTimedCone(7500, cx, cy, cz, 32, math.rad(60), rec2.h + math.pi)
        end
    end
    -- Mark both axis ends unless the route selects one.
    data.idxOmniGuide = function(st2, targetElem, label, endAng)
        if st2.guideTexts ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            for i = 1, #st2.guideTexts do AnyoneCore.removeTimedWorldText(st2.guideTexts[i]) end
        end
        st2.guideTexts = {}
        if AnyoneCore == nil or AnyoneCore.addTimedWorldText == nil then return end
        local angs
        if endAng ~= nil then
            angs = { endAng }
        else
            local h = st2.dirs[targetElem]
            if h == nil then return end
            angs = { h, h + math.pi }
        end
        for _, ang in ipairs(angs) do
            st2.guideTexts[#st2.guideTexts + 1] = AnyoneCore.addTimedWorldText(14000, label,
                { x = cx + 13 * math.sin(ang), y = cy + 1.6, z = cz + 13 * math.cos(ang) },
                GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.5)
        end
    end
end
if a.a2 == 3 then
    -- Clean the resolved pair and advance the route.
    local rec = st.seen[a.entityID]
    if rec ~= nil then
        if rec.texts ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
            for i = 1, #rec.texts do AnyoneCore.removeTimedWorldText(rec.texts[i]) end
            rec.texts = nil
        end
        if rec.shapes ~= nil and Argus ~= nil and Argus.deleteTimedShape ~= nil then
            for i = 1, #rec.shapes do Argus.deleteTimedShape(rec.shapes[i]) end
            rec.shapes = nil
        end
    end
    local cl = st.cluster
    if cl ~= nil then
        cl.boomN = (cl.boomN or 0) + 1
        -- Promote only the next two sequential pairs.
        if cl.v2 ~= true and cl.recs ~= nil and data.idxOmniPair ~= nil then
            data.idxOmniPair(cl.recs[cl.boomN + 1], 0.32)
            data.idxOmniPair(cl.recs[cl.boomN + 2], 0.14)
        end
        -- Announce the next paired volley's safe element.
        if cl.riders ~= nil and cl.boomN < 3 and AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
            local nr, ng = cl.riders[cl.boomN + 1], cl.seq[cl.boomN + 1]
            if nr ~= nil and ng ~= nil then
                local safe
                for _, e in ipairs({ "FIRE", "ICE", "LIGHTNING" }) do
                    if e ~= nr and e ~= ng then safe = e end
                end
                if safe ~= nil then
                    AnyoneCore.Shotcall("Move counterclockwise, " .. safe, true, 7)
                    data.idxOmniGuide(st, safe, "GO " .. safe)
                end
            end
        end
        if cl.plan ~= nil then
            -- Move when the destination clears.
            for i = 1, #cl.plan do
                local hop = cl.plan[i]
                if hop.moveSlot == cl.boomN then
                    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
                        AnyoneCore.Shotcall("Move " .. hop.to .. " now", true, 7)
                    end
                    data.idxOmniGuide(st, hop.to, "GO " .. hop.to, hop.endAng)
                    -- Preview the following hop.
                    local nxt = cl.plan[i + 1]
                    if nxt ~= nil and nxt.endAng ~= nil and AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
                        st.guideTexts[#st.guideTexts + 1] = AnyoneCore.addTimedWorldText(14000, "THEN " .. nxt.to,
                            { x = cx + 13 * math.sin(nxt.endAng), y = cy + 1.6, z = cz + 13 * math.cos(nxt.endAng) },
                            GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.5)
                    end
                end
            end
        end
    end
    self.used = true
    return
end
if a.a2 ~= nil and a.a2 ~= 1 then return end
if st.seen[a.entityID] ~= nil then return end
-- Separate clusters by ring-spawn gaps.
if st.cluster == nil or (st.lastRing ~= nil and TimeSince(st.lastRing) > 10000) then
    st.cluster = { seq = {}, boomN = 0 }
    if st.guideTexts ~= nil and AnyoneCore ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
        for i = 1, #st.guideTexts do AnyoneCore.removeTimedWorldText(st.guideTexts[i]) end
        st.guideTexts = nil
    end
end
local cl = st.cluster
-- Ignore repeated events and rings beyond the six-slot pattern.
cl.lastElemAt = cl.lastElemAt or {}
if cl.lastElemAt[elem] ~= nil and TimeSince(cl.lastElemAt[elem]) < 2000 then return end
cl.lastElemAt[elem] = Now()
local prevRing = st.lastRing
st.lastRing = Now()
local n
if cl.filled6 == true and #cl.seq == 6 then
    -- Reconcile the physical sixth ring with the inferred slot.
    cl.filled6 = nil
    n = 6
    if cl.seq[6] ~= elem then
        AnyoneCore.log("[IDX Omni] Final ring prediction changed; correcting order.", 5)
        cl.seq[6] = elem
    end
elseif #cl.seq >= 6 then
    AnyoneCore.log("[IDX Omni] Extra ring event ignored.", 5)
    return
else
    cl.seq[#cl.seq + 1] = elem
    n = #cl.seq
end
if n == 2 and prevRing ~= nil then
    -- Short gaps are sequential; long gaps are paired.
    cl.v2 = TimeSince(prevRing) > 3000
end
local rec = { shapes = {} }
st.seen[a.entityID] = rec

local h = st.dirs[elem]
if h ~= nil then
    local c = COLOR[elem]
    rec.texts = {}
    rec.n = n
    rec.c = c
    -- Sequential patterns show only the imminent and next pairs.
    rec.h = h
    cl.recs = cl.recs or {}
    cl.recs[n] = rec
    if data.idxOmniPair ~= nil then
        if cl.v2 == true or n == 1 then
            data.idxOmniPair(rec, 0.32)
        elseif n == 2 then
            data.idxOmniPair(rec, 0.14)
        end
    end
else
    AnyoneCore.log("[IDX Omni] Pointer direction unavailable for " .. elem .. ".", 5)
end

-- Pair each ring with the matching pinwheel rider.
local o2 = data.idxOmni2
if o2 ~= nil and o2.riders ~= nil and TimeSince(o2.at) < 30000 then
    cl.v2 = true
    cl.riders = o2.riders
end
if cl.riders ~= nil and AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    local safe
    for _, e in ipairs({ "FIRE", "ICE", "LIGHTNING" }) do
        if e ~= cl.riders[n] and e ~= elem then safe = e end
    end
    if n == 1 and safe ~= nil then
        AnyoneCore.Shotcall("Start " .. safe, true, 7)
        data.idxOmniGuide(st, safe, "START")
    end

end

-- Build the sequential movement route.
if cl.v2 ~= true then
    if n == 3 then
        -- Start on the element whose first explosion is latest.
        local seen3 = {}
        for i = 1, 3 do seen3[cl.seq[i]] = true end
        local startE = elem
        for _, e in ipairs({ "FIRE", "ICE", "LIGHTNING" }) do
            if not seen3[e] then startE = e end
        end
        cl.startElem = startE
        if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
            AnyoneCore.Shotcall("Start " .. startE, true, 7)
        end
        data.idxOmniGuide(st, startE, "START")
    elseif n == 5 then
        -- Infer the sixth ring from the two-per-element invariant.
        local count = { FIRE = 0, ICE = 0, LIGHTNING = 0 }
        for i = 1, 5 do count[cl.seq[i]] = count[cl.seq[i]] + 1 end
        for _, e in ipairs({ "FIRE", "ICE", "LIGHTNING" }) do
            if count[e] < 2 then cl.seq[6] = e cl.filled6 = true end
        end
        if cl.seq[6] == nil then
            AnyoneCore.log("[IDX Omni] Invalid element distribution.", 5)
        else
            local seq = cl.seq
            local function nextBoom(e, after)
                for k = after + 1, 6 do if seq[k] == e then return k end end
                return 99
            end
            local plan = {}
            local cur = cl.startElem or seq[3]
            local hopAt = nextBoom(cur, 0)
            while hopAt <= 6 do
                local best, bestNext
                for _, e in ipairs({ "FIRE", "ICE", "LIGHTNING" }) do
                    if e ~= seq[hopAt] and e ~= cur then
                        local nb = nextBoom(e, hopAt)
                        if bestNext == nil or nb > bestNext then best, bestNext = e, nb end
                    end
                end
                if best == nil then break end
                plan[#plan + 1] = { slot = hopAt, to = best }
                cur = best
                hopAt = nextBoom(best, hopAt)
            end
            cl.plan = plan
            -- Chain adjacent endpoints and move as each destination clears.
            local me = TensorCore.mGetPlayer()
            local prevAng
            if me ~= nil and me.pos ~= nil then
                prevAng = math.atan2(me.pos.x - cx, me.pos.z - cz)
            end
            local function nearestEnd(e2, ref)
                local hh = st.dirs[e2]
                if hh == nil then return nil end
                if ref == nil then return hh end
                local function ad(x)
                    return math.abs((x - ref + math.pi) % (2 * math.pi) - math.pi)
                end
                if ad(hh) <= ad(hh + math.pi) then return hh end
                return hh + math.pi
            end
            local words = {}
            for i = 1, #plan do
                local hop = plan[i]
                local legal
                for k = 1, hop.slot - 1 do
                    if seq[k] == hop.to then legal = k end
                end
                hop.moveSlot = legal or (hop.slot - 1)
                hop.endAng = nearestEnd(hop.to, prevAng)
                prevAng = hop.endAng or prevAng
                words[#words + 1] = hop.to
            end
            -- Bias adjacent stands toward their shared boundary.
            if plan[2] ~= nil and plan[1].endAng ~= nil and plan[2].endAng ~= nil then
                local dd = (plan[2].endAng - plan[1].endAng + math.pi) % (2 * math.pi) - math.pi
                local sgn = dd >= 0 and 1 or -1
                plan[1].endAng = plan[1].endAng + sgn * 0.31
                plan[2].endAng = plan[2].endAng - sgn * 0.31
            end
            if #words > 0 and AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
                AnyoneCore.Shotcall("Then " .. table.concat(words, ", then "), true, 6)
            end
            if plan[1] ~= nil then
                data.idxOmniGuide(st, plan[1].to, "THEN " .. plan[1].to, plan[1].endAng)
            end
        end
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0010-4b2b-9c10-b2c1c105a010",
								true,
							},
						},
						name = "B4 - Omni Elements 2",
						uuid = "1a2b3c4d-0042-4b2b-9c42-b2c1c105a042",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil then return end
-- Resolve content ID from the entity when absent from the payload.
local mcid = a.entityContentID
if mcid == nil then
    local me = TensorCore.mGetEntity(a.entityID)
    mcid = me ~= nil and me.contentid or nil
end
if mcid ~= 2015283 then return end
if a.a2 ~= 1 then return end
local cx, cz = 600.0, 703.975
local QU = math.pi / 4

if data.b2SdMarks == nil or (data.b2SdMarksAt ~= nil and TimeSince(data.b2SdMarksAt) > 20000) then
    data.b2SdMarks = { n = 0, axes = {}, seen = {} }
    data.b2DancePre = nil
    data.b2DancePreTexts = nil
end
data.b2SdMarksAt = Now()
local st = data.b2SdMarks
if st.seen[a.entityID] then return end
st.seen[a.entityID] = true

local ent = TensorCore.mGetEntity(a.entityID)
local h = ent ~= nil and ent.pos ~= nil and ent.pos.h or nil
if h == nil then
    if AnyoneCore ~= nil and AnyoneCore.log ~= nil then
        AnyoneCore.log("[Sword Dance] Ground mark entity unavailable.", 5)
    end
    return
end
local player = TensorCore.mGetPlayer()
local py = player ~= nil and player.pos ~= nil and player.pos.y or -674.0

st.n = st.n + 1
local n = st.n
if n > 4 then return end
local hm = h % math.pi
local axis = math.floor(hm / QU + 0.5) % 4
st.axes[n] = axis

data.b2DancePre = data.b2DancePre or {}
data.b2DancePreTexts = data.b2DancePreTexts or {}
local pre, preTexts = data.b2DancePre, data.b2DancePreTexts

-- Label both ends of each lane axis.
local labelDur = 8300 + 600 * n
local lcol = GUI:ColorConvertFloat4ToU32(1, 1, 1, 1)
if n == 1 then lcol = GUI:ColorConvertFloat4ToU32(1, 0.5, 0.4, 1) end
if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    local ang = axis * QU
    for _, s in ipairs({ 1, -1 }) do
        preTexts[#preTexts + 1] = AnyoneCore.addTimedWorldText(labelDur, tostring(n),
            { x = cx + s * 12 * math.sin(ang), y = py + 1.5, z = cz + s * 12 * math.cos(ang) },
            lcol, true, 1.3)
    end
end

if n == 1 then
    -- Predraw the first slash.
    local red = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(1.0, 0.3, 0.15, 0.30), 1)
    pre[#pre + 1] = red:addTimedCenteredRect(9200, cx, py, cz, 60, 20, h)
end

-- Three distinct axes determine the fourth.
local commit
if n == 3 then
    local forced = 6 - (st.axes[1] + st.axes[2] + st.axes[3])
    if forced >= 0 and forced <= 3 then
        st.predicted4 = forced
        st.axes[4] = forced
        commit = true
    end
elseif n == 4 then
    if st.predicted4 ~= nil and st.predicted4 ~= axis then
        if AnyoneCore ~= nil and AnyoneCore.log ~= nil then
            AnyoneCore.log("[Sword Dance] Lane order updated.", 5)
        end
        st.axes[4] = axis -- Replace an incorrect prediction.
        commit = true
    elseif st.predicted4 == nil then
        st.axes[4] = axis
        commit = true
    end
end
if commit == nil then
    self.used = true
    return
end

-- Choose the latest lane adjacent to lane one.
local startLane = 4
if (st.axes[4] - st.axes[1]) % 4 == 2 then startLane = 3 end

-- Mark the initial stand lane.
local a4 = st.axes[startLane] * QU
local a1 = st.axes[1] * QU
local cyan = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.15, 0.75, 1.0, 0.30), 1)
pre[#pre + 1] = cyan:addTimedCenteredRect(12000, cx, py, cz, 60, 20, a4)

-- Snap route points to nearby waymarks.
local R = 16
local function axisEnd(ang, sign)
    local dirAng = sign > 0 and ang or (ang + math.pi)
    local ex, ez = cx + R * math.sin(dirAng), cz + R * math.cos(dirAng)
    local name
    if Argus ~= nil and Argus.getWaymarkInfo ~= nil then
        local names = { "A", "B", "C", "D", "One", "Two", "Three", "Four" }
        for id = 1, 8 do
            local mx, my, mz, active = Argus.getWaymarkInfo(id)
            if active == true and mx ~= nil then
                local mAng = math.atan2(mx - cx, mz - cz)
                local dd = math.abs((mAng - dirAng + math.pi) % (2 * math.pi) - math.pi)
                if dd < math.rad(15) then
                    ex, ez, name = mx, mz, names[id]
                    break
                end
            end
        end
    end
    if name == nil then
        local dirs = { "south", "southeast", "east", "northeast", "north", "northwest", "west", "southwest" }
        local oct = (math.floor(dirAng / (math.pi / 4) + 0.5)) % 8 + 1
        name = dirs[oct]
    end
    return { x = ex, z = ez, name = name }
end
-- Draw both symmetric routes and call the nearest one.
local dodgePairs = {}
for _, s4 in ipairs({ 1, -1 }) do
    local sE = axisEnd(a4, s4)
    local mBest, mD
    for _, s1 in ipairs({ 1, -1 }) do
        local mE = axisEnd(a1, s1)
        local dd = (sE.x - mE.x) ^ 2 + (sE.z - mE.z) ^ 2
        if mD == nil or dd < mD then mBest, mD = mE, dd end
    end
    local d = 0
    if player ~= nil and player.pos ~= nil then
        d = (player.pos.x - sE.x) ^ 2 + (player.pos.z - sE.z) ^ 2
    end
    dodgePairs[#dodgePairs + 1] = { s = sE, m = mBest, d = d }
end
table.sort(dodgePairs, function(x, y) return x.d < y.d end)
-- Route markers outlive the first-lane cleanup.
local dur = 13000
local green = TensorCore.getStaticDrawer(GUI:ColorConvertFloat4ToU32(0.1, 1.0, 0.25, 0.7), 2)
for i = 1, #dodgePairs do
    local pr = dodgePairs[i]
    green:addTimedCircle(dur, pr.s.x, py, pr.s.z, 1.8)
    green:addTimedCircle(dur, pr.m.x, py, pr.m.z, 1.2)
    if AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
        AnyoneCore.addTimedWorldText(dur, "START",
            { x = pr.s.x, y = py + 1.6, z = pr.s.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.5)
        AnyoneCore.addTimedWorldText(dur, "THEN",
            { x = pr.m.x, y = py + 1.6, z = pr.m.z }, GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.2)
    end
end
if dodgePairs[1] ~= nil and AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall("Start " .. dodgePairs[1].s.name .. ", into " .. dodgePairs[1].m.name, true, 8)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0022-4b2b-9c22-b2c1c105a022",
								true,
							},
						},
						name = "B2 - Sword Dance Marks 2",
						uuid = "1a2b3c4d-0043-4b2b-9c43-b2c1c105a043",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e = eventArgs ~= nil and eventArgs.entityID ~= nil and TensorCore.mGetEntity(eventArgs.entityID) or nil return e ~= nil and e.contentid ~= nil and e.contentid >= 2015240 and e.contentid <= 2015245",
						dequeueIfLuaFalse = true,
						name = "Index Omni Objects",
						uuid = "1a2b3c4d-0010-4b2b-9c10-b2c1c105a010",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "local e = eventArgs ~= nil and eventArgs.entityID ~= nil and TensorCore.mGetEntity(eventArgs.entityID) or nil return e ~= nil and e.contentid == 2015283",
						dequeueIfLuaFalse = true,
						name = "Sword Dance Ground Marks",
						uuid = "1a2b3c4d-0022-4b2b-9c22-b2c1c105a022",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 20,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Objects2",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "1a2b3c4d-0040-4b2b-9c40-b2c1c105a040",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.entityID == nil or a.newAnimID == nil then return end
local CIRCLE_FIRST = { [3604] = true, [5896] = true, [6847] = true }
local DONUT_FIRST = { [210] = true, [211] = true, [209] = true }
local anim = a.newAnimID
if not CIRCLE_FIRST[anim] and not DONUT_FIRST[anim] then return end
local ent = TensorCore.mGetEntity(a.entityID)
if ent == nil or ent.contentid ~= 14825 then return end
data.b2RingOrder = data.b2RingOrder or {}
local first = CIRCLE_FIRST[anim] and "chariot" or "donut"
data.b2RingOrder[a.entityID] = { first = first, at = Now() }
-- Update an existing unknown ring when its pose arrives late.
local rec = data.b2Rings ~= nil and data.b2Rings[a.entityID] or nil
if rec ~= nil and rec.stage == 1 and (rec.first == nil or rec.assumed) then
    rec.first = first
    rec.second = first == "donut" and "chariot" or "donut"
    rec.assumed = nil
    if data.b2RingDraw ~= nil then data.b2RingDraw(rec, rec.first, 12000) end
    if data.b2RingOverlay ~= nil then data.b2RingOverlay() end
    if data.b2RingNext ~= nil then data.b2RingNext() end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-001b-4b2b-9c1b-b2c1c105a01b",
								true,
							},
						},
						name = "B2 - Cycloswords Order",
						uuid = "1a2b3c4d-001d-4b2b-9c1d-b2c1c105a01d",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.newAnimID == 210 or eventArgs.newAnimID == 3604 or eventArgs.newAnimID == 5896 or eventArgs.newAnimID == 6847)",
						dequeueIfLuaFalse = true,
						name = "Cycloswords Idle Pose",
						uuid = "1a2b3c4d-001b-4b2b-9c1b-b2c1c105a01b",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 23,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Anims",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "1a2b3c4d-001c-4b2b-9c1c-b2c1c105a01c",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.markerID == nil or a.entityID == nil then return end
local ELEM = { [670] = "LIGHTNING", [671] = "FIRE", [672] = "ICE" }
local elem = ELEM[a.markerID]
if elem == nil then return end

local me = TensorCore.mGetPlayer()
if me == nil or me.id ~= a.entityID then
    self.used = true
    return
end
if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
    AnyoneCore.Shotcall("Go to " .. (elem == "LIGHTNING" and "Lightning" or (elem == "FIRE" and "Fire" or "Ice")), true, 8)
end
-- Mark both ends of the target element axis.
local st = data.idxOmni
local h = st ~= nil and st.dirs ~= nil and st.dirs[elem] or nil
if h ~= nil and AnyoneCore ~= nil and AnyoneCore.addTimedWorldText ~= nil then
    local cx, cz, cy = 0.0, -628.0, -684.0
    if data.idxRingGoTexts ~= nil and AnyoneCore.removeTimedWorldText ~= nil then
        for i = 1, #data.idxRingGoTexts do AnyoneCore.removeTimedWorldText(data.idxRingGoTexts[i]) end
    end
    data.idxRingGoTexts = {}
    for _, s in ipairs({ 1, -1 }) do
        data.idxRingGoTexts[#data.idxRingGoTexts + 1] = AnyoneCore.addTimedWorldText(12000, "GO " .. elem,
            { x = cx + s * 13 * math.sin(h), y = cy + 1.6, z = cz + s * 13 * math.cos(h) },
            GUI:ColorConvertFloat4ToU32(0.3, 1.0, 0.4, 1.0), true, 1.6)
    end
elseif h == nil and AnyoneCore ~= nil and AnyoneCore.log ~= nil then
    AnyoneCore.log("[IDX Predict] Pointer axis unavailable; using callout only.", 5)
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-002b-4b2b-9c2b-b2c1c105a02b",
								true,
							},
						},
						name = "B4 - Predict Rings",
						uuid = "1a2b3c4d-002e-4b2b-9c2e-b2c1c105a02e",
						version = 2.1,
					},
				},
				
				{
					data =
					{
						aType = "Lua",
						actionLua = [==[
local a = eventArgs
if a == nil or a.markerID == nil or a.entityID == nil then return end
local mk = a.markerID
if mk ~= 344 and mk ~= 466 then return end
-- Track the three marker waves independently.
if data.idxFlamesSet == nil or TimeSince(data.idxFlamesSet.at) > 8000 then
    data.idxFlamesSet = { at = Now(), batchAt = Now(), batchN = 1, me = false, called = false }
end
local fs = data.idxFlamesSet
fs.at = Now()
if TimeSince(fs.batchAt) > 600 then
    fs.batchN = fs.batchN + 1
    fs.batchAt = Now()
end
local me = TensorCore.mGetPlayer()
if me ~= nil and me.id == a.entityID then
    fs.me = true
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall(mk == 344 and "Tankbuster on you" or "Spread on you", true, 6)
    end
elseif fs.batchN >= 3 and not fs.me and not fs.called then
    -- A same-tick personal marker can replace this unmarked call.
    fs.called = true
    if AnyoneCore ~= nil and AnyoneCore.Shotcall ~= nil then
        AnyoneCore.Shotcall("Unmarked", true, 6)
    end
end
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-0047-4b2b-9c47-b2c1c105a047",
								true,
							},
						},
						name = "B4 - Flames Spreads",
						uuid = "1a2b3c4d-0046-4b2b-9c46-b2c1c105a046",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.markerID == 670 or eventArgs.markerID == 671 or eventArgs.markerID == 672)",
						dequeueIfLuaFalse = true,
						name = "Index Countdown Markers",
						uuid = "1a2b3c4d-002b-4b2b-9c2b-b2c1c105a02b",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and (eventArgs.markerID == 344 or eventArgs.markerID == 466)",
						dequeueIfLuaFalse = true,
						name = "Flames Spread Markers",
						uuid = "1a2b3c4d-0047-4b2b-9c47-b2c1c105a047",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 4,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] Markers",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "1a2b3c4d-002d-4b2b-9c2d-b2c1c105a02d",
			version = 2,
		},
		inheritedObjectUUID = "",
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
						actionLua = [==[
local a = eventArgs
if a == nil or a.a1 ~= 0 or a.a2 ~= 1 or a.a3 ~= 2 then return end
if data.idxOmniFxAt ~= nil and TimeSince(data.idxOmniFxAt) < 20000 then return end
data.idxOmniFxAt = Now()
self.used = true
]==],
						conditions =
						{
							
							{
								"d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
								true,
							},
							
							{
								"1a2b3c4d-003d-4b2b-9c3d-b2c1c105a03d",
								true,
							},
						},
						name = "B4 - Omni Set Start",
						uuid = "1a2b3c4d-003f-4b2b-9c3f-b2c1c105a03f",
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
							1346,
						},
						localmapid = 1346,
						dequeueIfLuaFalse = true,
						name = "North Horn",
						uuid = "d4738a10-1f5c-4b6e-8a2d-30e1c5f7a900",
						version = 3,
					},
				},
				{
					data = 
					{
						category = "Lua",
						conditionLua = "return eventArgs ~= nil and eventArgs.a1 == 0 and eventArgs.a2 == 1 and eventArgs.a3 == 2",
						dequeueIfLuaFalse = true,
						name = "Omni Set Map Effect",
						uuid = "1a2b3c4d-003d-4b2b-9c3d-b2c1c105a03d",
						version = 3,
					},
				},
			},
			enabled = true,
			eventType = 14,
			loop = true,
			mechanicTime = 0,
			name = "[FTM] MapFX",
			throttleTime = 0,
			timeRange = false,
			timelineIndex = 0,
			timeout = 5,
			timerEndOffset = 0,
			timerOffset = 0,
			timerStartOffset = 0,
			uuid = "1a2b3c4d-003e-4b2b-9c3e-b2c1c105a03e",
			version = 2,
		},
		inheritedObjectUUID = "",
	},
	inheritedProfiles = 
	{
	},
}



return tbl
