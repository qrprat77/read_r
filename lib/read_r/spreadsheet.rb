# Spreadsheet class. May need a gem inheritance, 
# for now defining to pass a feature step, and 
# provide a framework for further development
module Read_r
	class Spreadsheet 
		attr_accessor :rdr_list
		
		def initialize(options = {}) 
			@rdr_list = options[:rdr_list]
			
		end
		
		def last
			#returns the last row of the spreadsheet.
			
		end
		
	end # Spreadsheet class
end
