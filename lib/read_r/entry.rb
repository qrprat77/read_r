module Read_r 
	class Entry 
		attr_accessor :name, :recorder, :favbook, :fiction, :minreadmon, :minreadtues, :minreadweds, :minreadthurs, :minreadoth
		def initialize(options = {}) 
			self.name = options[:name]
			self.recorder = options[:recorder]
			self.favbook = options[:favbook]
			options.keys.each do |minread|
				self.send(((minread.to_s).+ "=").to_sym, options[minread]) if minread.to_s.include?("minread") 
			end
				
		end
		
		def save(filename)
			[name, recorder, favbook, fiction, minreadmon, minreadtues, minreadweds, minreadthurs, minreadoth]
			
		end
		
		def current 
			# returns the last saved attributes as a string
			
		end
		
	end # Entry class
end #read_r module
