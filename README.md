# ruby-exercises

## caesar_cipher

Encodes a message by shifting alphabetic characters by the specified number.

Usage: `caesar_cipher(string, shift)`
```bash
caesar_cipher("What a string!", 5)
>> Bmfy f xywnsl!
```

## stock_picker

> Important lesson (re)learned: `do` does *not* come after `if`.

Takes an array of stock prices and chooses the most profitable days to buy and sell.

Usage: `stock_picker(array)`
```bash
stock_picker([17,3,6,9,15,8,6,1,10])
>> [1, 4]
```

## substring

Uses an array of substrings to find matches in the provided string.

Usage: `substring(string, dictionary)`
```bash
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
>> {"down"=>1, "go"=>1, "going"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}        
```