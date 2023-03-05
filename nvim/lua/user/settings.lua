local set = vim.opt


set.swapfile = false
set.backup = false
set.writebackup = false

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.relativenumber = true
set.nu = true
set.termguicolors = true
set.scrolloff = 8

set.smartcase = true
set.ignorecase = true
set.hlsearch = false
set.incsearch = true

set.splitbelow = true
set.splitright = true

vim.g.mapleader = " "

if os.getenv('WSL_DISTRO_NAME') ~= nil then
    vim.g.clipboard = {
        name = 'WslClipboard',
        copy = {
            ['+'] = 'clip.exe',
            ['*'] = 'clip.exe',
        },
        paste = {
            ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
            ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
        },
        cache_enabled = true,
    }
end
