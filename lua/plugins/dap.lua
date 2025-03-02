-- Set up icons.
local icons = {
  Stopped = { "", "DiagnosticWarn", "DapStoppedLine" },
  Breakpoint = "",
  BreakpointCondition = "",
  BreakpointRejected = { "", "DiagnosticError" },
  LogPoint = "",
}
for name, sign in pairs(icons) do
  sign = type(sign) == "table" and sign or { sign }
  vim.fn.sign_define("Dap" .. name, {
        -- stylua: ignore
        text = sign[1] --[[@as string]] .. ' ',
    texthl = sign[2] or "DiagnosticInfo",
    linehl = sign[3],
    numhl = sign[3],
  })
end

return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-telescope/telescope-dap.nvim",
    {
      "rcarriga/nvim-dap-ui",
      keys = {
        {
          "<leader>du",
          function()
            require("dapui").toggle({})
          end,
          desc = "Dap UI",
        },
      },
      opts = {
        icons = {
          collapsed = "",
          current_frame = "",
          expanded = "",
        },
        floating = { border = "rounded" },
        layouts = {
          {
            elements = {
              { id = "stacks", size = 0.30 },
              { id = "breakpoints", size = 0.20 },
              { id = "scopes", size = 0.50 },
            },
            position = "left",
            size = 40,
          },
        },
      },
    },
    {
      "theHamsta/nvim-dap-virtual-text",
      opts = { virt_text_pos = "eol" },
    },
    {
      "jbyuki/one-small-step-for-vimkind",
      keys = {
        {
          "<leader>dl",
          function()
            require("osv").launch({ port = 8086 })
          end,
          desc = "Launch Lua adapter",
        },
      },
    },
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("telescope").load_extension("dap")
    -- Refer to ./telescope.lua

    local telescope_dap = require("telescope").extensions.dap

    -- keymaps
    vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "DAP toggle breakpoint" })
    vim.keymap.set("n", "<leader>tb", telescope_dap.list_breakpoints, { desc = "DAP List breakpoints" })
    vim.keymap.set("n", "<leader>dc", function()
      dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
    end, { desc = "DAP Breakpoint condition" })
    vim.keymap.set("n", "<F5>", dap.continue, { desc = "DAP Continue" })
    vim.keymap.set("n", "<F6>", dap.step_over, { desc = "DAP Step over" })
    vim.keymap.set("n", "<F7>", dap.step_into, { desc = "DAP step into" })
    vim.keymap.set("n", "<F8>", dap.step_out, { desc = "DAP step out" })

    -- Automatically open the UI when a new debug session is created.
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dapui.close({})
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dapui.close({})
    end

    dap.adapters.nlua = function(callback, config)
      callback({ type = "server", host = config.host or "127.0.0.1", port = config.port or 8086 })
    end

    dap.configurations["lua"] = {
      {
        type = "nlua",
        request = "attach",
        name = "Attach to running Neovim instance",
      },
    }
  end,
}
