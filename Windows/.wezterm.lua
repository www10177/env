local wezterm = require 'wezterm'
local act = wezterm.action


return {
  -- 指定預設啟動 WSL
  default_prog = { 'wsl.exe', '~' },
  keys = {
    -- 按下 Alt + F1，自動在終端機輸入 qweasd
    {
      key = 'F1',
      mods = 'ALT',
      action = act.SendString 'hello world\r',
    },
  },
}
