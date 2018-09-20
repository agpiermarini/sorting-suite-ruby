require 'minitest'
require 'minitest/autorun'
require './quick-sort/lib/quick_sort.rb'

class QuickSortTest < Minitest::Test
  def test_three_numbers
    quicksort = QuickSort.sort([3,1,2])

    assert_equal [1,2,3], quicksort
  end

  def test_four_numbers
    quicksort = QuickSort.sort([1,6,4,3,2])

    assert_equal [1,2,3,4,6], quicksort
  end

  def test_five_numbers
    quicksort = QuickSort.sort([1,6,22,4,3,2])

    assert_equal [1,2,3,4,6,22], quicksort
  end

  def test_six_numbers
    quicksort = QuickSort.sort([1,6,22,4,3,2,13])

    assert_equal [1,2,3,4,6,13,22], quicksort
  end

  def test_many_numbers
    array = Array.new
    7000.times { array.push(rand(1000)) }
    sorted_array = array.sort

    quicksort = QuickSort.sort(array)

    assert_equal sorted_array, quicksort
  end
end
