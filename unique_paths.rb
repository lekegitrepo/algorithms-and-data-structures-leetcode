# frozen_string_literal: true

def unique_paths(m, n)
  paths = Array.new(m) { Array.new(n) }
  p paths
  (0...m).each do |i|
    (0...n).each do |j|
      paths[i][j] = (i.zero? || j.zero? ? 1 : paths[i - 1][j] + paths[i][j - 1])
    end
  end
  p paths
  paths[m - 1][n - 1]
end

p unique_paths(3, 7)
