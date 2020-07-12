require 'yaml'
require 'pry'

require 'json'

puts YAML.load File.read('test.yaml')
#puts resultYAML
puts ""

puts JSON.load File.read("test.json")

# to and from translattion fucntions for yaml and json

puts "\nhello from event manager"

fname = "sample.txt"
somefile = File.open(fname, "w")
somefile.puts "Hello file!"
somefile.close