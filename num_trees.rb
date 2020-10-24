# frozen_string_literal: true

def num_trees(n)
  g = Array.new(n + 1) { 0 }
  g[0] = g[1] = 1
  2.upto(n) do |i|
    1.upto(i) do |j|
      g[i] += g[j - 1] * g[i - j]
    end
  end
  g[n]
end
