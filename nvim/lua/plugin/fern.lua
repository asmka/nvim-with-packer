vim.api.nvim_set_var('fern#disable_default_mappings', 1)
vim.api.nvim_set_var('fern#disable_drawer_smart_quit', 1)
vim.api.nvim_set_var('fern#disable_drawer_auto_resize_all', 0)
vim.cmd [[nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>]]

function _G.FernInit()
  vim.cmd [[
    nmap <buffer> cd <Plug>(fern-action-cd)
    nmap <buffer> ! <Plug>(fern-action-hidden)
    nmap <buffer> l <Plug>(fern-action-expand)
    nmap <buffer> h <Plug>(fern-action-collapse)
    nmap <buffer> L <Plug>(fern-action-enter)
    nmap <buffer> H <Plug>(fern-action-leave)
    nmap <buffer> <CR> <Plug>(fern-action-open:edit-or-vsplit)
    nmap <buffer> s <Plug>(fern-action-open:vsplit)
    nmap <buffer> t <Plug>(fern-action-open:tabedit)
    nmap <buffer> q <Plug>(fern-action-mark)
    nmap <buffer> d <Plug>(fern-action-diff:select:vert)
    nmap <buffer> r <Plug>(fern-action-reload)

    nmap <buffer> D <Plug>(fern-action-new-dir)
    nmap <buffer> F <Plug>(fern-action-new-file)
    nmap <buffer> M <Plug>(fern-action-move)
    nmap <buffer> C <Plug>(fern-action-copy)
    nmap <buffer> E <Plug>(fern-action-remove)
  ]]
end

vim.cmd [[
  augroup FernEvents
    autocmd!
    autocmd FileType fern call v:lua.FernInit()
  augroup END
]]
