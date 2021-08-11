#This is a maths mcqs quiz

require 'csv'
require 'timeout'

table = CSV.parse(File.read("problems.csv"))

rightans=0
totaltime=30

puts "Press Y/y key to specify time other than 30 seconds"
check = gets.chomp


if (check=='Y' || check=='y')
    print "Enter the time in seconds: "
    totaltime = gets.chomp.to_i
end

puts "Press Enter key to start your timed quiz"
if
    gets
end

begin
    status = Timeout::timeout(totaltime) {
        for line in table
            print "What is #{line[0]}= " 
            ans = gets
            #puts "#{ans}#{line[1]}"
            if ans.to_i == line[1].to_i
                rightans = rightans + 1
            end
        end
        puts "Total number of questions: #{table.length}"
        puts "Correct options are: #{rightans}"
        puts "Incorrect options are: #{table.length-rightans}"
    }

rescue Timeout::Error
    puts
    puts "Total number of questions: #{table.length}"
    puts "Correct options are: #{rightans}"
    puts "Incorrect options are: #{table.length-rightans}"

end




