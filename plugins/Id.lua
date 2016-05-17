do

local function run(msg, matches)
  if matches[1] == 'id' then
	return "> Group ID: "..msg.to.id.."\n> Group Name: "..msg.to.title.."\n> First Name: "..(msg.from.first_name or '').."\n> Last Name: "..(msg.from.last_name or '').."\n> Your ID: "..msg.from.id.."\n> Username: @"..(msg.from.username or '').."\n> Phone Number: +"..(msg.from.phone or '') endend

return {
  patterns = {
    "^[!#$/]([Ii]d)$",
    "^([Ii]d)$"
    },
  run = run
}
end
