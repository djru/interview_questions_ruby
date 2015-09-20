# This class implements a reversable linked list

class LinkedList
    attr_accessor :val, :next
    def initialize(v)
        @val = v
    end
    def push(v)
        if @next == nil
            @next = LinkedList.new(v)
        else
            @next.push(v)
        end
    end
    def reverse
    		og_head = self
        head = self
        @next = nil
        cur = self.next
        while(cur != nil) do
            tmp = cur.next
            cur.next = head
            head = cur
            cur = tmp
        end
        head
    end
end
