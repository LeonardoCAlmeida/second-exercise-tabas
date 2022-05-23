25.times do
  p '#property created'
  Property.create(name: Faker::Name.name,
                  code: "JD #{Faker::Number.number(digits = 4)}",
                  description: Faker::Lorem.sentence(word_count = 30),
                  number: Faker::Number.number(digits = 3),
                  address: Faker::Address.street_name,
                  available_in: Faker::Business.credit_card_expiry_date,
                  price: Faker::Number.decimal(l_digits= 3),
                  bathroom_qty: Faker::Number.within(range= 1..3),
                  bedroom_qty: Faker::Number.within(range= 1..4),
                  sqm: Faker::Number.within(range= 80..200),
                  district_id: 1,
                  state_id: 1)
end

25.times do
  p '#property created'
  Property.create(name: Faker::Name.name,
                  code: "JD #{Faker::Number.number(digits = 4)}",
                  description: Faker::Lorem.sentence(word_count = 30),
                  number: Faker::Number.number(digits = 3),
                  address: Faker::Address.street_name,
                  available_in: Faker::Business.credit_card_expiry_date,
                  price: Faker::Number.decimal(l_digits= 3),
                  bathroom_qty: Faker::Number.within(range= 1..3),
                  bedroom_qty: Faker::Number.within(range= 1..4),
                  sqm: Faker::Number.within(range= 80..200),
                  district_id: 2,
                  state_id: 2)
end

count = 1 if count.nil?
Property.all.each do |prop|
  5.times do
    prop.photos.attach(io: File.open("public/assets/prop-image-#{count < 100 ? '0' : ''}#{count}.jpeg"), filename: "file-#{count}.jpeg")
    count += 1
  end
end

State.create(short_name: 'SP')
State.create(short_name: 'RJ')

District.create(name: 'Consolação', state_id: 1)
District.create(name: 'Ipanema', state_id: 2)
