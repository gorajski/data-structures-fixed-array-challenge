require_relative 'fixed_array'

describe FixedArray do

	before do
		@fa1 = FixedArray.new(5)
  	@fa2 = FixedArray.new(4)
	end

	describe "#array" do
	  it 'initializes to the size requested' do
	  	expect(@fa1.array.length).to eq 5
	  	expect(@fa2.array.length).to eq 4
	  	expect(@fa1.array).to eq [nil, nil, nil, nil, nil]
	  	expect(@fa2.array).to eq [nil, nil, nil, nil]
	  end
	end

	describe "#set" do
	  it 'sets the value of an element at a given index' do
	  	expect(@fa1.get(1)).to eq nil
	  	expect(@fa1.set(1, 99)).to eq 99
	  	expect(@fa1.get(1)).to eq 99
	  end

	  it 'throws an error when the index given is less than zero' do
	  	expect { @fa1.set(-1, 33) }.to raise_error(ArgumentError, "Index out of bounds")
	  end

	  it "throws an error when the index given is greater than the FixedArray's length" do
			expect { @fa1.set(5, 44) }.to raise_error(ArgumentError, "Index out of bounds")
			expect { @fa2.set(4, 55) }.to raise_error(ArgumentError, "Index out of bounds")
	  end
	end

	describe "#get" do
	  it 'returns a value at a given index' do
	  	expect(@fa1.get(0)).to eq nil
	  	expect(@fa1.get(1)).to eq nil
	  	expect(@fa1.get(2)).to eq nil
	  	expect(@fa1.get(3)).to eq nil
	  	expect(@fa1.get(4)).to eq nil
	  end

	  it 'throws an error when the index given is less than zero' do
	  	expect { @fa1.get(-1) }.to raise_error(ArgumentError, "Index out of bounds")
	  end

	  it "throws an error when the index given is greater than the FixedArray's length" do
			expect { @fa1.get(5) }.to raise_error(ArgumentError, "Index out of bounds")
			expect { @fa2.get(4) }.to raise_error(ArgumentError, "Index out of bounds")
	  end
	end

end
