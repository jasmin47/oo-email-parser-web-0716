# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
attr_accessor :parse

def initialize(parse)
  @parse = parse
end

def parse
  emails = Array.new
  email = ""
  @parse.each_char {|letter|
    if letter == "," || letter == " "
      emails << email
      email = ""
    else
    email << letter
  end
}
emails << email
emails.delete_if {|email| email == ""}
emails.uniq
end
end

