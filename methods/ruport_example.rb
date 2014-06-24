require 'ruport'

table = Ruport::Data::Table.new :column_names => ["country", "wine"],
                                :data => [["France", "Bourdeaux"],
                                          ["Italy", "Chianti"],
                                          ["France", "Chablis"]]

puts table.to_text

found = talbe.rows_with_country("France")
found.each do |row|
  puts row.to_csv
end

#=> France, Bordeaux
#   France, Chablis
