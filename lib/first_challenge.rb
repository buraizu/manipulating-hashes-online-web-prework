def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts.each do|contact, data|
    if contact == "Freddy Mercury"
      data.each do|attr, val|
        if attr == :favorite_icecream_flavors
          val.each do|flavor|
           if flavor == "strawberry"
              val.delete(flavor)
           end
          end
        end 
      end
    end 
  end
  #remember to return your newly altered contacts hash!
  contacts
end

