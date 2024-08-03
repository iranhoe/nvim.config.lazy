local keymap = vim.keymap
vim.g.mapleader = " "
keymap.set("n", "<leader>pv", vim.cmd.Ex) -- open explorer

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

keymap.set("n", "x", '"_x') -- Do not yank with x
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true }) -- Swap line to up
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true }) -- Swap line to down

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "J", "mzJ`z")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("n", "<leader>vwm", function()
  require("vim-with-me").StartVimWithMe()
end)
keymap.set("n", "<leader>svwm", function()
  require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set({ "n", "v" }, ">", ">gv")
keymap.set({ "n", "v" }, "<", "<gv")
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("i", "<C-c>", "<Esc>")

keymap.set("n", "Q", "<nop>")
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
keymap.set("n", "gn", ":bn<CR>")
keymap.set("n", "gp", ":bp<CR>")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/iranhoe/packer.lua<CR>")
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")

keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- keymap.set("")
-- OPTIONALS
-- vim.keymap('n', '+', '<C-a>')
-- vim.keymap('n', '-', '<C-x>')
-- keymap.set('n', 'dw', 'vb"_d') -- Delete a word backwards
keymap.set("n", "<leader><C-a>", "gg<S-v>G")

-- buffers
keymap.set("n", "<F4>", ":bd<CR>", { silent = true })
keymap.set("n", "sc", ":q<CR>", { silent = true })

-- Tab edit
keymap.set("n", "te", ":tabedit<Return>", { silent = true }) -- New Tab
keymap.set("n", "tc", ":tabclose<Return>", { silent = true }) -- New Tab
keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- split window
keymap.set("n", "ss", ":split<Return><C-w>w", { silent = true }) -- Split Horizontal
keymap.set("n", "sv", ":vsplit<Return><C-w>w", { silent = true }) -- Split Vertical
-- move window
keymap.set("n", "sh", "<C-w>h", { silent = true }) -- New Tab
keymap.set("n", "sj", "<C-w>j", { silent = true }) -- New Tab
keymap.set("n", "sk", "<C-w>k", { silent = true }) -- New Tab
keymap.set("n", "sl", "<C-w>l", { silent = true }) -- New Tab
-- resize window
keymap.set("v", "<up>", "<C-w>+")
keymap.set("v", "<down>", "<C-w>-")
keymap.set("v", "<left>", "<C-w><")
keymap.set("v", "<right>", "<C-w>>")
--
