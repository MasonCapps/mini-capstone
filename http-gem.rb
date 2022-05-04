require "http"
require "tty-table"

while true
  print "Would you like to view all available products or one available product? Enter 'ALL' or 'ONE': "
  input = gets.chomp
  if input.upcase == "ALL"
    response = HTTP.get("http://localhost:3000/all_products")
    all_products = response.parse
    table = TTY::Table.new([["Products", "Test"], [all_products, "test"]])
    puts table.render(:ascii)
    break
  elsif input.upcase == "ONE"
    response = HTTP.get("http://localhost:3000/product")
    single_product = response.parse
    pp single_product
    break
  else
    puts "Invalid input, please try again."
  end
end
