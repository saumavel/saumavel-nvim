if vim.fn.getenv("VSCODE_PID") ~= vim.NIL then
    -- Load VSCode-specific config
    require('vscodeSetup')
    return
  end
  
  require("saumavelSetup")
  