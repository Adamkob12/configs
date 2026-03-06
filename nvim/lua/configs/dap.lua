local dap = require("dap")

dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = "codelldb",
    args = { "--port", "${port}" },
    -- On windows you might need to specify the full path to the executable
    -- command = "C:\Users\<your-username>\AppData\Local\mason\bin\codelldb.exe",
    -- args = { "--port", "${port}" },
  },
}

dap.configurations.rust = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
  },
  {
    name = "Launch test file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input("Path to test executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
    args = {},
    env = {
      RUST_BACKTRACE = "full",
    },
    filter_Stdout = true,
    filter_Stderr = true,
  },
}
