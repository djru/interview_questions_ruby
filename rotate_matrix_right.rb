def rotate(arr)
    layers = arr.length
    (layers/2).times do |layer_num|
        arr = rotate_layer(arr, layer_num)
    end
    arr
end

def rotate_layer(arr, layer)
    width = arr[0].length
    start = layer
    stop = width - layer - 1
    for i in 0..(stop - start - 1)
        arr = four_way_swap(arr, start, stop, i)
    end
    arr
end

def four_way_swap(arr, start, stop, i)
    tmp = arr[start][start+i]
    arr[start][start+i] = arr[stop - i][start]
    arr[stop-i][start] = arr[stop][stop-i]
    arr[stop][stop-i] = arr[start + i][stop]
    arr[start + i][stop] = tmp
    arr
end
