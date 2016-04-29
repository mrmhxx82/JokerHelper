do
    local function run(msg, matches)
    local support = '1063829041'
    local data = load_data(_config.moderation.data)
    local name_log = user_print_name(msg.from)
        if matches[1] == 'joinsupport' then
        local group_link = data[tostring(support)]['settings']['set_link']
    return "Joker Anti Spam Support:\n"..group_link
    end
end
return {
    patterns = {
    "^[!/#](joinsupport)$",
     },
    run = run
}
end