function get_win32_versions()
    local win32_versions = promise.new()
    PerformHttpRequest("https://changelogs-live.fivem.net/api/changelog/versions/win32/server", function(Error, result, Head) 
        win32_versions:resolve(result)
    end, 'GET')
    return win32_versions.value
end
--- Usage
local api_data = get_win32_versions()