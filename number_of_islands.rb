# frozen_string_literal: true

def dfs(grid, i, j)
  # we return if we are out of bounds  or if we found 0 in the position
  return if j.negative? || (j >= grid[0].length) || i.negative? || (i >= grid.length) || (grid[i][j] != '1')

  # we change the value to anything but 1 so that we are not iterating over and over again
  grid[i][j] = '-'

  # recursively check for neighbors
  dfs(grid, i + 1, j)
  dfs(grid, i - 1, j)
  dfs(grid, i, j + 1)
  dfs(grid, i, j - 1)
end

def num_islands(grid)
  ans = 0

  0.upto(grid.length - 1) do |i|
    0.upto(grid[0].length - 1) do |j|
      if grid[i][j] == '1'
        ans += 1
        dfs(grid, i, j)
      end
    end
  end

  ans
end
