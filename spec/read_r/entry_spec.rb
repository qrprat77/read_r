require 'spec_helper'


module Read_r
 
	describe "Entry" do
		entry = Read_r::Entry.new(name: 'Emma', recorder: 'qrprat77@gmail.com', minreadmon: 10, favbook: 'Fantastic Mr Fox', fiction: true)
			
		it "has the following minimum data, a name, a recorder, minutes during at least one day during the week, book that was read, and whether it is fiction or nonfiction" do
			expect(entry.name).not_to eq(nil)
		end
		
		it "has a method called :save" do
			expect(entry).to respond_to(:save)
		end
		
		it "saves to an xlsx file that is passed to save" do
			pending("Need to decide if xlsx is right, and what gems to install")
		end
		
		it "has a method called :current that displays the last values of entry for the current user" do
			expect(entry).to respond_to(:current)
		end
		
	end # Describe Entry
	
end #read_r module
