require 'spec_helper'

describe Equivalence do
	
	let(:klass) { Class.new }
	let(:instance) { klass.new }

	before do
		klass.send(:include, subject)
	end

	it { should be_instance_of(described_class)}

	context 'when it has no keys' do
		
		subject { Equivalence.new }

		describe '#eqvl?' do
			it 'returns true for equivalent objects' do
				expect(instance.eqvl?(instance.dup)).to be(true)
			end

			it 'returns false for distinct objects' do
				expect(instance.eqvl?(double(:other))).to be(false)
			end
		end	
	end

	context 'when it has keys' do
		
		let(:keys) { [:x, :y, :z] }
		let(:klass) do
			Class.new do
	      attr_reader :x, :y, :z
	      private :x, :y, :z

	      def initialize(x, y, z)
	        @x = x
	        @y = y
	        @z = z
	      end
	    end
		end

		subject { Equivalence.new(*keys) }
		let(:instance) { klass.new(1, 2, 3) }

		describe '#eqvl?' do
			it 'returns true for equivalent objects' do
				other_instance = klass.new(1, 2, 3)

				expect(instance.eqvl?(other_instance)).to be(true)
			end

			it 'returns false for distinct objects' do
				other_instance = klass.new(3, 2, 1)
				expect(instance.eqvl?(other_instance)).to be(false)
			end
		end	
	end

end