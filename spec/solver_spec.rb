require_relative '../solver.'

describe Solver do
    before :each do
        @solver = Solver.new
    end

    describe '#Factorial' do
        context 'When a 0+ number is given' do
            it 'evaluates the number and returns the Factorial' do
                expect(@solver.factorial(7)).to eq(5040)
            end

            it 'evaluatess the number and returns 1 if the number is 0' do
                expect(@solver.factorial(0)).to eq(1)
            end
        end
    end 
end