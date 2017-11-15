def caesar_cipher(input, shift)
  output = []
  base = ""
  input.split("").each do |char|
    if char.match(/[a-z]|[A-Z]/) do # only shift letters
      base = char.match(/[a-z]/) ? "a".ord : "A".ord end # preserve case
      ascii = (char.ord - base + shift.to_i) % 26 + base
      output.push(ascii.chr)
    else
      output.push(char)
    end
  end
  output.join
end

def stock_picker(prices)
  profit, best_buy, best_sell = [0] * 3

  prices.each_with_index do |buy_price, buy_date|
    prices.each_with_index do |sell_price, sell_date|
      if (profit < sell_price - buy_price) && (sell_date > buy_date)
        profit = sell_price - buy_price
        best_buy = buy_date
        best_sell = sell_date
      end
    end
  end
  [best_buy, best_sell].to_s
end

def substrings(input, dictionary)
  count = Hash.new(0)
  dictionary.each do |word|
    input.scan(word) do
      count[word] += 1
    end
  end
  count
end

puts caesar_cipher("What a string!", 5)
puts stock_picker([17,3,6,9,15,8,6,1,10])
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
