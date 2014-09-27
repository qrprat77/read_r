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
			item = 0
			#New Spreadsheet open filename object
			reading_entry = serial
			reading_entry.count.times do |sheet_entry|
			#write each cell to the same row of the spreadsheet
				
				item +=1
			end
			
		end
		
		def current 
			serial.join(" ")
			
		end
		
		def serial 
			[name, recorder, '"'+favbook+'"', fiction, minreadmon, minreadtues, minreadweds, minreadthurs, minreadoth]
		end
	end # Entry class
end #read_r module
