vim.g.mapleader = ","
vim.g.localleader = " "

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- mapping

-- 强制使用hjkl，禁止使用方向键
map("n", "<Left>", "<Nop>", opt)
map("n", "<Right>", "<Nop>", opt)
map("n", "<Up>", "<Nop>", opt)
map("n", "<Down>", "<Nop>", opt)

-- jj 代替<Esc> 切换 Normal Mode
-- map("i", "jj", "<Esc>", opt)
-- 0 光标移动至有字符开始的行首，9 光标移动到行尾
map("n", "0", "^", opt)
map("n", "9", "$", opt)

-- 窗口移动
map("n", "<C-j>", "<C-W>j", opt)
map("n", "<C-k>", "<C-W>k", opt)
map("n", "<C-h>", "<C-W>h", opt)
map("n", "<C-l>", "<C-W>l", opt)

-- 插件映射配置

-- neo-tree
map("n", "<Leader>t", ":NeoTreeShowToggle<CR>", opt)

local pluginKeys = {}

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 上一个
    ['<C-k>'] = cmp.mapping.select_prev_item(),
    -- 下一个
    ['<C-j>'] = cmp.mapping.select_next_item(),
    -- 出现补全
    ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    -- 取消
    ['<A-,>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    }),
    -- 确认
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm({
      select = true ,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  }
end

return pluginKeys
