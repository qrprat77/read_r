#default spreadsheet to save to
@spreadsheet = 'rafferty.xlsx'
Given(/^the parent enters data into a form$/) do
  #Create a new entry object that stores values
  @entry = Read_r::Entry.new(name: 'Emma', recorder: 'qrprat77@gmail.com', monmins: 10, favebook: 'Fantastic Mr Fox', fiction: True)
end

When(/^the form is saved$/) do
  #call Entry#save to transfer the data to the spreadsheet
  @entry.save(@spreadsheet)
end

Then(/^the reading log spreadsheet is saved with the new data$/) do
  pending # express the regexp above with the code you wish you had
end
