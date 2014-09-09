# default spreadsheet to save to
require 'rspec/expectations'

@spreadsheet = Read_r::Spreadsheet.new(rdr_list: 'rafferty.xslx')

Given(/^the parent enters data into a form$/) do
  # Create a new entry object that stores values
  @entry = Read_r::Entry.new(name: 'Emma', recorder: 'qrprat77@gmail.com', minreadmon: 10, favebook: 'Fantastic Mr Fox', fiction: true)
end

When(/^the form is saved$/) do
  # call Entry#save to transfer the data to the spreadsheet
  # as you would when clicking a save button.
  @entry.save(@spreadsheet)
end

Then(/^the reading log spreadsheet is saved with the new data$/) do
  # Should this be some sort of equality operator? The last
  # spreadsheet row should equal the current entry object attributes.
  expect(@entry.current).to eq @spreadsheet.last
end
