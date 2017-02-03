class LRUCache

  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.length < @size
      @cache << el
    else
      if @cache.include?(el)
        @cache.delete(el)
      else
        @cache.shift
      end
      @cache << el
    end
  end

  def show
    puts "#{@cache}"
  end
end
