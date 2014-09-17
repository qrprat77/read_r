require 'spec_helper'


module Read_r

	describe "Spreadsheet" do
	before :all do
		@spreadsheet = Read_r::Spreadsheet.new(rdr_list: "Rafferty.xlsx")	
	end
		it "knows where the path for the spreadsheet is" do
			pending "I dont know the best practice for testing this."
		end
		
		describe "Last" do
				it "has a method called :last" do
					expect(@spreadsheet).to respond_to(:last)
				end
				
				it "returns the last row of the spreadsheet as a string" do
					expect(@spreadsheet.last).to eq("Emma qrprat77@gmail.com \"Fantastic Mr Fox\"  10   ")
				end
				
		end
	end

end # Read_r Module
