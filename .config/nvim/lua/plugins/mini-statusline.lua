local status, statusline = pcall(require, "mini.statusline")
if (not status) then return end

statusline.setup()
