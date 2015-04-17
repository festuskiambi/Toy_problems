# FEATURE PHONE KEY PRESSES
# LANGUAGE: RUBY


# This is a feature phone keypad:

# ------- ------- -------
# |     | | ABC | | DEF |
# |  1  | |  2  | |  3  |
# ------- ------- -------
# ------- ------- -------
# | GHI | | JKL | | MNO |
# |  4  | |  5  | |  6  |
# ------- ------- -------
# ------- ------- -------
# |PQRS | | TUV | | WXYZ|
# |  7  | |  8  | |  9  |
# ------- ------- -------
# ------- ------- -------
# |     | |     | |     |
# |  *  | |  0  | |  #  |
# ------- ------- -------


# Before predictive text entry systems like T9, you had to press a button repeatedly to cycle through the possible values until you reached the one you wanted. 
# For example, to type "V8" you would press the 8 key three times and then again four times (pressing the 8 key cycles through T->U->V->8), giving us a total of seven key presses. 

# Note: the 0 key handles spaces and outputs 0 when tapped twice.

# Write a function that can calculate the amount of button presses required for any phrase. Except for spaces, punctuation can be ignored. Your function should accept both uppercase and lowercase letters and treat them the same.

# Examples:

# presses('V8') # 7
# presses('LOL') # 9
# presses('How R u 2day') # 23 
# presses("i 8 2 Many mandazi 4 brekky") # 55

# Bonus: Try to avoid hard-coding the number of button presses for each letter!


def presses(phrase)
  # Your Code Here!
  presses = 0
  
  myhash= { "0" =>2,"1"=>1, "2"=> 4,"3" =>4 ,"4"=>4, "5"=>4, "6" => 4,"7"=>5, "8"=>4, "9"=>5 ,"*"=>1, "#"=>1,      
    "a"=>1,"b"=>2,"c"=> 3,"d" =>1, "e" =>2, "f" =>3, 
  "g" =>1, "h" =>2, "i" =>3, "j" =>1, "k"  =>2, "l" =>3, "m" =>1, "n" =>2, "o" =>3, "p" =>1 ,"q"  =>2, "r" =>3, "s"=>4,
  "t"=>1, "u"=>2, "v"=>3, "w"  =>1, "x"=>2 ,"y"=>3, "z"=>4 }
  phrase.each_char do |x|
  	resultingaray=myhash.values_at(x)
  keyvalue= resultingaray.fetch()

  presses = presses + keyvalue
end
  p presses
  
end
presses("i 8 2 Many mandazi 4 brekky")