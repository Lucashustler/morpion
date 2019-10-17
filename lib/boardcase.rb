class BoardCase
    attr_accessor :position, :id

    def initialize(position)
        @position = position
        @id = " "
    end

    def change_content(value)
        @id = value
end

