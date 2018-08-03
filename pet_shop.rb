
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
