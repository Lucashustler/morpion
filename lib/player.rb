 #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).
class Player
    attr_accessor :name, :symbol

    def initialize(symbol)
        puts "Quel est ton nom jeune chenapan"
        @name = gets.chomp.to_s
        @symbol = symbol
    end

end

