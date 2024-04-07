return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local nnoremap = function(rhs, lhs, bufopts, desc)
        bufopts.desc = desc
        vim.keymap.set("n", rhs, lhs, bufopts)
      end
      local bufopts = { noremap = true, silent = true }
      local builtin = require("telescope.builtin")
      nnoremap("<leader>sf", builtin.find_files, bufopts, "Find Project File")
      nnoremap("<leader>sg", builtin.git_files, bufopts, "Find Git File")
      nnoremap("<leader>ss", builtin.live_grep, bufopts, "Find String")
      nnoremap("<leader>/", function()
        builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, bufopts, "[/] Fuzzily search in current buffer")
    end
  }
}
