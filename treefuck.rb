require_relative "nodebitch.rb"
require 'pry'

class BinarySearchTree
  attr_reader :root, :current_node, :score, :movie_name
  attr_accessor :node

  def initialize(root = nil)
    @root = root
    @node = node
    @score = score
    @movie_name = movie_name
  end

  def insert(score, movie_name)
    if @root == nil
      @root = Node.new(score, movie_name)
      @node = @root
      return
    end
    @node = @root
    if node.right == nil
      node.right = node
      return
    elsif node.left == nil
      node.left = node
      return
    end
    if root.left == nil && root.right == nil && node.score > root.score
      node.right = Node.new(score, movie_name)
      node = node.right
    elsif root.left == nil && root.right == nil && node.score < root.score
      node.left = Node.new(score, movie_name)
      node = node.left
    elsif node.right == nil && node.left.score < node.score
      node.right = Node.new(score, movie_name)
      node = node.right
    elsif node.left == nil && node.right.score > node.score
      node.left = Node.new(score, movie_name)
      node = node.left
    elsif node.score > node.left.score
      node = node.right
    elsif node.score < node.right.score
      node = node.left
    elsif node.left.score < node.score && node.right.score > node.score
      node = Node.new(score, movie_name)
    else
      return
    end
  end

end
# binding.pry
# tree = BinarySearchTree.new
#
# tree.insert(61, "Bill & Ted's Excellent Adventure")
# tree.insert(16, "Johnny English")
# tree.insert(92, "Sharknado 3")
# tree.insert(50, "Hannibal Buress: Animal Furnace")
