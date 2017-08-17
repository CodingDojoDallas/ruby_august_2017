a = ["Chrome", "Opera", "Firefox", "Safari"]

a.any? { |i| puts i.length > 5 }

a.each { |i| print i, "***" }

a.collect { |i| puts i.reverse }

puts a.detect { |i| i.index("F") }
puts (1..100).find { |i| i % 3 == 0 && i % 7 == 0}

puts (1..100).find_all { |i| i % 77 == 0 }

puts (1..100).reject { |i| i % 77 != 0 }

5.upto(12) { |i| print i, " " }
