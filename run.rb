require './helpers'

def run
    player1 = Player.new(1)
    player2 = Player.new(2)
    i = 1
    while player1.lives > 0 && player2.lives > 0 do
        nexti = nil
        nextPlayer = nil
        if i == 1
            current = player1
            nextPlayer = player2
            nexti = 2
        else
            current = player2
            nextPlayer = player1
            nexti = 1
        end
        current.question
        lives1 = player1.lives
        lives2 = player2.lives
        if (lives1 > 0 && lives2 > 0)
            puts "P1: #{lives1}/3 vs P2: #{lives2}/3"
            puts '---- NEW TURN ----'
        else
            puts "Player #{nexti} win a score of #{nextPlayer.lives}/3"
            puts '---- GAME OVER ----'
        end
        i = nexti
    end
    puts 'Good bye!'
end

run