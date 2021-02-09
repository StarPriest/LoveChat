--- 抄袭自 https://bbs.nga.cn/read.php?tid=21171325
--- 感谢原作者

local function loveChat(self)
    if GetCVar("portal") == "CN" then
        ConsoleExec("portal TW")
    end
    SetCVar("profanityFilter",0)
    print("[LoveChat] Loaded,Enjoy your chat!")
    self:UnregisterEvent("ADDON_LOADED")
end

local happyChat=CreateFrame("FRAME",nil)
happyChat:RegisterEvent("ADDON_LOADED")
happyChat:SetScript("OnEvent",loveChat)