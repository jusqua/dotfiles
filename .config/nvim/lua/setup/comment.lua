-- : Checking package
local ok, comment = pcall(require, 'Comment')
if not ok then
  return
end

-- : Setup
comment.setup {}

