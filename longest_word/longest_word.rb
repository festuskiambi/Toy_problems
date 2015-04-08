# LONGEST WORD
# LANGUAGE: RUBY
#
# Create a function longest_word(sentence) that takes the sentence parameter being passed and returns the 
# longest word in the string. If there are two or more words that are the same length, return the first word from the 
# string with that length. Ignore punctuation and assume the sentence will not be empty. 

# Examples: 
# longest_word("There are many hippopotami living in Naivasha Lake") # hippopotami
# longest_word("Watamu has great fresh seafood") # seafood
# longest_word("The moon and stars shine over the veldt") # stars

def longest_word(sentence)
  # Your Code Here!
sentence=""
longest_word = ""
  words = sentence.split(" ")
  words.each do |word|
    longest_word = word unless word.length < longest_word.length
  end
  longest_word
end
