# frozen_string_literal: true

# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
  prereq_for = {}
  num_required = {}
  queue = []

  (0...num_courses).each do |i|
    prereq_for[i] = []
    num_required[i] = 0
  end

  prerequisites.each do |classes|
    prereq = classes[1]
    dependent = classes[0]
    prereq_for[prereq] << dependent
    num_required[dependent] += 1
  end

  num_required.each do |course, count|
    queue << course if count.zero?
  end

  while queue.any?
    course = queue.shift
    num_courses -= 1
    next if prereq_for[course].nil?

    prereq_for[course].each do |prereq|
      num_required[prereq] -= 1
      queue << prereq if (num_required[prereq]).zero?
    end
  end
  num_courses.zero?
end
