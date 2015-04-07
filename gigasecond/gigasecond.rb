# GIGASECOND ANNIVERSARY
# LANGUAGE: RUBY

# Write a function that will calculate the date that someone will celebrate their 1 gigasecond anniversary.

# Note: A gigasecond is one billion (10**9) seconds.

# The input is three parameters representing someone's birthday.

# As a convenience for celebration planning, the function should also calculate the day of the week and the number of days from today.

# The output should be an array formatted as such: ["YYYY-MM-DD", 'day_of_the_week', days_until]

# Hint: 
# This documentation will be useful: http://ruby-doc.org/stdlib-2.2.1/libdoc/date/rdoc/Date.html

# Examples:

# gigasecond(1988, 5, 15) # ["2020-01-22", "Wednesday", "1764 days left"]
# gigasecond(2015, 2, 17) # ["2046-10-26", "Friday", "11538 days left"]
require "time"
def gigasecond(year, month, day)
  #Your Code Here!
birthday = Date.new(1990,3,28)
gigaSecAnn = birthday + (10**9/60/60/24)
result = []
result.push gigaSecAnn.strftime("%Y,%m,%d")
result.push gigaSecAnn.strftime("%A")

daysLeft = gigaSecAnn.jd - DateTime.now.jd
 
result.push "#{daysLeft} days left"

end
