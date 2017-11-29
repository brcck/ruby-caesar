# ruby-exercises

This is a collection of exercises for [The Odin Project: Ruby Building Blocks](https://www.theodinproject.com/courses/ruby-programming/lessons/ruby-building-blocks)

## caesar-cipher

Shifts string input by given number of letters.

```
  > caesar_cipher("What a string!", 5)
  => "Bmfy f xywnsl!"
```

## stock-picker

Given an array of stock prices, picks the best days to buy and then sell a stock.

```
> stock_picker([17,3,6,9,15,8,6,1,10])
=> [1,4]  # for a profit of $15 - $3 == $12
```

## substrings

Uses given dictionary to find substrings in given string.

```
 > substrings("Howdy partner, sit down! How's it going?", dictionary)
  => { "down" => 1, "how" => 2, "howdy" => 1,"go" => 1, "going" => 1, "it" => 2, "i" => 3, "own" => 1,"part" => 1,"partner" => 1,"sit" => 1 }
```
