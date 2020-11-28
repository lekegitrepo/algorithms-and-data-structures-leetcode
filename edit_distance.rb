# frozen_string_literal: true

# @paradis_arr {String} word1
# @paradis_arr {String} word2
# @return {Integer}
def min_distance(word1, word2)
  dp = Array.new(word1.size + 1) { Array.new(word2.size + 1) }
  p "initial dp: #{dp}"
  (0...dp.size).each do |i|
    dp[i][0] = i
  end
  p "initial first loop dp: #{dp}"
  (0...dp[0].size).each do |j|
    dp[0][j] = j
  end

  p "initial second loop dp: #{dp}"
  (1...dp.size).each do |i|
    (1...dp[0].size).each do |j|
      dp[i][j] = if word1[i - 1] == word2[j - 1]
                   dp[i - 1][j - 1]
                 else
                   [
                     dp[i - 1][j],
                     dp[i][j - 1],
                     dp[i - 1][j - 1]
                   ].min + 1
                 end
    end
  end
  dp[-1][-1]
end

p min_distance('horse', 'ros')
