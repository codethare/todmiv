local status, incRename = pcall(require, "inc_rename")
if (not status) then return end

incRename.setup()

vim.keymap.set("n", "<leader>rn", ":IncRename ")
