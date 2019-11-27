# PikamonTypes
pikamon_type_names = ["Normal", "Fighting", "Flying", "Poison", "Ground", "Rock", "Bug", "Ghost", "Steel", "Fire", "Water", "Grass", "Electric", "Psychic", "Ice", "Dragon", "Dark", "Fairy"]
pikamon_type_names.each { |pikamon_type_name| PikamonType.create(name: pikamon_type_name) }

# Pikamons
pikamons_file = File.read('db/pikamons.json')
pikamons_hash = JSON.parse(pikamons_file)

pikamons_hash.each do |pikamon_hash|
  Pikamon.create!(
    number: pikamon_hash['number'],
    name: pikamon_hash['name'],
    image_url: 'https://placeimg.com/640/480/animals',
    pikamon_type: PikamonType.find_by!(name: pikamon_hash['type']))
end
