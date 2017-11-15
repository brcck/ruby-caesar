# ruby-caesar

The famous Caesar cipher encoded messages by using a single numeric key to shift their letters. For example:

> The ships hung in the sky in much the same way that bricks don't.

When encoded with a key of 42 becomes,

> Jxu ixyfi xkdw yd jxu iao yd cksx jxu iqcu mqo jxqj rhysai ted'j.

This message can then be decoded with the key of -42.

### Sample usage
```
ruby main.rb
>> What's your message?
I'm a dog person.
>> Pick a (secret) number!
Dogs!
>> No, enter a *number!*
5
>> Your message, encoded using 5:
>> N'r f itl ujwxts.
```