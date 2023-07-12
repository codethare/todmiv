local status, tanum = pcall(require, "plugins.tabnum")
if (not status) then return end
tabnum.load()

