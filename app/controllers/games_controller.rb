class GamesController < ApplicationController
  def homepage
    render "homepage"
  end

  def rock
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample
    @outcome = determine_outcome("rock", @comp_move)
    render "zebra"  # Rock view
  end

  def paper
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample
    @outcome = determine_outcome("paper", @comp_move)
    render "giraffe"  # Paper view
  end

  def scissors
    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample
    @outcome = determine_outcome("scissors", @comp_move)
    render "lion"  # Scissors view
  end

  private

  def determine_outcome(player_move, comp_move)
    return "tied" if player_move == comp_move
    case player_move
    when "rock"
      comp_move == "scissors" ? "won" : "lost"
    when "paper"
      comp_move == "rock" ? "won" : "lost"
    when "scissors"
      comp_move == "paper" ? "won" : "lost"
    end
  end
end

