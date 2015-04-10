# PAREN MATCHER
# LANGUAGE: RUBY
#
# Create a function paren_matcher(str) that takes the str parameter being passed and 
# returns true if the parentheses are correctly matched and each one is accounted for. Otherwise return false. 

# Examples: 
# paren_matcher("(hello (world))") #true
# paren_matcher("((hello (world))") #false
# paren_matcher("( ( (giraffe) & (rhino) )") #false
# paren_matcher("()())") #false
# paren_matcher(")(())()") #false

# Note: Only "(" and ")" will be used as parentheses. If str contains no parentheses return true. 


def paren_matcher(str)
  # Your Code Here!
  openparen = 0
  closeparen = 0
  str.each_char do |aChar|
  	case aChar
  	when achar =="("
  		openparen +=1
  	when achar == ")"
	    closeparen -=1
	
	if closeparen > openparen
		return false
	end
end
	openparen == closeparen