#!/usr/bin/env ruby

=begin

Given the CSV output from SafariBooksOnline.com for my highlights and
notes:

1. Reorder the columns in a way more useful
2. Create a link to the highlight/note

=end

require 'CSV'

pathfile = ENV['HOME'] + '/Downloads/safari-annotations-export.csv'

newcsvfile = CSV.open('/tmp/test.csv', 'w')
foranki = CSV.open('/tmp/anki.csv', 'w')

_1st_iteration = true # Flag for our first time through the loop

CSV.foreach(pathfile) do |row|
  # Reorder the list elements; add one new column that links the
  # highlight/note
  newcsvfile << [
    row[0],
    row[2],
    # Deal with the header row. Don't wanna hyperlink the column header.
    _1st_iteration ? "Link" : "=HYPERLINK(\"#{row[6]}\", \"Link\")",
    row[7],
    row[8]
  ]

  unless _1st_iteration
    foranki << [row[7], row[8], row[6]]
  end
  
  _1st_iteration = false

end

newcsvfile.close
foranki.close

__END__
0. Book Title
1. Authors
2. Chapter Title
3. Date of Highlight
4. Book URL
5. Chapter URL
6. Highlight URL
7. Highlight
8. Personal Note
