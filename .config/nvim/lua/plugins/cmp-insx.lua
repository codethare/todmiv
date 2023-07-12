local status, insx = pcall(require, "insx.preset.standard")
if (not status) then return end

insx.setup()
