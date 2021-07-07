local rtBox = nil
local isOpen = false

function OpenChat()
    isOpen = true
    local frame = vgui.Create("DFrame")
    frame:SetSize(500, 500)
    frame:Center()
    frame:MakePopup()
    frame.OnClose = function(s)
        isOpen = false
        s:Remove()
    end

    local panel = vgui.Create("DPanel", frame)
    panel:SetPos(10, 30)
    panel:SetSize(500-20, 500 - 30 -50)

    rtBox = vgui.Create("RichText" , panel)
    rtBox:SetSize(500-20, 500-30-50)

    local entry = vgui.Create ("DTextEntry", frame)
    entry:SetPos (10,30 + (500 - 30 - 50)+ 5)
    entry:SetSize(500-20 , 40)

end

hook.Add("OnPlayerChat" , "OpenChatMenu", function(Ply, text)
   if ply == localPlayer() then
        if string.lower(text) =="!chat" then
            OpenChat()
        end
    end

end)



