class BubbleSort
  def self.sort(array, swapped = false)
    for i in 0..(array.length - 2)
      if array[i] > array[i.next]
        array.insert(i, array.delete_at(i.next))
        swapped = true
      end
    end
    swapped ? sort(array) : array
  end
end
