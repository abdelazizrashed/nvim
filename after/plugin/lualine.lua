local function relative_file_path()
    local filepath = vim.fn.expand('%:p')                                  -- Get absolute file path
    local git_root = vim.fn.systemlist('git rev-parse --show-toplevel')[1] -- Get Git root
    if vim.v.shell_error ~= 0 or git_root == nil or git_root == '' then
        return vim.fn.expand('%:p')                                        -- Fallback to absolute path if not in a Git repo
    end
    return filepath:gsub("^" .. git_root .. "/", "")                       -- Remove Git root prefix
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { relative_file_path },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
