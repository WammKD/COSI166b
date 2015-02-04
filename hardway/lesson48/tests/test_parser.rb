#!/bin/ruby

require "ex48/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase
  def test_sentence_1()
    x = Sentence.new(1, 2, 3)
    s = x.parse_sentence([['verb', 'run'], ['direction', 'north']])
    assert_equal(s.subject, "player")
    assert_equal(s.verb, "run")
    assert_equal(s.object, "north")
  end

  def test_sentence_2()
    x = Sentence.new(1, 2, 3)
    s = x.parse_sentence([['noun', 'bear'], ['verb', 'eat'],
                          ['stop', 'the'], ['noun', 'honey']])
    assert_equal(s.subject, "bear")
    assert_equal(s.verb, "eat")
    assert_equal(s.object, "honey")
  end
end
