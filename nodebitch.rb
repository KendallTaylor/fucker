require_relative "treefuck.rb"
require 'pry'
class Node
  attr_reader :score, :movie_name
  attr_accessor :left, :right, :depth

  def initialize(score, movie_name)
    @score = score
    @movie_name = movie_name
    @left = left
    @right = right
    @depth = depth
  end

end
