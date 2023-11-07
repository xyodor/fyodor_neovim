return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffer",
        offsets = {
          {
            filetype = "NvimTree",
            text = "File Exploreer",
            highlight = "Directory",
            separator = true,
          }
        },
      },
    })
  end
}
