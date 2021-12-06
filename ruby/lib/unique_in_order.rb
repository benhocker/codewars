#!/usr/bin/env ruby
# frozen_string_literal: true

def unique_string(string)
  iterable = string.chars
  counter = 0
  unique_iterable = []

  while counter <= iterable.length
    # puts "Counter: #{counter}"
    unique_iterable.push(iterable[counter]) unless compare_next(iterable[counter], iterable[counter + 1])
    counter += 1
  end
  unique_iterable
end

def unique_array(array)
  array.uniq
end

def compare_next(string1, string2)
  string1 == string2
end

def unique_in_order(iterable)
  return unique_string(iterable) if iterable.is_a?(String)
  return unique_array(iterable) if iterable.is_a?(Array)

  throw 'Unable to determine variable type'
end
