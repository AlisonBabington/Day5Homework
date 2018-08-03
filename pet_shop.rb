
def pet_shop_name(pet_shop_name)
  return pet_shop_name[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, money)
  shop[:admin][:total_cash] += money
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number)
  shop[:admin][:pets_sold] += number
end

def stock_count(shop)
  shop[:pets].length
end

def pets_by_breed(shop, breed_name)
  pets = shop[:pets]
  pets_by_breed = []
  for pet in pets
  if pet[:breed] == breed_name
    pets_by_breed.push(pet[:name])
  end
end
return pets_by_breed
end


def find_pet_by_name(shop, pet_name)
  pets = shop[:pets]
  for pet in pets
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_name)
  pets = shop[:pets]
  for pet in pets
    if pet[:name] == pet_name
      pets.delete(pet)
    end
  end
  end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
  return customer
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
  customer[:pets].count
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] > new_pet[:price]
    return true
  else
    return false
  end
end

# def sell_pet_to_customer(shop, pet, customer)
#   if pet == nil
#     return nil
#   elsif customer[:cash] > pet[:price]
#     customer[:pets] << pet
#     customer[:pets].count
#     customer[:cash] -= pet[:price]
#     shop[:admin][:total_cash] += pet[:price]
#     shop[:admin][:pets_sold] += 1
#   end
# end

def sell_pet_to_customer(shop,pet,customer)
  if pet == nil
    return nil
  elsif customer_can_afford_pet(customer,pet) == true
   add_pet_to_customer(customer, pet)
   remove_customer_cash(customer, pet[:price])
   shop[:admin][:total_cash] += pet[:price]
   shop[:admin][:pets_sold] += 1
  end
end
