# staples
Comparison of two ways to solve the problem about the order of staples.

To use the program, you must have Ruby installed. In the command line, go to the folder where the program is located and write the command:

```ruby staples.rb```

Enter the string you want to check for the correct placement of brackets.

Two methods were written to solve the problem. The advantage of ```with_hash``` is speed. The advantage of ```with_string``` in memory is 2 times less:
```
 h = {"("=>")", "["=>"]", "{"=>"}"}
 puts ObjectSpace.memsize_of(h) # ---> 168

 str_1 = '([{'
 str_2 = ')]}'
 puts ObjectSpace.memsize_of(str_1) # ---> 40
 puts ObjectSpace.memsize_of(str_2) # ---> 40
```
