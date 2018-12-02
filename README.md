# sbo-notes-to-anki.rb: "Safari Books Online to Anki"

(Note this script is a work in progress. I haven't put any effort into
a command line interface, so you may have to edit the file to work for
you).

[Safari Books Online](https://www.safaribooksonline.com/) lets you
highlight book passages and attach notes to those passages.

It also lets you download all of your highlights and notes as a CSV
file.

This script will parse the CSV file from Safari Books Online and
output a CSV file you can import into Anki. Each line of the file will
be a new card.

For an example on importing to Anki see [this post on
StackExchange](https://superuser.com/questions/698902/can-i-create-an-anki-deck-from-a-csv-file).

One strategy may be: when you find something in a book on SBO you want
to convert into a card just highlight the passage, create a new note,
and your "note" should be the question, and the highlighted passage is
the answer.

I use a custom card format in Anki that has Front, Back, and Note. In
the Note field I put the URL to the passage I highlighted.
