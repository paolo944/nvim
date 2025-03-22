-- Activer la numérotation des lignes
vim.o.number = true

-- Créer un groupe d'autocommandes
local numbertoggle_group = vim.api.nvim_create_augroup("numbertoggle", { clear = true })

-- Définir les autocommandes pour activer les numéros de ligne relatifs
vim.api.nvim_create_autocmd({ "BufEnter", "FocusGained", "InsertLeave", "WinEnter" }, {
  group = numbertoggle_group,
  pattern = "*",
  callback = function()
    if vim.o.number and vim.fn.mode() ~= "i" then
      vim.o.relativenumber = true
    end
  end,
})

-- Définir les autocommandes pour désactiver les numéros de ligne relatifs
vim.api.nvim_create_autocmd({ "BufLeave", "FocusLost", "InsertEnter", "WinLeave" }, {
  group = numbertoggle_group,
  pattern = "*",
  callback = function()
    if vim.o.number then
      vim.o.relativenumber = false
    end
  end,
})


vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
    
vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
