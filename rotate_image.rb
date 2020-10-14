# frozen_string_literal: true

def rotate(matrix)
  matrix.replace(matrix.reverse.transpose)
end
