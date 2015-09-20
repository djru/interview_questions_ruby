def reverse_words str
    # Reverse the string
    rev = reverse str
    
    # Then reverse each word
    start = 0
    stop = 1
    while rev[stop] do
        # If we find a space, reverse all the letters between here and the last space
        if rev[stop] == " "
            rev[start..(stop-1)] = reverse rev[start..(stop-1)]
            start = stop + 1
            stop = start + 1
        else
            stop += 1
        end
    end
    
    # since the algorithm ends when the string ends, but only reverses the 
    rev[start..(stop-1)] = reverse rev[start..(stop-1)]
    rev
end

# Flip letters by iterating from front and back
def reverse str
    reversed_str = str
    for i in 0..((reversed_str.length-1) / 2) do
        tmp = reversed_str[i]
        reversed_str[i] = reversed_str[reversed_str.length - 1 - i]
        reversed_str[reversed_str.length - 1 - i] = tmp
    end
    reversed_str
end