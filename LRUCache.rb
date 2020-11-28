# frozen_string_literal: true

class LRUCache
  def initialize(capacity)
    @capacity = capacity
    @values = {}
  end

  def get(key)
    # puts @values.to_s
    if @values[key]
      value = @values[key]
      @values.delete(key)
      @values[key] = value
      # puts "after delete: " + @values.to_s
      @values.shift if @values.length > @capacity
      value
    else
      -1
    end
  end

  def put(key, value)
    @values.delete(key)
    @values[key] = value
    @values.shift if @values.length > @capacity
  end
end
