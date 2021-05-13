require "towers"
describe Towers do 
    subject(:towers) {Towers.new(3)}

    describe "#initialize" do 
        it "properly initiates a piece" do 
            expect(towers.number).to eq(3)
            expect(towers.arr_first).to eq([0,1,2])
            expect(towers.arr_mid).to eq([])
            expect(towers.beginning_status).to eq([0,1,2])
            expect(towers.arr_last).to eq([])
            expect(towers.disc).to eq(0)
        end 
    end 

    describe "#move" do 
        before(:each) do 
            towers.move('0','1')
            towers.move('0','2')
            towers.move('0','1')
        end 
        it "moves top disc from start pole to ending pole" do 
            expect(towers.arr_first).to eq([2])
            expect(towers.arr_mid).to eq([0])   
        end 
        it "can't put bigger dis on the top" do 
            expect(towers.arr_last).to eq([1])
        end 
    end 
  
    describe "#won?" do 
        before(:each) do 
            towers.move('0','2')
            towers.move('0','1')
            towers.move('2','1')
            towers.move('0','2')
            towers.move('1','0')
            towers.move('1','2')
            towers.move('0','2')
        end 
        it 'returns true if the final pole has the discs in the same order as the beginning'do
            expect(towers.won?).to be true
        end
    end 

end 