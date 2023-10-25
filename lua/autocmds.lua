local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
  clear = true,
})

local autocmd = vim.api.nvim_create_autocmd
local nvimcmd = vim.api.nvim_command
local mycmd = vim.api.nvim_create_user_command

-- 高亮显示行末空格或者tab键
nvimcmd("highlight ExtraWhiteSpace ctermbg=red guibg=#fe8019")
--[[ autocmd("BufWinEnter", {
	group = myAutoGroup,
	pattern = {"*.c","*.h","CMakeLists.txt","*.cmake","*.S","*.s","*.sh"},
	callback = function()
		nvimcmd("match ExtraWhiteSpace /\\s\\+$\\|\\t\\+/")
	end,
}) ]]
mycmd("ShowFix", "match ExtraWhiteSpace /\\s\\+$\\|\\t\\+/", { bang = true })
mycmd("NoShowFix", "match ExtraWhiteSpace //", { bang = true })

-- 用o换行不要延续注释
autocmd("BufEnter", {
  group = myAutoGroup,
  pattern = "*",
  callback = function()
    vim.opt.formatoptions = vim.opt.formatoptions
      - "o" -- O and o, don't continue comments
      + "r" -- But do continue when pressing enter.
  end,
})
