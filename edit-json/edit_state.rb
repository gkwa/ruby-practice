# coding: utf-8
require 'json'

file = File.read('local_state')
data_hash = JSON.parse(file)
h = data_hash["browser"]
if not h.has_key?("enabled_labs_experiments")
  data_hash["browser"]["enabled_labs_experiments"] = [ "enhanced-bookmarks-experiment@2" ]
else
  ary = data_hash["browser"]["enabled_labs_experiments"]
#  puts ary.inspect
  i = ary.index{|s| s =~ /enhanced-bookmarks-experiment/}
  if i.to_s == ''
    # It's nil or empty
    print "not found\n"
  else
    data_hash["browser"]["enabled_labs_experiments"][i] = "enhanced-bookmarks-experiment@2"
  end
end

File.open("local_state","w") do |f|
  f.write(data_hash.to_json)
end
