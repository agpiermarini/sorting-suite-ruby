require 'minitest'
require 'minitest/autorun'
require './bubble-sort/lib/bubble_sort.rb'

class BubbleSortTest < Minitest::Test
  def test_three_numbers
    bubble_sort = BubbleSort.sort([3, 1, 2])

    assert_equal [1,2,3], bubble_sort
  end

  def test_four_numbers
    bubblesort = BubbleSort.sort([1,6,4,3,2])

    assert_equal [1,2,3,4,6], bubblesort
  end

  def test_five_numbers
    bubblesort = BubbleSort.sort([1,6,22,4,3,2])

    assert_equal [1,2,3,4,6,22], bubblesort
  end

  def test_six_numbers
    bubblesort = BubbleSort.sort([1,6,22,4,3,2,13])

    assert_equal [1,2,3,4,6,13,22], bubblesort
  end

  def test_many_numbers
    array = Array.new
    1000.times { array.push(rand(1000)) }
    sorted_array = array.sort

    bubblesort = BubbleSort.sort(array)

    assert_equal sorted_array, bubblesort
  end

end
