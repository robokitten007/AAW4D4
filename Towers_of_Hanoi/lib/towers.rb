class Towers
    attr_accessor :arr_first, :arr_mid, :arr_last, :arr, :disc, :start, :ending, :beginning_status
    attr_reader :number
    def initialize(n)
        @number = n
        @arr_first = (0...n).to_a
        @beginning_status = (0...n).to_a
        @arr_mid = []
        @arr_last = []
        @disc = 0
    end 

    def move(start, ending)
        
        if start == '0'
            @disc = @arr_first[0]
            @start = @arr_first
        elsif start == '1'
            @disc = @arr_mid[0]
            @start = @arr_mid
        else 
            @disc = @arr_last[0]
            @start = @arr_last
        end 
        if ending == '0' && @disc != nil && (@arr_first.empty? ||@disc < @arr_first[0])
            @start.shift
            @arr_first.unshift(@disc)
        end
        if ending == '1' && @disc != nil && (arr_mid.empty? || @disc < @arr_mid[0]) 
            @start.shift
            @arr_mid.unshift(@disc)
        end 
        if ending == '2' && @disc != nil && (arr_last.empty? || @disc < @arr_last[0]) 
            @start.shift
            @arr_last.unshift(@disc)
        end       
    end 
    # def render
    #     @arr = [@arr_first, @arr_mid, @arr_last]
    #     (0...@number).each do |i|
    #         (0...@number).each do |j|
    #             if @arr[j][i] != nil
    #                 print @arr[j][i]
    #             else 
    #                 print "--"
    #             end 
    #         end 
    #         puts
    #     end       
    # end 

    def won? 
        return true if @arr_last == @beginning_status
    end 

end 