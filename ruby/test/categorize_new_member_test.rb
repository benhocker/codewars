#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/categorize_new_member'
require 'test/unit/assertions'
include Test::Unit::Assertions # rubocop:disable Style/MixinUsage

# rubocop:disable Style/WordArray
Test.assert_equal(
  open_or_senior([[45, 12], [55, 21], [19, -2], [104, 20]]),
  ['Open', 'Senior', 'Open', 'Senior']
)
Test.assert_equal(
  open_or_senior([[3, 12], [55, 1], [91, -2], [54, 23]]),
  ['Open', 'Open', 'Open', 'Open']
)
Test.assert_equal(
  open_or_senior([[59, 12], [55, -1], [12, -2], [12, 12]]),
  ['Senior', 'Open', 'Open', 'Open']
)
Test.assert_equal(
  open_or_senior([[16, 23], [73, 1], [56, 20], [1, -1]]),
  ['Open', 'Open', 'Senior', 'Open']
)
# rubocop:enable Style/WordArray
