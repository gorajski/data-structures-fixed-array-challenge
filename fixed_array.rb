# FixedArray#new(size)
# FixedArray#get(index)
# FixedArray#set(index, element)

class FixedArray
	attr_reader :array

	def initialize(size)
		@array = Array.new(size)
	end


	def get(index)
		if index > -1 && index < @array.length
			@array[index]
		else
			raise ArgumentError.new("Index out of bounds")
		end
	end


	def set(index, element)
		if index > -1 && index < @array.length
			@array[index] = element
		else
			raise ArgumentError.new("Index out of bounds")
		end
	end

end
