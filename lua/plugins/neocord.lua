return {
  "IogaMaster/neocord",
  config = function()
    -- General options
    local logo = "https://styles.redditmedia.com/t5_30kix/styles/communityIcon_n2hvyn96zwk81.png" -- "auto" or urlA
    local logo_tooltip = nil -- nil or string
    local main_image = "language" -- "language" or "logo"
    local client_id = "1157438221865717891" -- Use your own Discord application client id (not recommended)
    local log_level = nil -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    local debounce_timeout = 10 -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    local blacklist = {} -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    local file_assets = {} -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
    local show_time = true -- Show the timer
    local global_timer = false -- if set true, timer won't update when any event are triggered

    -- Rich Presence text options
    local editing_text = "Editing %s" -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    local file_explorer_text = "Browsing %s" -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    local git_commit_text = "Committing changes" -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    local plugin_manager_text = "Managing plugins" -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    local reading_text = "Reading %s" -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    local workspace_text = "Working on %s" -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
    local line_number_text = "Line %s out of %s" -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
    local terminal_text = "Using Terminal" -- Format string rendered when in terminal mode.
  end
}
