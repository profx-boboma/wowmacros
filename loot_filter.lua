# delete what is selected
/run DeleteCursorItem();

# Delete all gray items in bag
/run local i,r=0;for b=0,4 do for s=1,GetContainerNumSlots(b) do ClearCursor();i={GetContainerItemInfo(b,s)};r=i[7];if r and string.find(r,"9d9d9d") then PickupContainerItem(b,s);DeleteCursorItem() end end end

# add selected item to whitelist
/run if not _G['wlist'] then _G['wlist']={} end local t,id,l=GetCursorInfo();if t=='item' then _G['wlist'][id]=true end ClearCursor()

# remove selected item from whitelist
/run if not _G['wlist'] then _G['wlist']={} end local t,id,l=GetCursorInfo();if t=='item' then _G['wlist'][id]=false end ClearCursor()

# set wlist to inv
/run _G['wlist']={};for b=0,4 do for s=1,GetContainerNumSlots(b) do local id=select(10,GetContainerItemInfo(b,s));if id then _G['wlist'][id]=true end end end

# del all but wlist
/run local w=_G['wlist'];if w then for b=0,4 do for s=1,GetContainerNumSlots(b) do local id=select(10,GetContainerItemInfo(b,s));if not w[id] then PickupContainerItem(b,s);DeleteCursorItem() end end end else print('no wlist') end

# check if hearth is in white list
/run local w=_G['wlist'];if not w then print('No White List Set') else if w[6948] then print('yay!') else print('somethings wrong') end end

# print all item IDs
/run for b=0,4 do for s=1,GetContainerNumSlots(b) do local id=select(10,GetContainerItemInfo(b,s));name=select(7,GetContainerItemInfo(b,s));if id then DEFAULT_CHAT_FRAME:AddMessage(id .. " - " .. name) end end end

# print white list
/run local w=_G['wlist']; if not w then print('No White List Set') else print('--White List--') for k, v in pairs(w) do local i=select(2, GetItemInfo(k)) if v then print(i) end end print('--End of White List--') end
