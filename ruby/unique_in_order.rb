#!/usr/bin/env ruby

def unique_string(string)
  iterable = string.split('')
  counter = 0
  unique_iterable = []

  while counter <= iterable.length
    unique_iterable.push(iterable[counter]) unless compare_next(iterable[counter], iterable[counter + 1])
    counter += counter
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

puts 'AAAABBBCCDAABBB.kind_of?(Array) true'
puts unique_in_order('AAAABBBCCDAABBB').is_a?(Array)

puts '[1,2,2,3,3].kind_of?(Array) true'
puts unique_in_order([1, 2, 2, 3, 3]).is_a?(Array)

puts 'AAAABBBCCDAABBB == ["A","B","C","D","A","B"]'
puts unique_in_order('AAAABBBCCDAABBB').inspect

puts '[1,2,2,3,3] == [1,2,3]'
puts unique_in_order([1, 2, 2, 3, 3]).inspect

# Test.assert_equals(unique_in_order('AAAABBBCCDAABBB').kind_of?(Array), true)
# Test.assert_equals(unique_in_order([1,2,2,3,3]).kind_of?(Array), true)

# Test.assert_equals(unique_in_order('AAAABBBCCDAABBB'), ['A','B','C','D','A','B'])
# Test.assert_equals(unique_in_order([1,2,2,3,3]), [1,2,3])
