vim.lsp.config('tsserver', {
    cmd = { 'typescript-language-server', '--stdio' },
    filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact' },
    root_dir = vim.fs.root(0, { 'package.json', '.git' }),
})
