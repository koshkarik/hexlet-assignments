# frozen_string_literal: true

require_relative 'test_helper'
require_relative '../lib/stack'

class StackTest < Minitest::Test
  # BEGIN
  def setup
    @stack = Stack.new
  end
  # END

  def test_push
    @stack.push!(1)
    assert(@stack.to_a == [1])
  end

  def test_pop
    @stack.push!(1)
    @stack.push!(2)
    @stack.pop!
    assert(@stack.to_a == [1])
  end

  def test_empty
    assert(@stack.empty? == true)
  end

  def test_clear
    @stack.push!(1)
    @stack.clear!
    assert(@stack.to_a == [])
  end
end

# test_methods = StackTest.new({}).methods.select { |method| method.start_with? 'test_' }
# raise 'StackTest has not tests!' if test_methods.empty?
