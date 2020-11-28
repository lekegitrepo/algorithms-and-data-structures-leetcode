# frozen_string_literal: true

TrieNode = Hash

class Trie
  #     Initialize your data structure here.
  def initialize
    @root = TrieNode.new
  end

  #     Inserts a word into the trie.
  #     :type word: String
  #     :rtype: Void
  def insert(word)
    curr = @root
    word.each_char do |char|
      curr = (curr[char] ||= TrieNode.new)
    end
    curr[:_] = true
  end

  #     Returns if the word is in the trie.
  #     :type word: String
  #     :rtype: Boolean
  def search(word)
    last = word.each_char.inject(@root) do |curr, char|
      curr.is_a?(TrieNode) ? curr[char] : nil
    end

    last && last[:_] || false
  end

  #     Returns if there is any word in the trie that starts with the given prefix.
  #     :type prefix: String
  #     :rtype: Boolean
  def starts_with(prefix)
    curr = @root
    prefix.each_char.all? do |char|
      curr = curr[char]
    end
  end

#   def initialize
#     @gword = []
#   end

#   def insert(word)
#     @gword.push(word)
#   end

#   def search(word)
#     @gword.include?(word)
#   end

#   def starts_with(prefix)
#     @gword.select { |s| return true if s.start_with?(prefix) }
#     false
#   end
# end

# # Your Trie object will be instantiated and called as such:
# obj = Trie.new()
# obj.insert(word)
# param_2 = obj.search(word)
# param_3 = obj.starts_with(prefix)
