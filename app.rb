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
    game1 = Game.new
    game1.board_game.display_board
    board1 = Board.new
    game1.play

end

perform





