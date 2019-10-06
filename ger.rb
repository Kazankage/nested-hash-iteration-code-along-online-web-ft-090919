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

def delete_flavor(hash, contact)
  hash[contact][:favorite_ice_cream_flavors].shift
  hash
end

puts delete_flavor(contacts, "Freddy Mercury")