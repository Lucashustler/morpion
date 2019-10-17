require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'game'
require 'player'
require 'board'
#require 'boardcase'
#require 'show'
#require 'application'

def perform
    #player1 = Player.new("X")
    #player2 = Player.new("O")
    game1 = Game.new
    game1.board_game.display_board
end

perform





