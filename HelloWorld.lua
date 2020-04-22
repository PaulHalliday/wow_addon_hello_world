SLASH_HELLO1 = "/helloworld"
SLASH_HELLO2 = "/msg"

local function showGreeting(name)
    local greeting = "Hello, " .. name .. "!"

    message(greeting)
end

local function HelloWorldHandler(name)
    if(string.len(name) > 0) then
        showGreeting(name)
    else
        local playerName = UnitName("player")

        showGreeting(playerName)
    end
end

SlashCmdList["HELLO"] = HelloWorldHandler
