require 'ttd'


describe "#my_uniq" do
    before(:each) do 
        expect_any_instance_of(Array).not_to receive(:uniq)
    end 
    it "removes duplicates from an array " do 
        expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end 

end 

describe "Array#two_sum" do 
    let(:arr) {[-1, 0, 2, -2, 1]}

    it "returns pairs of postions where sum is zero " do 
        expect(arr.two_sum).to eq([[0,4],[2,3]])
    end 

    it "returns smaller index in the pair first" do 
        expect(arr.two_sum).to eq([[0,4],[2,3]])
    end 
end 

describe "#my_transpose" do 
    before(:each) do 
        expect_any_instance_of(Array).not_to receive(:transpose)
    end

    it "returns a transposed matirx " do 
        expect(my_transpose([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ])).to eq([[0, 3, 6],
 [1, 4, 7],
  [2, 5, 8]])
    end 

end 

describe "#stock_picker" do 
    it "returns the most profitable pair of days to buy and sell the stock" do 
        expect(stock_picker([2.5,3.0,1.5,2.5,5.0])).to eq([2,4])
    end 
    it "must buy before sell" do 
      expect(stock_picker([6.0,3.0,1.5,2.5,5.0])).to eq([2,4]) 
    end 
end 