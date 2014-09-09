require 'spec_helper'


module Read_r
 
	describe "Entry" do
		entry = Read_r::Entry.new(name: 'Emma', recorder: 'qrprat77@gmail.com', monmins: 10, favebook: 'Fantastic Mr Fox', fiction: true)
		
		it "has the following minimum data, a name, a recorder, minutes during at least one day during the week, book that was read, and whether it is fiction or nonfiction" do
			expect(entry.name).not_to eq(nil)
		end
		
	end # Describe Entry
	
end #read_r module
