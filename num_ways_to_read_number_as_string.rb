# This is a solution to a common problem on CareerCup and in the inverview books that asks how many ways you can interpret a string of numbers by treating the numbers as letters in the alphabet, from 1 to 26. 
# For example, 111 could be either ka (11)(1), ak (1)(11) or aaa (1)(1)(1)

def num_permutations(vals)
    vals = vals.split("").map{|d| d.to_i} unless vals[0].is_a? Integer
    if(vals.length == 1)
        return 1
    elsif 10*vals[0] + vals[1] <= 26 and vals.length == 2
    		# if the first two digits read a number lower than 26, those two digits could be treated as either 2 individual letters or one letter
        return 2
    elsif 10*vals[0] + vals[1] > 26
    		# if the first two digits can't be read as a single letter, we know that there is only one possibility: the first digit = one letter
        return num_permutations(vals[1..-1])
    else
    		# otherwise consider both situations
        return num_permutations(vals[1..-1]) + num_permutations(vals[2..-1])
    end
end