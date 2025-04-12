local M = {}
function M.simple(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(msg)
    DrawNotification(false,true)
end

return M