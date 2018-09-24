require 'minitest'
require 'minitest/autorun'
require './insertion-sort/lib/insertion_sort.rb'

class InsertionSortTest < Minitest::Test
  def test_three_numbers
    insertion_sort = InsertionSort.sort([3,1,2])

    assert_equal [1,2,3], insertion_sort
  end

  def test_four_numbers
    insertion_sort = InsertionSort.sort([1,6,4,3,2])

    assert_equal [1,2,3,4,6], insertion_sort
  end

  def test_five_numbers
    insertion_sort = InsertionSort.sort([1,6,22,4,3,2])

    assert_equal [1,2,3,4,6,22], insertion_sort
  end

  def test_six_numbers
    insertion_sort = InsertionSort.sort([1,6,22,4,3,2,13])

    assert_equal [1,2,3,4,6,13,22], insertion_sort
  end

  def test_many_numbers
    array = Array.new
    100.times { array.push(rand(1000)) }
    sorted_array = array.sort

    insertion_sort = InsertionSort.sort(array)

    assert_equal sorted_array, insertion_sort
  end
end
