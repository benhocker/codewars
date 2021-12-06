#!/usr/bin/env ruby
# frozen_string_literal: true

def check_sides(side1, side2, side3)
  side1 + side2 > side3
end

def is_triangle(side1, side2, side3) # rubocop:disable Style/PredicateName
  return false if side1.zero? || side2.zero? || side3.zero?

  test1 = check_sides(side1, side2, side3)
  test2 = check_sides(side1, side3, side2)
  test3 = check_sides(side2, side3, side1)
  test1 == true && test2 == true && test3 == true

  # 1.a + b > c
  # 2.a + c > b
  # 3.b + c > a
end
