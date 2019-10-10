# # def consolide_cart(cart)
# #   final_hash = {}
# #   cart.each do |element_hash|
# #     element_name = element_hash.keys[0]
    
# #     if final_hash.hask_key?(element_name)
# #       final_hash[element_name][:count] +=1 
# #     else 
# #       final_hash[element_name] = {
# #         count =1 
# #         price = element_hash[element_name][:price] ,
# #         clearance = element_hash[element_name][:clearence]
# #       }
# #       end
# #     end
# #   final_hash
# # end
  
  






# def consolidate_cart(cart)
#   hash = {}
#   cart.each do |item_hash|
#     item_hash.each do |name, price_hash|
#       if hash[name].nil?
#         hash[name] = price_hash.merge({:count => 1})
#       else
#         hash[name][:count] += 1
#       end
#     end
#   end
#   hash
# end

# def apply_coupons(cart, coupons)
#   hash = cart
#   coupons.each do |coupon_hash|
#     # add coupon to cart
#     item = coupon_hash[:item]

#     if !hash[item].nil? && hash[item][:count] >= coupon_hash[:num]
#       temp = {"#{item} W/COUPON" => {
#         :price => coupon_hash[:cost],
#         :clearance => hash[item][:clearance],
#         :count => 1
#         }
#       }
      
#       if hash["#{item} W/COUPON"].nil?
#         hash.merge!(temp)
#       else
#         hash["#{item} W/COUPON"][:count] += 1
#         #hash["#{item} W/COUPON"][:price] += coupon_hash[:cost]
#       end
      
#       hash[item][:count] -= coupon_hash[:num]
#     end
#   end
#   hash
# end

# def apply_clearance(cart)
#   cart.each do |item, price_hash|
#     if price_hash[:clearance] == true
#       price_hash[:price] = (price_hash[:price] * 0.8).round(2)
#     end
#   end
#   cart
# end

# def checkout(items, coupons)
#   cart = consolidate_cart(items)
#   cart1 = apply_coupons(cart, coupons)
#   cart2 = apply_clearance(cart1)
  
#   total = 0
  
#   cart2.each do |name, price_hash|
#     total += price_hash[:price] * price_hash[:count]
#   end
  
#   total > 100 ? total * 0.9 : total
  
# end

# items =   [
#       {"AVOCADO" => {:price => 3.00, :clearance => true}},
#       {"AVOCADO" => {:price => 3.00, :clearance => true}},
#       {"AVOCADO" => {:price => 3.00, :clearance => true}},
#       {"AVOCADO" => {:price => 3.00, :clearance => true}},
#       {"AVOCADO" => {:price => 3.00, :clearance => true}},
#       {"KALE" => {:price => 3.00, :clearance => false}},
#       {"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
#       {"ALMONDS" => {:price => 9.00, :clearance => false}},
#       {"TEMPEH" => {:price => 3.00, :clearance => true}},
#       {"CHEESE" => {:price => 6.50, :clearance => false}},
#       {"BEER" => {:price => 13.00, :clearance => false}},
#       {"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
#       {"BEETS" => {:price => 2.50, :clearance => false}},
#       {"SOY MILK" => {:price => 4.50, :clearance => true}}
#     ]

# coupons = [
#       {:item => "AVOCADO", :num => 2, :cost => 5.00},
#       {:item => "AVOCADO", :num => 2, :cost => 5.00},
#       {:item => "BEER", :num => 2, :cost => 20.00},
#       {:item => "CHEESE", :num => 2, :cost => 15.00}
#     ]

# checkout(items, coupons)
cart =   [
      {"AVOCADO" => {:price => 3.00, :clearance => true}},
      {"KALE" => {:price => 3.00, :clearance => false}},
      {"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
      {"ALMONDS" => {:price => 9.00, :clearance => false}},
      {"TEMPEH" => {:price => 3.00, :clearance => true}},
      {"CHEESE" => {:price => 6.50, :clearance => false}},
      {"BEER" => {:price => 13.00, :clearance => false}},
      {"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
      {"BEETS" => {:price => 2.50, :clearance => false}},
      {"SOY MILK" => {:price => 4.50, :clearance => true}}
    ]




sample = [
  {"AVOCADO" => {:price => 3.0, :clearance => true }},{"AVOCADO" => {:price => 3.0, :clearance => true }},
{"AVOCADO" => {:price => 3.0, :clearance => true }},
  {"KALE"    => {:price => 3.0, :clearance => false}}
]

def consolidate_cart(item)
  final = Hash.new 0 
  count = :count
item.each do |hash|
  hash.each do |food, description|
  
if final.has_key?(food) == false
  final[food] = description
  final[food][count] = 1
elsif final.has_key?(food)
final[food][:count] +=1
end
end
end
final
end

consolidate_cart(sample)



coupon = {:item => "AVOCADO", :num => 2, :cost => 5.0}

# def apply_coupons(cart, coupons)
#   final = Hash.new 0 
# coupons.each do |key, value|
#   puts key
#   cart.each do |food, description|
 
# end
# end

# end

# apply_coupons(consolidate_cart(sample), coupon)


# def apply_coupons(cart, coupon)
#   coupon.each do |item|
#     name_of_item = item[:item]
#     if cart.has_key?(name_of_item) == true && cart[name_of_item][:count] >= item[:num]
#       cart[name_of_item][:count] = cart[name_of_item][:count] - item[:num]
#       new_item = name_of_item + (" W/COUPON")
#       puts cart.has_key?(new_item)
#       if cart.has_key?(new_item) == false
#         cart[new_item] = {:price => item[:cost], :clearance => cart[name_of_item][:clearance], :count => 1}
#       else 
#         cart[new_item][:count] += 1
#       end
#     end
#   end
#   cart
# end
# apply_coupons(consolidate_cart(sample), coupon)



def apply_clearance(cart)

 
  cart.each do |item, details|
    if cart[item][:clearance] == true
      cart[item][:price] = (cart[item][:price]*0.20 - total)
    end
  end
  cart
end

apply_clearance(cart)

def apply_clearance(cart)
  # code here
  discount = 0.20
  cart.each do |item, details|
    if cart[item][:clearance] == true
      cart[item][:price] = (cart[item][:price]*discount).round(1)
    end
  end
  cart
end

def checkout(cart: [], coupons: [])
  # code here
  total = 0
  cart = consolidate_cart(cart)
  
  if cart.length == 1
    cart = apply_coupons(cart, coupons)
    cart_clearance = apply_clearance(cart)
    if cart_clearance.length > 1
      cart_clearance.each do |item, details|
        if details[:count] >=1
          total += (details[:price]*details[:count])
        end
      end
    else
      cart_clearance.each do |item, details|
        total += (details[:price]*details[:count])
      end
    end
  else
    cart = apply_coupons(cart, coupons)
    cart_clearance = apply_clearance(cart)
    cart_clearance.each do |item, details|
      total += (details[:price]*details[:count])
    end
  end
  

  if total > 100
    total = total*(0.90)
  end
  total


end
