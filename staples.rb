def with_hash(user_input)
  staples =  { '(' => ')', '[' => ']', '{' => '}' }
  stack_staples = []

  user_input.each_char do |element|
    stack_staples << element if staples.key?(element)
    if staples.key(element) and staples.key(element) != stack_staples.pop
      return 'false'
    end
  end

  stack_staples.empty?
end

def with_string(user_input)
  open_staples = '([{'
  close_staples = ')]}'
  stack_staples = []

  user_input.each_char do |element|
    if open_staples.include?(element)
      stack_staples << element
    end

    index_1 = close_staples.index(element)

    if close_staples.include?(element) and open_staples[index_1] != stack_staples.pop
      return 'false'
    end
  end

  stack_staples.empty?
end

input = STDIN.gets.chomp

puts with_hash(input)
puts with_string(input)
