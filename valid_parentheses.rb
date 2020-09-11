def is_valid(s)
    return true if s == ''
    
    paren = []
  s.each_char do |ch|
    case ch
       when '(', '[', '{'
         paren << ch
   
       when ')'
         return false if paren.pop != '('
       when ']'
         return false if paren.pop != '['
       when '}'
         return false if paren.pop != '{'
    end
  end
    return paren.empty?
end
