local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

-- Supported languages -> https://github.com/nvim-treesitter/nvim-treesitter#supported-languages

configs.setup {
  -- A list of parser names, "maintainer" or "all"
  ensure_installed = { "c", "lua", "rust", "python", "typescript", "javascript" },
  sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
  ignore_install = { },  -- Ignore installing (for "all")
  highlight = {
    enable = true, -- `false` will disable the whole extension
    disable = { "" }, -- Language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,  -- Video had it true
  },
  indent = { enable = true, disable = { "yaml" } },  -- For the `=` operator.
  -- Extensions
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  }
}
