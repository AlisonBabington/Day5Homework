
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

# def test_all_pets_by_breed__found
#   pets = pets_by_breed(@pet_shop, "British Shorthair")
#   assert_equal(2, pets.count)
# end

def pets_by_breed(shop , breed_name)
  pets_breed = []
  if pet in shop[:pets].each.include? breed_name
    pet += pets_breed
  end
end
end
