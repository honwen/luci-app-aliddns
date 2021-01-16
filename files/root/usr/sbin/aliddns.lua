#!/usr/bin/lua
json=require "luci.jsonc"
if arg[1] then
	d=json.parse(arg[1])
else
	print("arg1 not exist")
end
for k,v in pairs(d.DomainRecords.Record) do
	if	v.Type=="AAAA" then
		print(v.Value)
	end
end
