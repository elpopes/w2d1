# Monkey-Patch Ruby's existing Array class to add your own custom methods
require "byebug"

class Array
    def span
        return nil if self.length == 0
        self.max - self.min

    end

    def average
        return nil if self.length == 0
        self.sum * 1.00 / self.length.round(2) * 1.00
    end

    def median 
 
        return nil if self.length == 0
 
        num = self.length / 2
 
        sorted = self.sort
 
        if sorted.length.even?
   
            [sorted[num-1], sorted[num]].sum / 2.0
        else
            sorted[num]
        end
    end

    def counts
        hash = Hash.new(0)
        self.each {|ele| hash[ele] += 1}
        hash
        

    end 
end
