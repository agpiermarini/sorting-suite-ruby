class InsertionSort
  def self.sort(array, sorted = [])
    return sorted if array.empty?
    new_val = array.delete_at(0)
    if sorted.empty?
      sorted.push(new_val) and return sort(array, sorted)
    else
      for i in 0..(sorted.length - 1)
        if i == sorted.length - 1
          new_val > sorted[i] ? sorted.push(new_val) : sorted.unshift(new_val)
          return sort(array, sorted)
        elsif new_val >= sorted[i] && new_val <= sorted[i.next]
          sorted.insert(i.next, new_val) and return sort(array, sorted)
        end
      end
    end
    sort(array, sorted)
  end
end
