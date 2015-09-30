# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Gim.destroy_all
MartialArt.destroy_all
Zone.destroy_all

gims = [
	Gim.create(name: "Loong", description: "the way of the intercepting fist", address: "Via Julia, Sabadell"),
	Gim.create(name: 'Campió', description: 'Improve you skills in personal defense', address: 'Carrer Leonardo Da Vinci, Sabadell')
]

martial_arts = [
	MartialArt.create(name: 'Jeet Kune Do', description: 'Jeet Kune Do, abbreviated JKD, is an eclectic and hybrid style fighting art heavily influenced by the philosophy of martial artist Bruce Lee, who founded the system in 1967, referred it as "non-classical", suggesting that JKD is a form of Chinese Kung Fu, yet without form. Unlike more traditional martial arts, Jeet Kune Do is not fixed or patterned, and is a philosophy with guiding thoughts'),
	MartialArt.create(name: 'Muay Ty', description: 'is a combat sport of Thailand that uses stand-up striking along with various clinching techniques.This physical and mental discipline which includes combat on shins is known as "the art of eight limbs" because it is characterized by the combined use of fists, elbows, knees, shins, being associated with a good physical preparation that makes a full-contact fighter very efficient.[5] Muay Thai became widespread internationally in the twentieth century, when practitioners defeated notable practitioners of other martial arts.A professional league is governed by the World Muay Thai Council'),
	MartialArt.create(name: 'Brazilian Jiu Jitsu', description: 'BJJ promotes the concept that a smaller, weaker person can successfully defend against a bigger, stronger assailant by using proper technique, leverage, and most notably, taking the fight to the ground, and then applying joint-locks and chokeholds to defeat the opponen')
]

zones = [
	Zone.create(name: 'Eix Macià'),
	Zone.create(name: 'Les Termes')
]

gimzones = [ 
GimZone.create(gim_id: Gim.first.id, zone_id: Zone.first.id),
GimZone.create(gim_id: Gim.last.id, zone_id: Zone.last.id)
]

gimmartialarts = [
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[0].id),
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[2].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[1].id),
]
puts "Done"