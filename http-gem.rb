require "http"
require "tty-table"

while true
  print "Would you like to view all available products or one available product? Enter 'ALL' or 'ONE': "
  input = gets.chomp
  if input.upcase == "ALL"
    response = HTTP.get("http://localhost:3000/products")
    all_products = response.parse
    break
  elsif input.upcase == "ONE"
    print "Enter a product ID to view a specific product: "
    id_input = gets.chomp.to_i
    response = HTTP.get("http://localhost:3000/products/#{id_input}")
    single_product = response.parse
    pp single_product
    break
  else
    puts "Invalid input, please try again."
  end
end

#Trying to allow user to input the updated changes

# while true
#   print "Would you like to update a product? Enter 'Yes' or 'No': "
#   update_input = gets.chomp

#   if update_input.upcase == "YES"
#     print "Enter a product ID to update that product: "
#     update_id_input = gets.chomp.to_i
#     response = HTTP.get("http://localhost:3000/products/#{update_id_input}")
#     response.parse

#     print "Enter what you want the new name to be. If you don't want to change the name, enter 'No Change': "
#     new_title_input = gets.chomp
#     if new_title.upcase == "NO CHANGE" || new_title.upcase == "NOCHANGE"
#       break
#   elsif update_input.upcase == "NO"
#     break
#   else
#     puts "Invalid input."
#   end
# end
