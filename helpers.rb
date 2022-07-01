
class Player

    attr_accessor :number, :lives

    def initialize(num)
        @number = num
        @lives = 3
    end

    def question
        num1 = rand(10)
        num2 = rand(10)
        correctAnswer = num1 + num2
        question = "What is #{num1} + #{num2}?"
        puts "Player #{self.number}: #{question}"
        answer = gets.chomp.to_f
        # puts answer
        if answer != correctAnswer
            puts "Player #{self.number}: Wrong answer."
            self.lives = @lives - 1
        else
            puts "Player #{self.number}: Correct."
        end
    end
end