---@class utils
---@field keymapSet fun(mode: string, keys: string, func: function|string, opts: any, bufnr?: number, prefix?: string)
---@field keymapSetList fun(maps: table|function, bufnr?: number, prefix?: string)
M = {}

-- Wrapper around keymap.set to allow for extra functionality
M.keymapSet = function(mode, keys, func, opts, bufnr, prefix)
  opts = opts or {}
  local defaults = {
    remap = true,
    silent = true,
  }

  -- merging defaults into opts
  for k, v in pairs(defaults) do
    opts[k] = v
  end

  -- setting the bufnr if provided
  if bufnr then
    opts.buffer = bufnr
  end

  -- if prefix is provided, add it to the description
  if prefix and opts.desc then
    opts.desc = prefix .. opts.desc
  end

  vim.keymap.set(mode, keys, func, opts)
end

-- Generic function for mapping keys based on a table
M.keymapSetList = function(maps, bufnr, prefix)
  if type(maps) == 'function' then
    maps = maps()
  end

  for key, value in pairs(maps) do
    require('utils').keymapSet(value[1], value[2], value[3], value[4] or nil, bufnr, prefix)
  end
end

-- Check if a file is too big. We disable some plugin functionality if the file is too big
M.isFileTooBig = function(bufnr)
  local max_filesize = 10 * 1024 -- 100 KB
  local check_stats = vim.uv.fs_stat
  local ok, stats = pcall(check_stats, vim.api.nvim_buf_get_name(bufnr))
  if ok and stats and stats.size > max_filesize then
    return true
  else
    return false
  end
end

return M
