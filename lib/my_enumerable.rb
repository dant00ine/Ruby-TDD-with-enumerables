module MyEnumerable

	def my_each
		for i in 0...self.length
			yield(self[i])
		end
	end

	def my_select
		output = []
		for i in 0...self.length
			if yield(self[i])
				output.push(self[i])
			end
		end
		output
	end

	def my_reject
		output = []
		for i in 0...self.length
			if yield(self[i]) == false
				output.push(self[i])
			end
		end
		output
	end

	def my_map
		output = []
		for i in 0...self.length
			output.push(yield(self[i]))
		end
		output
	end


end