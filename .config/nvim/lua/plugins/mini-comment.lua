local status, comment = pcall(require, "mini.comment")
if (not status) then return end

comment.setup()
