#!/usr/bin/ruby
# run from same dir as names.txt

names = File.open("names.txt").first
names.chomp
names = names.gsub(/["\s]/, '').split(",")

def score (name, index)
  s = 0
  for i in (0...name.size)
    c = name[i].ord - 64
    s += c
  end
  s * (index + 1)
end

total = 0
names.sort.each_with_index {|name, i|
  total += score name, i
}

puts total
