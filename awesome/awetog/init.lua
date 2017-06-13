local http = require "socket.http"

api_token = "0e7870870c4d3ce429a850f01ae09f81"

usr = api_token .. ":api_token"

request = "https://" .. usr .. "@www.toggl.com/api/v8/time_entries/current"
--request = "https://www.toggl.com/api/v8/time_entries/current"
print(request)
--http.USERAGENT = "curl/7.53.1"

header = {
    accept = "*/*",
    authentication = "Basic " .. usr
}

--r, c, h, a = http.request({
    --url = request,
    --headers = header
    ----redirect = false
--})
r = http.request(request)

print(r, c, h, a)
