require_relative 'treefuck'
require_relative 'nodebitch'
require 'Minitest/autorun'
require 'Minitest/pride'

class DateNightTest < Minitest::Test

  def test_root_node_can_be_created
    tree = BinarySearchTree.new
    tree.insert(3, "hi")

    assert_equal 3, tree.root.score
  end

  # def test_can_insert_info


  def test_can_insert_info_correctly
    tree = BinarySearchTree.new

    node = tree.insert(61, "Bill & Ted's Excellent Adventure")

    assert_equal 61, tree.node.score
    assert_equal "Bill & Ted's Excellent Adventure", tree.node.movie_name

    node = tree.insert(46, "Yes Man")

    assert_equal 46, tree.node.score
    assert_equal "Yes Man", tree.node.movie_name
  end

end
