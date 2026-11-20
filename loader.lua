-- Admin Command Loader
-- Use only in experiences you own or are authorized to administer.
-- Telemetry removed. The remote script itself is unchanged.

local SCRIPT_URL = "https://raw.githubusercontent.com/emirr24546-cyber/solittasoftwareadmincmds/refs/heads/main/solittasoftwareadmincmds.lua"

local function loadRemoteScript(url)
    local ok, source = pcall(function()
        return game:HttpGet(url)
    end)

    if not ok then
        warn("[Admin Loader] Download failed:", source)
        return
    end

    if type(source) ~= "string" or source == "" then
        warn("[Admin Loader] The URL returned an empty or invalid response.")
        return
    end

    local compileOk, chunk = pcall(loadstring, source)
    if not compileOk or type(chunk) ~= "function" then
        warn("[Admin Loader] Compile failed:", chunk)
        return
    end

    local runOk, result = pcall(chunk)
    if not runOk then
        warn("[Admin Loader] Script execution failed:", result)
        return
    end

    return result
end

loadRemoteScript(SCRIPT_URL)
