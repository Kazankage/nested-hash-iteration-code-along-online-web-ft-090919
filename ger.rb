require 'pry'
contacts = {
  "Jon Snow" => {
    name: "Jon",
    email: "jon_snow@thewall.we",
    favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  },
  "Freddy Mercury" => {
    name: "Freddy",
    email: "freddy@mercury.com",
    favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  }
}

def delete_flavor(hash, contact, flavor_to_remove)
  hash[contact][:favorite_ice_cream_flavors].delete(flavor_to_remove)
  hash
end

puts delete_flavor(contacts, "Freddy Mercury", "strawberry")

contacts.each do |person, contact_details_hash| 
  if person == "Freddy Mercury"
    contact_details_hash.each do |attribute, data|
      if attribute == :favorite_ice_cream_flavors
        binding.pry
      end
    end
  end
end