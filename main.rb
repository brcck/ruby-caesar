puts "What's your message?"
input = gets.chomp

puts "Pick a (secret) number!"
shift = gets.chomp

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
