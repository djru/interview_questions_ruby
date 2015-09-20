def first_occurance_in_sorted_array arr, n
    low = 0
    high = arr.length - 1
    res = -1
    
    while low < high do
        mid = (low + high) / 2
        if arr[mid] == n
            high = mid - 1
            res = mid
        elsif arr[mid] > n
            high = mid - 1
        else
            low = mid - 1
        end
    end
    return res
end

def last_occurance_in_sorted_array arr, n
    low = 0
    high = arr.length - 1
    res = -1
    
    while low <= high do
        mid = (low + high) / 2
        puts mid
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