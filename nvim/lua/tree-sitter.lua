return require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true
  },
  rainbow = {
    enable = true,
    disable = {'bash'} -- please disable bash until I figure #1 out
  }
   -- ,
  -- refactor = {
    -- navigation = {
      -- enable = true,
      -- keymaps = {
        -- -- goto_definition = "gd",
        -- -- list_definitions = "gnD",
        -- list_definitions_toc = "gO",
        -- goto_next_usage = "<a-*>",
        -- goto_previous_usage = "<a-#>",
      -- },
    -- },
  -- },
  -- textobjects = {
    -- select = {
      -- enable = true,
      -- keymaps = {
        -- -- You can use the capture groups defined in textobjects.scm
        -- ["af"] = "@function.outer",
        -- ["if"] = "@function.inner",
        -- ["ac"] = "@class.outer",
        -- ["ic"] = "@class.inner",

        -- -- Or you can define your own textobjects like this
        -- ["iF"] = {
          -- python = "(function_definition) @function",
          -- cpp = "(function_definition) @function",
          -- c = "(function_definition) @function",
          -- java = "(method_declaration) @function",
        -- },
      -- },
    -- },
    -- swap = {
      -- enable = true,
      -- swap_next = {
        -- ["<leader>a"] = "@parameter.inner",
      -- },
      -- swap_previous = {
        -- ["<leader>A"] = "@parameter.inner",
      -- },
    -- },
  -- },
}
