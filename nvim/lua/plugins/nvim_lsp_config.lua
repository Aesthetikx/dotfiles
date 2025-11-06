return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          enabled = false,
          mason = false,
        },
      },
    },
  },
}
