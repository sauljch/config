vim.pack.add({'https://github.com/scottmckendry/cyberdream.nvim'})

local ffi = require('ffi')
pcall(ffi.cdef, [[
    typedef enum { MAC_MODE_LIGHT = 0, MAC_MODE_DARK = 1, MAC_MODE_UNKNOWN = -1 } MacMode;
    MacMode detect_mac_mode(void);
]])

local scheme = 'cyberdream'
local ok, lib = pcall(ffi.load, '/usr/local/lib/libdetectmacmode.dylib')
if ok and lib.detect_mac_mode() == 0 then
    scheme = 'cyberdream-light'
end

vim.cmd('colorscheme ' .. scheme)

