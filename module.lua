function ProccessArgs(...)
    local k = {}
    for i,v in pairs(...) do
        if i ~= 1 then
            k[i] = v
        end
    end
    return k
end

function say(msg)
    game:service"ReplicatedStorage".DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, 'All')
end
