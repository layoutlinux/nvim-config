return {

  
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration
  },

  config = function()

    require("neogit").setup({

      disable_hint = false,
      disable_context_highlighting = false,
      disable_signs = false,
      disable_insert_on_commit = "auto",
      
      filewatcher = {
        interval = 1000,
        enabled = true,
      },
      
      commit_date_format = nil,
      log_date_format = nil,
      process_spinner = true,
      
      
      remember_settings = true,
      use_per_project_settings = true,
      
      ignored_settings = {
        "NeogitPushPopup--force-with-lease",
        "NeogitPushPopup--force",
        "NeogitPullPopup--rebase",
        "NeogitCommitPopup--allow-empty",
        "NeogitRevertPopup--no-edit",
      },
      
      highlight = {
        italic = true,
        bold = true,
        underline = true
      },

      use_default_keymaps = true,
      auto_refresh = true,
      sort_branches = "-committerdate",
      initial_branch_name = "",
      kind = "tab",
      disable_line_numbers = false,
      disable_relative_line_numbers = true,
      console_timeout = 2000,
      auto_show_console = true,
      auto_close_console = true,
      notification_icon = "󰊢",
      status = {
      show_head_commit_hash = true,
      recent_commit_count = 10,
      HEAD_padding = 10,
      HEAD_folded = false,
      mode_padding = 3,
      mode_text = {
        M = "modified",
        N = "new file",
        A = "added",
        D = "deleted",
        C = "copied",
        U = "updated",
        R = "renamed",
        DD = "unmerged",
        AU = "unmerged",
        UD = "unmerged",
        UA = "unmerged",
        DU = "unmerged",
        AA = "unmerged",
        UU = "unmerged",
        ["?"] = "",
      },
    },

      commit_editor = {
        kind = "tab",
        show_staged_diff = true,
        staged_diff_split_kind = "auto",
        spell_check = true,
      },

      commit_select_viiew = {
        kind = "tab",
      },

      commit_view = {
        kind = "vsplit",
        verify_commit = vim.fn.executable("gpg") == 1, -- Can be set to true or false, otherwise we try to find the binary
      },

      log_view = {
        kind = "tab",
      },

      rebase_editor = {
        kind = "auto",
      },

      reflog_view = {
        kind = "tab",
      },

      merge_editor = {
        kind = "auto",
      },

      description_editor = {
        kind = "auto",
      },

      tag_editor = {
        kind = "auto",
      },

      preview_buffer = {
        kind = "floating_console",
      },

      popup = {
        kind = "split",
      },

      stash = {
        kind = "tab",
      },

      refs_view = {
        kind = "tab",
      },

      signs = {
        hunk = { "", "" },
        item = { ">", "v" },
        section = { ">", "v" },
      },

      integrations = {
        
        telescope = nil,
        
        diffview = true,
    
        fzf_lua = true,

        mini_pick = nil,
      },

      sections = {
        -- Reverting/Cherry Picking
        sequencer = {
          folded = false,
          hidden = false,
        },

        untracked = {
          folded = false,
          hidden = false,
        },

        unstaged = {
          folded = false,
          hidden = false,
        },
        
        staged = {
          folded = false,
          hidden = false,
        },

        stashes = {
          folded = true,
          hidden = false,
        },

        unpulled_upstream = {
          folded = true,
          hidden = false,
        },

        unmerged_upstream = {
          folded = false,
          hidden = false,
        },

        unpulled_pushRemote = {
          folded = true,
          hidden = false,
        },

        unmerged_pushRemote = {
          folded = false,
          hidden = false,
        },

        recent = {
          folded = true,
          hidden = false,
        },

        rebase = {
          folded = true,
          hidden = false,
        },

      },
    

        mappings = {

          commit_editor = {
            ["q"] = "Close",
            ["<c-c><c-c>"] = "Submit",
            ["<c-c><c-k>"] = "Abort",
            ["<m-p>"] = "PrevMessage",
            ["<m-n>"] = "NextMessage",
            ["<m-r>"] = "ResetMessage",
          },

          commit_editor_I = {
            ["<c-c><c-c>"] = "Submit",
            ["<c-c><c-k>"] = "Abort",
          },

          rebase_editor = {
            ["p"] = "Pick",
            ["r"] = "Reword",
            ["e"] = "Edit",
            ["s"] = "Squash",
            ["f"] = "Fixup",
            ["x"] = "Execute",
            ["d"] = "Drop",
            ["b"] = "Break",
            ["q"] = "Close",
            ["<cr>"] = "OpenCommit",
            ["gk"] = "MoveUp",
            ["gj"] = "MoveDown",
            ["<c-c><c-c>"] = "Submit",
            ["<c-c><c-k>"] = "Abort",
            ["[c"] = "OpenOrScrollUp",
            ["]c"] = "OpenOrScrollDown",
          },

          rebase_editor_I = {
            ["<c-c><c-c>"] = "Submit",
            ["<c-c><c-k>"] = "Abort",
          },

          finder = {
            ["<cr>"] = "Select",
            ["<c-c>"] = "Close",
            ["<esc>"] = "Close",
            ["<c-n>"] = "Next",
            ["<c-p>"] = "Previous",
            ["<down>"] = "Next",
            ["<up>"] = "Previous",
            ["<tab>"] = "InsertCompletion",
            ["<space>"] = "MultiselectToggleNext",
            ["<s-space>"] = "MultiselectTogglePrevious",
            ["<c-j>"] = "NOP",
            ["<ScrollWheelDown>"] = "ScrollWheelDown",
            ["<ScrollWheelUp>"] = "ScrollWheelUp",
            ["<ScrollWheelLeft>"] = "NOP",
            ["<ScrollWheelRight>"] = "NOP",
            ["<LeftMouse>"] = "MouseClick",
            ["<2-LeftMouse>"] = "NOP",
          },

          popup = {
            ["?"] = "HelpPopup",
            ["A"] = "CherryPickPopup",
            ["d"] = "DiffPopup",
            ["M"] = "RemotePopup",
            ["P"] = "PushPopup",
            ["X"] = "ResetPopup",
            ["Z"] = "StashPopup",
            ["i"] = "IgnorePopup",
            ["t"] = "TagPopup",
            ["b"] = "BranchPopup",
            ["B"] = "BisectPopup",
            ["w"] = "WorktreePopup",
            ["c"] = "CommitPopup",
            ["f"] = "FetchPopup",
            ["l"] = "LogPopup",
            ["m"] = "MergePopup",
            ["p"] = "PullPopup",
            ["r"] = "RebasePopup",
            ["v"] = "RevertPopup",
          },

          status = {
            ["j"] = "MoveDown",
            ["k"] = "MoveUp",
            ["o"] = "OpenTree",
            ["q"] = "Close",
            ["I"] = "InitRepo",
            ["1"] = "Depth1",
            ["2"] = "Depth2",
            ["3"] = "Depth3",
            ["4"] = "Depth4",
            ["Q"] = "Command",
            ["<tab>"] = "Toggle",
            ["x"] = "Discard",
            ["s"] = "Stage",
            ["S"] = "StageUnstaged",
            ["<c-s>"] = "StageAll",
            ["u"] = "Unstage",
            ["K"] = "Untrack",
            ["U"] = "UnstageStaged",
            ["y"] = "ShowRefs",
            ["$"] = "CommandHistory",
            ["Y"] = "YankSelected",
            ["<c-r>"] = "RefreshBuffer",
            ["<cr>"] = "GoToFile",
            ["<s-cr>"] = "PeekFile",
            ["<c-v>"] = "VSplitOpen",
            ["<c-x>"] = "SplitOpen",
            ["<c-t>"] = "TabOpen",
            ["{"] = "GoToPreviousHunkHeader",
            ["}"] = "GoToNextHunkHeader",
            ["[c"] = "OpenOrScrollUp",
            ["]c"] = "OpenOrScrollDown",
            ["<c-k>"] = "PeekUp",
            ["<c-j>"] = "PeekDown",
            ["<c-n>"] = "NextSection",
            ["<c-p>"] = "PreviousSection",
          },
        },        
    })

  end

}


