require 'pry'

def find_item_by_name_in_collection(name, collection)
  
  collection.each do |item_hash|
    if item_hash[:item] === name
      return item_hash
    end
  end
  nil
end

def consolidate_cart(cart)

  checkout_list = []
  
  cart.each do |item_hash|
    item_by_name = find_item_by_name_in_collection(item_hash[:item], checkout_list)
    
    if item_by_name
      checkout_list << item_by_name
      item_hash[:count] += 1
    else
      
  end

  checkout_list
end


