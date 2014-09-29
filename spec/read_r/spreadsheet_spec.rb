require 'spec_helper'


module Read_r

	describe "Spreadsheet" do
	before :all do
		@sheet = Read_r::Spreadsheet.new(rdr_list: "Rafferty.xlsx")	
	end
		it "knows where the path for the spreadsheet is" do
			expect(@sheet.check_for_spreadsheet(@sheet.rdr_list)).to be_true
		end
		
		it "throws and error when a spreadsheet doesn't exist" do 
			pending #expect a non-existant sheet to throw an error
		end
		
		describe "Last" do
				it "has a method called :last" do
					expect(@sheet).to respond_to(:last)
				end
				
				it "returns the last row of the spreadsheet as a string" do
					expect(@sheet.last).to eq("Emma qrprat77@gmail.com \"Fantastic Mr Fox\"  10   ")
				end
				
		end
	end

end # Read_r Module
