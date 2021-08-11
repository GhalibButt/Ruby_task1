#This is a maths mcqs quiz
require 'csv'

table = CSV.parse(File.read("problems.csv"))

rightans=0
for line in table
    print "What is #{line[0]}= " 
    ans = gets
    #puts "#{ans}#{line[1]}"
    if ans.to_i == line[1].to_i
        rightans = rightans + 1
    end
end

puts "Total number of questions asked: #{table.length}"
puts "Correct options are: #{rightans}"
puts "Incorrect options are: #{table.length-rightans}"