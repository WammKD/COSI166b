#!/bin/ruby

class Lexicon
  def initialize()
  end

  def self.scan(sentence)
    words = sentence.chomp().split()
    r = []
    words.each do |word|
      case
        when((word == "north") || (word == "south") || (word == "east") ||
             (word == "west") || (word == "down") || (word == "up") ||
             (word == "left") || (word == "right") || (word == "back"))
          r.push(['direction', word])
        when((word == "go") || (word == "stop") || (word == "kill") || (word == "eat"))
          r.push(['verb', word])
        when((word == "the") || (word == "in") || (word == "of") || (word == "from") || (word == "at") || (word == "it"))
          r.push(['stop', word])
        when((word == "door") || (word == "bear") || (word == "princess") || (word == "cabinet"))
          r.push(['noun', word])
        when(word.to_i.to_s == word.to_s)
          r.push(['number', word.to_i])
        else
          r.push(['error', word])
      end
    end

    r
  end
end
