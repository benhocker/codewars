#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/is_this_a_triangle'
require 'test/unit/assertions'
include Test::Unit::Assertions # rubocop:disable Style/MixinUsage

Test.assert_equal(is_triangle(1, 2, 2), true)
Test.assert_equal(is_triangle(7, 2, 2), false)
