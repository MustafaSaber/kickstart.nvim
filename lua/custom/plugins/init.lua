-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.pack.add {
  'https://github.com/yetone/avante.nvim',
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/ColinKennedy/mega.logging',
  'https://github.com/ColinKennedy/mega.cmdparse',
  -- Optional dependencies
  {
    -- support for image pasting
    src = 'https://github.com/HakonHarnes/img-clip.nvim',
  },
  {
    src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  },
}

require('img-clip').setup {
  default = {
    embed_image_as_base64 = false,
    prompt_for_file_name = false,
    drag_and_drop = {
      insert_mode = true,
    },
  },
}

require('render-markdown').setup {
  file_types = { 'markdown', 'Avante' },
}

require('avante').setup {
  provider = 'openai',
  auto_suggestions_provider = 'openai',
  providers = {
    openai = {
      endpoint = 'https://zllm.data.zalan.do/v1',
      model = 'bedrock/anthropic.claude-sonnet-4-20250514-v1:0',
      api_key_name = 'cmd:ztoken',
      extra_request_body = {
        temperature = 0.3,
        max_tokens = 8000,
      },
    },
  },
}
