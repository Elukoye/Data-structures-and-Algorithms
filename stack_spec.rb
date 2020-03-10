# frozen_string_literal: true

# rspec test for ruby_stack.rb
require_relative 'ruby_stack.rb'

describe '#push' do
  stack = Stack.new
  num = 5
  it 'adds element to the stack' do
    expect(stack.push(num)).to eq([5])
  end

  it 'removes the most recent element from the stack' do
    expect(stack.pop).to eq(num)
  end

  it 'returns the topmost element of the stack' do
    expect(stack.peek).to eq(nil)
  end

  it 'returns true if stack is empty' do
    expect(stack.is_empty?).to eq(true)
  end
end
