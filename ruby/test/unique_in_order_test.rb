#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/unique_in_order'
require 'test/unit/assertions'
include Test::Unit::Assertions # rubocop:disable Style/MixinUsage

# rubocop:disable Style/ClassCheck
Test.assert_equal(unique_in_order('AAAABBBCCDAABBB').kind_of?(Array), true)
Test.assert_equal(unique_in_order([1, 2, 2, 3, 3]).kind_of?(Array), true)

Test.assert_equal(unique_in_order('AAAABBBCCDAABBB'), ['A', 'B', 'C', 'D', 'A', 'B']) # rubocop:disable Style/WordArray
Test.assert_equal(unique_in_order([1, 2, 2, 3, 3]), [1, 2, 3])
# rubocop:enable Style/ClassCheck
