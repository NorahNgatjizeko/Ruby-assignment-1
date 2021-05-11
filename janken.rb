class Player
  def hand
    puts "Please enter a number."
    puts "0:Rock, 1:Paper, 2:Scissors"
       input_hand = gets.to_i
     while true
       input_hand = gets.chomp
         if input_hand == 0
           return 0
         elsif input_hand == 1
           return 1
         elsif input_hand == 2
           return 2
         else
           puts "Please input a number between 0-2"
           puts "0:Rock, 1:Paper, 2:Scissors"
            input_hand = gets.to_i
      end
    end
  end
end
class Enemy
  def hand
      rand(0..2)
  end
end
class Janken
  def pon(player_hand, enemy_hand)
    janken = ["Rock", "Paper", "Scissors"]
     puts "the opponent hand is #{janken[enemy_hand]}"
      if player_hand == enemy_hand
       puts "Aiko"
       return true
      elsif
      (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "you win"
      return false
    else
    puts "you lose"
    return false
    end
  end
end
player = Player.new
enemy = Enemy.new
janken = Janken.new
next_game = true
while next_game
    next_game = janken.pon(player.hand, enemy.hand)
end
