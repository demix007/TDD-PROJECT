class Solver
    def factorial(num)
        raise StandardError, 'Enter a Positive Number' if num.negative?
    
        (1..num).reduce(:*) || 1
    end

    def reverse(string)
        string.reverse
    end
end