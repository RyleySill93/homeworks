class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def dequeue
    @queue.pop
  end

  def show
    @queue
  end
end

class Map
  def initialize
    @map =  Hash.new
  end

  def assign(k, v)
    @map[k] = v
  end

  def lookup(k)
    @map[k]
  end

  def remove(k)
    @map.delete(k)
  end

  def show
    @map
  end
end
