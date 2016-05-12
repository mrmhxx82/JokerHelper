

function run(msg, matches)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = '🕒 Ir Time:'..jdat.FAtime..' \n📆 Ir Data:'..jdat.FAdate..'\n    ------------\n🕒 En Time:'..jdat.ENtime..'\n📆 En Data:'..jdat.ENdate.. '\⚠ Chanel Id: @JokerTeam'
return text
end
return {
  patterns = {"^(زمان)$"}, 
run = run 
}


