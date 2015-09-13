# Simple script that returns rot13 of the first command line arg

v1 = ARGV[0]
arr = Array.new

v1.split("").each do |i|
  if /[[:upper:]]/.match(i)
    ord26 = i.ord - 65
    arr.push(((ord26 + 13) % 26 + 65).chr)
  else
    ord26 = i.ord - 97
    arr.push(((ord26 + 13) % 26 + 97).chr)
  end
end

puts arr.join("")
