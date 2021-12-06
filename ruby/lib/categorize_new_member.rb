#!/usr/bin/env ruby
# frozen_string_literal: true

# Better solution
# data.map { |age, handicap| age >= 55 && handicap > 7 ? "Senior" : "Open" }

def open_or_senior(data)
  result = []

  data.each do |age, handicap|
    # puts "Age: #{age} Handicap: #{handicap}"
    if age >= 55 && handicap > 7
      result.push('Senior')
    else
      result.push('Open')
    end
  end

  # puts result.inspect
  result
end
