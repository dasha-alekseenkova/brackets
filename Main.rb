def check_parentheses?(string)
stack = []
string.chars.each do |token|
 case token

when '('
      stack.push '('
    when ')'
      if stack.empty? || stack.pop != '('
        return false
      end
    end
  end
  stack.empty?
end

puts "Enter string :"
string = gets
puts check_parentheses?(string)

