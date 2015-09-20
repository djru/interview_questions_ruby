class Node
    attr_accessor :char, :children
    def initialize (char, chil = nil)
        @char = char
        @children = chil
    end
end

# Takes a string
def all_premutations_tree_helper str
    nodes = []
    # if the string is just a char, return a node with that char
    if str.length == 1
        n = Node.new(str[0])
        return [n]
    end
    # otherwise, generate a new subtree for each letter in the string
    for i in 0..str.length-1
        n = Node.new(str[i])
        if i == 0
            letters = str[1..-1]
        elsif i == str.length-1
            letters = str[0..-2] + str[i+1..-1]
        else
            letters = str[0..i-1] + str[i+1..-1]
        end
        ch = all_premutations_tree_helper(letters)
        n.children = ch
        nodes.push n
    end
    nodes
end

def all_permutations_tree str
    nodes = []
    Node.new("", all_premutations_tree_helper(str))
end

# basic dfs recursion
def all_permutations_helper node
    strs = []
    if !node.children
        return [node.char]
    else
        for child in node.children do
            strs = strs + all_permutations_helper(child).map{|c| c.prepend node.char}
        end
    end
    strs.uniq
end

def all_permutations str
    head = all_permutations_tree(str)
    all_permutations_helper head
end

