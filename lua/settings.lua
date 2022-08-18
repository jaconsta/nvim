local options = 
{
  backup = false,        -- Creates a backup file
  swapfile = false,      -- Creates a swapfile
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  conceallevel = 0,      -- So that ``is visible in markdown files
  number = true,         -- Set numbered lines
  relativenumber = true, -- Set relative numbered lines
  autoindent = true,     -- Automatic follow the indentation rule
  tabstop = 2,           -- Insert 2 spaces for a tab
  shiftwidth = 2,        -- Number of spaces inserted for each indentations
  expandtab = true,      -- Convert tabs to spaces
  smarttab = true,
  softtabstop = 4,
  mouse = "a",           -- Allow the mouse to be used
  encoding = "UTF-8",    -- Encoding written to a file
  wrap = false,          -- Display lines as one long line
  splitbelow = true,     -- force all horizontal splits to go below current window
  splitright = true,     -- force all vertical splits to go to the right of current window
  title = true,          -- Shows current file in terminal tab or window title
  colorcolumn = "120",   -- Red column that shows the line limit
  scrolloff = 3,          -- Number of context lines you see above and below the cursor
}

for k, v in pairs(options) do
	vim.o[k] = v
end

