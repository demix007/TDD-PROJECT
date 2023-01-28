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

        context 'when a negative number is provided' do
            it 'should raise an exception' do
              expect { @solver.factorial(-5) }.to raise_error('Enter a Positive Number')
            end
        end
    end 

    describe '#Reverse' do
       context 'Whenever a string is given' do
            it 'reverses the order of the characters of the string' do
                expect(@solver.reverse('microverse')).to eq('esrevorcim')
            end
        end 
    end

    describe '#FizzBuzz' do
        context 'Whenever an integer(N) is provided' do
            it 'returns "fizz" if N is divisible by 3 without a remainder' do
                expect(@solver.fizzbuzz(9)).to eq('fizz')
            end

            it 'returns "buzz" if N is divisible by 5 without a remainder' do
                expect(@solver.fizzbuzz(25)).to eq('buzz')
            end

            it 'returns "fizzbuzz" if N is divisible by 3 without a remainder' do
                expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
            end

            it 'returns a string if N is neither divisible by 3 0r 5' do
                expect(@solver.fizzbuzz(32)).to eql '32'
            end
        end
    end
end