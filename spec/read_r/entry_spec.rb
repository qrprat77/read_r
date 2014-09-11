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
		
		it "has a book saved as a favbook" do
			expect(entry.favbook).not_to eq(nil)
		end
			
		
		it "saves to an xlsx file that is passed to save" do
			pending("Need to decide if xlsx is right, and what gems to install")
		end
		
		it "has at least one record of the number of minutes read" do
			days_with_mins = []
			["mon", "tues", "weds", "thurs", "oth"].each do |day| 
				methid = ("minread#{day}").to_sym
				days_with_mins.push entry.send(methid) if entry.send(methid) != nil
				expect(days_with_mins.size).to be >(0)
			end
		end
		
		it "has a method called :current" do
			expect(entry).to respond_to(:current)
		end
		it "the :current method displays the last values of entry saved for the current user" do
		  pending("Need to figure out if I need to know the last entry saved, or if this is redundant data.")
		end
		
	end # Describe Entry
	
end #read_r module
