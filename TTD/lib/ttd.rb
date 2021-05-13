
def my_uniq(arr)
    count = Hash.new(0)
    arr.each do |num|
        count[num] += 1
    end 
    count.keys
end 




class Array
    def two_sum
        res = []
        (0...self.length - 1).each do |i|
            (i+1...self.length).each do |j|
                res << [i,j] if self[i] + self[j] == 0
            end 
        end 
        res
    end 
end 

def my_transpose(arr)
    sub_arr = []
    result = []
    (0..arr.length-1).each do |i|
        sub_arr = []
        (0..arr.length-1).each do |j|
           sub_arr << arr[j][i]
        end 
        result << sub_arr
    end 
    result
end 

def stock_picker(arr)
    res = []
    sum = 0
    result = 0
   
    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            result = j - i 
            if result > sum
                res =[i, j]
                sum = result 
            end 
        end 
    end 
    res 
end 

p stock_picker([6.0,3.0,1.5,2.5,5.0])