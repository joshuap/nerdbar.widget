#!/usr/bin/env ruby

require 'json'
require 'totalspaces2'

display_id = TotalSpaces2.main_display[:display_id]
count = TotalSpaces2.number_of_spaces_on_display(display_id)
current_space = TotalSpaces2.current_space

spaces = count.times.to_a.reduce([]) do |a,i|
  space = i+1
  a << {
    name: TotalSpaces2.name_for_space(space),
    number: space,
    active: space == current_space
  }
end

puts spaces.to_json
