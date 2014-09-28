# Spreadsheet class. Create a local spreadsheet manager object
# Use the rubyXL gem to manipulate spreadsheets.
module Read_r
	class Spreadsheet 
		require 'rubyXL'
		
		
		attr_accessor :rdr_list
		PATHNAME = "app/doc/"
		
		def initialize(options = {}) 
			@rdr_list = options[:rdr_list]
			@file_path = PATHNAME+@rdr_list
			check_for_spreadsheet(@rdr_list)
			
			@workbook = RubyXL::Parser.parse(@file_path)
			@worksheet = @workbook[0]
			#Blah, need help with this. Where does the file go?
			#How do I know it's where the file goes?
			#How do I even test that? Is that an implementation issue?
			#Should I raise an exception if I try to open a file that 
			#doesn't exist? I know that in how I IMPLEMENT the library 
			#some users will be able to create and some won't. I think
			#that I can definately say that opening a sheet should only 
			#occur if the sheet exists. So error raised if we create this 
			#object
		
		end
		
		def last
			last_row = @spreadsheet.last 
			last_row.join(" ") #last row of the spreadsheet turned into a string.
			
		end
		
		def check_for_spreadsheet(sheet)
			false #unless @sheet the spreadsheet is in the directory
		end
	end # Spreadsheet class
end
