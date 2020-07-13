require 'pry'

require 'yaml'
require 'json'

=begin
time1 = Time.new

#resultYAML = YAML.load File.read('test.yaml')
puts YAML.load File.read('test.yaml')
#puts resultYAML
puts ""

puts JSON.load File.read("test.json")

# to and from translattion fucntions for yaml and json

puts "\nhello from event manager"

fname = "sample.txt"
#somefile = File.open(fname, "w")
somefile = File.open(fname, "a")
somefile.puts "Hello file!  " + time1.inspect
somefile.close

file = File.open("sample.txt", "r")
contents = file.read
puts contents

=end

puts "EventManager Initialized!"

puts ""

contents = File.read "event_attendees.csv"
puts contents

puts ""

lines = File.readlines "event_attendees.csv"
lines.each do |line|
  columns = line.split(",")
  p columns
end

puts ""

lines = File.readlines "event_attendees.csv"
lines.each do |line|
  columns = line.split(",")
  name = columns[2]
  puts name
end

puts

require "csv"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol
contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end