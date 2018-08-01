# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 LIST = ['Alcohol','Assault','Bullying','Drugs','Graffiti','Injury','Suspicious activity','Trespassing','Vandalism','Weapons violatio','Technology misuse','Hazing','Other']

 LIST.each do |title|
      incident_type = IncidentType.where(title: title).first
      if incident_type.blank?
        IncidentType.create(title: title)
      end
  end
