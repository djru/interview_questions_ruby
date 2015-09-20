def first_occurrence_in_sorted_array arr, n
    low = 0
    high = arr.length - 1
    res = -1
    
    while low <= high do
        mid = (low + high) / 2
        if arr[mid] == n
            high = mid - 1
            res = mid
        elsif arr[mid] > n
            high = mid - 1
        else
            low = mid + 1
        end
    end
    return res
end

def last_occurrence_in_sorted_array arr, n
    low = 0
    high = arr.length - 1
    res = -1
    
    while low <= high do
        
        mid = (low + high) / 2
        if arr[mid] == n
            low = mid + 1
            res = mid
        elsif arr[mid] > n
            high = mid - 1
        else
            low = mid + 1
        end
    end
    return res
end

# These two can be used to find the number of occurrences in a sorted array

def num_occurrences arr, n
	first = first_occurrence_in_sorted_array arr, n
	last = last_occurrence_in_sorted_array arr, n
	if first == -1 or last == -1
		return 0
	else
		return 1 + last - first
	end
end