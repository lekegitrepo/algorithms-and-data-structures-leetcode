# frozen_string_literal: true

# @param {Integer[][]} people
# @return {Integer[][]}
def reconstruct_queue(people)
  new_list = []
  people.sort_by { |a, b| [-a, b] }.each { |person| new_list.insert(person[1], person) }
  new_list
end

p reconstruct_queue([[7, 0], [4, 4], [7, 1], [5, 0]])

p reconstruct_queue([[7, 0], [4, 4], [7, 1], [5, 0], [6, 1], [5, 2]])

p reconstruct_queue([[6, 0], [5, 0], [4, 0], [3, 2], [2, 2], [1, 4]])
