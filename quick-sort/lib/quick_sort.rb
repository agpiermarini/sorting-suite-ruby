class QuickSort
  def self.sort(array, pivot = 0)
    return array if pivot == array.length - 1
    start_pivot = pivot
    for i in pivot..array.length-1 do
      if array[pivot] > array[i]
        array.insert(pivot, array.delete_at(i))
        pivot += 1
      end
    end

    pivot == start_pivot ? sort(array, pivot += 1) : sort(array, start_pivot)
  end
end
