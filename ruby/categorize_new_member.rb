#!/usr/bin/env ruby

# data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }

def open_or_senior(data)
  result = []

  data.each do |age, handicap|
    puts "Age: #{age} Handicap: #{handicap}"
    if age >= 55 && handicap > 7
      result.push('Senior')
    else
      result.push('Open')
    end
  end

  puts result.inspect
  result
end

puts open_or_senior([[45, 12], [55, 21], [19, -2], [104, 20]]).inspect # ['Open', 'Senior', 'Open', 'Senior']
puts open_or_senior([[3, 12],[55,1],[91, -2],[54, 23]]).inspect # ['Open', 'Open', 'Open', 'Open']
puts open_or_senior([[59, 12],[55,-1],[12, -2],[12, 12]]).inspect # ['Senior', 'Open', 'Open', 'Open']
puts open_or_senior([[16, 23],[73,1],[56, 20],[1, -1]]).inspect # ['Open', 'Open', 'Senior', 'Open']
