module Read_r 
	class Entry 
		attr_accessor :group, :name, :recorder, :favbook, :fiction, :minreadmon, :minreadtues, :minreadweds, :minreadthurs, :minreadoth
		def initialize(options = {}) 
			self.name = options[:name]
			self.recorder = options[:recorder]
			self.favbook = options[:favbook]
			self.group = options[:group]
			options.keys.each do |minread|
				self.send(((minread.to_s).+ "=").to_sym, options[minread]) if minread.to_s.include?("minread") 
			end
				
		end
		
		def save(filename)
			item = 0
			#New Spreadsheet open filename object
			@sheet = look_up_sheet(@group)
			
			reading_entry = serial
			reading_entry.count.times do |sheet_entry|
			#write each cell to the same row of the spreadsheet
				
				item +=1
			end
			@sheet.write
			
		end
		
		def current 
			serial.join(" ")
			
		end
		
		def serial 
			[name, recorder, '"'+favbook+'"', fiction, minreadmon, minreadtues, minreadweds, minreadthurs, minreadoth]
		end
		
		def look_up_sheet(classname)
		Read_r::Spreadsheet.new(classname)
		end
		
	end # Entry class
end #read_r module
