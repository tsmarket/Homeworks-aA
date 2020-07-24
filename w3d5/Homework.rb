class Stack
    def initialize
        @stack = []
    end

    def push(el)
      @stack << el # adds an element to the stack
    end

    def pop
      @stack.pop # removes one element from the stack
    end

    def peek
      @stack.last # returns, but doesn't remove, the top element in the stack
    end
end

class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.shift(el)
    end

    def dequeue
        @queue.pop
    end

    def peek
        p @queue
    end

end

class Map

    def initialize
        @map = []
    end

    def set(key, value) #create or update
        found = false
        @map.each do |subarray|
            if subarray[0] == key
                found = true
                subarray[0] = [key, value]
            end
        end

        if !found
            @map << [key, value]
        end
    end

    def get(key)
        @map.each do |subarray|
            if subarray[0] == key
                return subarray
            end
        end
    end

    def delete(key)
        @map.each_ with_index do |subarray, idx|
            if subarray[0] == key
                @map.delete_at(idx)
            end
        end
    end

    def show
        p @map
    end

end