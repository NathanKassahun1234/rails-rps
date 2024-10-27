class GameController < ApplicationController
  def index
  end

  def rock
    @player_move = 'Rock'
    game_result
  end

  def paper
    @player_move = 'Paper'
    game_result
  end

  def scissors
    @player_move = 'Scissors'
    game_result
  end

  private

  def game_result
    # Randomly select a computer move
    moves = ['Rock', 'Paper', 'Scissors']
    @computer_move = moves.sample

    # Determine the outcome
    @result = if @player_move == @computer_move
                "It's a tie!"
              elsif (@player_move == 'Rock' && @computer_move == 'Scissors') ||
                    (@player_move == 'Paper' && @computer_move == 'Rock') ||
                    (@player_move == 'Scissors' && @computer_move == 'Paper')
                "You win!"
              else
                "You lose!"
              end
  end
end
