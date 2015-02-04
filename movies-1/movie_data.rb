#!/bin/ruby
# -*- coding: utf-8 -*-
require "set"

class MovieData
  def initialize()
    @data = {
             users: Set.new,
             user_id: Hash.new,
             movies: Set.new,
             movie_id: Hash.new
            }
    @btime = 0
  end

  def get_data()
    @data
  end

  # this will read in the data from the original ml-100k files
  # and stores them in whichever way it needs to be stored
  def load_data()
    puts "Which file would you like to pull data from?"

    IO.foreach($stdin.gets.chomp) do |l|
      ui, mi, r, ts = l.split
      user_id, movie_id, rating, timestamp = ui.to_i, mi.to_i, r.to_i, ts.to_i

      # mov_and_rat = movies_and_ratings
      # use_and_rat = users_and_ratings
      @data[:users].add(user_id)
      unless(@data[:user_id][user_id])
        @data[:user_id][user_id] = {
                                    mov_and_rat: { movie_id => rating },
                                    titles: [movie_id]
                                   }
      else
        @data[:user_id][user_id][:mov_and_rat][movie_id] = rating
        @data[:user_id][user_id][:titles].push(movie_id)
      end

      @data[:movies].add(movie_id)
      unless(@data[:movie_id][movie_id])
        @data[:movie_id][movie_id] = {
                                      use_and_rat: { user_id => rating },
                                      ratings: [rating]
                                     }
      else
        @data[:movie_id][movie_id][:use_and_rat][user_id] = rating
        @data[:movie_id][movie_id][:ratings].push(rating)
      end
    end
  end

  # this will return a number that indicates the popularity (higher
  # numbers are more popular). You should be prepared to explain the
  # reasoning behind your definition of popularity
  #
  # The algorithm comes from here: http://stackoverflow.com/a/1411455.
  # The first definition given by Dictionary.com for popular is
  # "regarded with favor, approval, or affection by people in general".
  # As such, I wanted the average score to indicate favor while bearing
  # in mind how many had reviewed the film in order to indicate the "people
  # in general" bit. As such, films with a larger degree of people who reviewed
  # them get a slight boost added in comparison to films with a low degree.
  def popularity(movie_id)
    movie_id = movie_id.to_i
    unless(@data[:movie_id][movie_id][:popularity])
      factor = 1.1
      totRatings = @data[:movie_id][movie_id][:ratings].length
      aveRating = @data[:movie_id][movie_id][:ratings].inject(:+) / totRatings
      pop = ((1 - (1/(factor ** totRatings))) * aveRating) +
            (3/(factor ** totRatings))

      @data[:movie_id][movie_id][:popularity] = pop
    end

    @data[:movie_id][movie_id][:popularity]
  end

  # this will generate a list of all movie_id’s ordered by decreasing
  # popularity
  def popularity_list
    ta = [] # temporary array
    @data[:movie_id].each do |k, v|
      self.popularity(k) unless(@data[:movie_id][k][:popularity])
      ta.push([k, @data[:movie_id][k][:popularity]])
    end

    ta.sort { |a, b| b[1] <=> a[1] }.map { |r| r[0] }
  end

  # this will generate a number which indicates the similarity in
  # movie preference between user1 and user2 (where higher numbers
  # indicate greater similarity)
  #
  # Calculates by taking the difference between each movie both users
  # have watched and adding each subsequent calculated difference.
  # That final sum is then divided by the number of films both users
  # have watched (thereby excluding any which one of them – but not the
  # other – may've seen).
  def similarity(user1, user2)
    user1, user2 = user1.to_i, user2.to_i
    userA, userB = nil
    if(@data[:user_id][user1][:titles].length < @data[:user_id][user2][:titles].length)
      userA, userB = @data[:user_id][user1][:mov_and_rat], @data[:user_id][user2][:mov_and_rat]
    else
      userA, userB = @data[:user_id][user2][:mov_and_rat], @data[:user_id][user1][:mov_and_rat]
    end

    sim = 0
    count = 0
    userA.each do |k, v|
      (sim += 5 + (v - userB[k]).abs * -1.0; count += 1) if(userB[k])
    end

    sim / if(count > 0) then count else 1 end
  end

  # this return a list of users whose tastes are most similar to the
  # tastes of user u
  #
  # Most similar is kind of vague so I just took anyone to have a difference
  # no greater than 0.2 from entirely similar (5.0). This allows for the event
  # that no one has the exact same tastes as the user, ze can at least get a
  # few people who are close in taste to zir.
  def most_similar(u)
    u = u.to_i
    @data[:users].select do |user|
      self.similarity(user, u) >= 4.8 unless(user == u)
    end
  end
end

a = MovieData.new
a.load_data()

btime = Time.now
puts "First 10 of popularity list:\n#{a.popularity_list()[0..9]}\n\n"

puts "Last 10 of popularity list:\n#{a.popularity_list()[-10..-1]}\n\n"

puts "Most similar to 1 (since the list is less than 10, I just do this once):"
puts "#{a.most_similar(1)}"
etime = Time.now

puts "Total Time = #{((etime - btime) * 1000)}"
