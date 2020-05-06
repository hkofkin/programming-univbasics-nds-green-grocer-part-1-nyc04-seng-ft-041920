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
  
  item_name = find_item_by_name_in_collection()
  
  cart.each do |item_hash|
    checkout_list << item_hash
  end
 
  checkout_list.each do |item_hash|
    item_hash[:count] = 0
  end
  
  checkout_list.each do |item_hash|
    item_hash[:count] += 1
  end

  checkout_list
end


