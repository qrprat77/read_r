require 'spec_helper'


module Read_r

	describe "Spreadsheet" do
	before :all do
		@spreadsheet = Read_r::Spreadsheet.new(rdr_list: "Rafferty.xlsx")	
	end
		it "has a method called :last" do
			expect(@spreadsheet).to respond_to(:last)
		end
	end

end # Read_r Module
