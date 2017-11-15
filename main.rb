puts "What's your message?"
input = gets.chomp

puts "Pick a (secret) number!"
shift = ""
loop do
  shift = gets.chomp
  break if shift.match(/[1-9]+/) != nil # make sure user entered a number.
  puts "No, enter a *number!*"
end
shift = shift.to_i

base = ""
output = []
input.split("").each do |char|
  if char.match(/[a-z]|[A-Z]/) do # only shift letters
    base = char.match(/[a-z]/) ? "a".ord : "A".ord end # preserve case
    ascii = (char.ord - base + shift) % 26 + base
    output.push(ascii.chr)
  else
    output.push(char)
  end
end

puts "Your message, encoded using #{shift}:"
puts output.join
