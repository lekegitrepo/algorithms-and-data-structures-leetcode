# frozen_string_literal: true

def climb_stairs(n)
  return 1 if n == 1

  cache_steps = [1, 2]
  (n - 2).times do
    cache_steps << (cache_steps[-2] + cache_steps[-1])
  end
  cache_steps[-1]
end

p climb_stairs(1)
p climb_stairs(2)
p climb_stairs(3)
p climb_stairs(4)
p climb_stairs(7)
