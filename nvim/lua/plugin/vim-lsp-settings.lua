-- Set specific language server
vim.api.nvim_set_var('lsp_settings_filetype_typescript', { 'typescript-language-server', 'eslint-language-server' })

-- Debug
vim.api.nvim_set_var('lsp_log_verbose', 1)
vim.api.nvim_set_var('lsp_log_file', '/tmp/vim-lsp.log')
