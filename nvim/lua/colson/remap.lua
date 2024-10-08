vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
	require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
	require("vim-with-me").StopVimWithMe()
end)

-- awsm remap :)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
-- Map <leader>y in normal and visual modes to "+y
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- Map <leader>Y in normal mode to yank from cursor to end of line to system clipboard
vim.keymap.set("n", "<leader>Y", [[:y$<CR>]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/colson/packer.lua<CR>")
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- UltiSnips trigger configuration
vim.g.UltiSnipsExpandTrigger = "<C-l>"

-- sorts and removes unused imports
vim.keymap.set("n", "<leader>oi", ":TSToolsOrganizeImports<CR>")
vim.keymap.set("n", "<leader>soi", ":TSToolsOrganizeImports<CR>")
-- sorts imports
vim.keymap.set("n", "<leader>si", ":TSToolsSortImports<CR>")
-- removes unused imports
vim.keymap.set("n", "<leader>ui", ":TSToolsRemoveUnusedImports<CR>")
vim.keymap.set("n", "<leader>ri", ":TSToolsRemoveUnusedImports<CR>")
-- adds imports for all statements that lack one and can be imported
vim.keymap.set("n", "<leader>ai", ":TSToolsAddMissingImports<CR>")
-- fixes all fixable errors
vim.keymap.set("n", "<leader>fe", ":TSToolsFixAll<CR>")
-- goes to source definition (available since TS v4.7)
vim.keymap.set("n", "<leader>d", ":TSToolsGoToSourceDefinition<CR>")
-- allow to rename current file and apply changes to connected files
vim.keymap.set("n", "<leader>r", ":TSToolsRenameFile<CR>")
vim.keymap.set("n", "<leader>rf", ":TSToolsRenameFile<CR>")
vim.keymap.set("n", "<leader>rn", ":TSToolsRenameFile<CR>")
-- find files that reference the current file (available since TS v4.2)
vim.keymap.set("n", "<leader>fr", ":TSToolsFileReferences<CR>")

-- NVIMTREE Project/Window Pane Resize
-- Increase the NvimTree (or current window) width by 5 columns
vim.api.nvim_set_keymap("n", "<leader>+", ":vertical resize +5<CR>", { noremap = true, silent = true })
-- Decrease the NvimTree (or current window) width by 5 columns
vim.api.nvim_set_keymap("n", "<leader>-", ":vertical resize -5<CR>", { noremap = true, silent = true })
-- Check the current width of the window
vim.api.nvim_set_keymap("n", "<leader>ww", ":echo winwidth(0)<CR>", { noremap = true, silent = true })
-- Trigger the :vertical resize command to manually adjust the width
vim.api.nvim_set_keymap("n", "<leader>fp", ":vertical resize ", { noremap = true, silent = false })

-- Save (write) all open files with a keybinding using :wall
vim.api.nvim_set_keymap("n", "<leader>w", ":wall<CR>", { noremap = true, silent = true })

-- Save all files and quit Neovim with a keybinding
vim.api.nvim_set_keymap("n", "<leader>q", ":wqa<CR>", { noremap = true, silent = true })

-- HTTP REST Client
-- Keybindings for improved workflow
vim.api.nvim_set_keymap("n", "<leader>rr", '<cmd>lua require("rest-nvim").run()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap(
	"n",
	"<leader>rl",
	'<cmd>lua require("rest-nvim").last()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
	"n",
	"<leader>rp",
	'<cmd>lua require("rest-nvim").preview()<CR>',
	{ noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<leader>re", '<cmd>lua require("rest-nvim").env()<CR>', { noremap = true, silent = true })
