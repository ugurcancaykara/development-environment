return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      {
        'ANGkeith/telescope-terraform-doc.nvim',
        config = function()
          require('telescope').load_extension 'terraform_doc'
        end,
      },
    },
  },
}
