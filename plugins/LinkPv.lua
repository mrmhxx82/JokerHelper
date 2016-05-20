do

function run(msg, matches)
       if not is_owner(msg) then
        return "⚠️ You do not have access"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "⚠️ Create New Link With /newlink Command"
       end
         local text = "SuperGroup link  :\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "🔰 Group Link Sent To Pv"
end

return {
  patterns = {
    "^[/#!$]([Ll]inkpv)$"
  },
  run = run
}

end
