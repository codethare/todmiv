local status, cursorword = pcall(require, "mini.cursorword")
if (not status) then return end

cursorword.setup()
