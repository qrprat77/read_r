module Read_r 
	class Entry 
		attr_accessor :name, :recorder, :favbook, :fiction
		def initialize(options = {}) 
			@name = options[:name]
			@recorder = options[:recorder]
			@favbook = options[:favbook]
		end
		
		def save(filename)
			
		end
		
	end # Entry class
end #read_r module
