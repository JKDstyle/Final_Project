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
GimZone.destroy_all
GimMartialArt.destroy_all
MartialArtZone.destroy_all

gims = [
	Gim.create(name: "Loong", description: "the way of the intercepting fist", longitude: "41.555488", lattitude: "2.095242", address: "Via Julia, Sabadell", url: "http://i.imgur.com/jFPDzXO.jpg**http://i.imgur.com/gkCcBrK.jpg**http://i.imgur.com/E1yPQYt.jpg"),
	Gim.create(name: 'Campió', description: 'Improve you skills in personal defense',longitude: "41.5232701", lattitude: "2.1115711", address: 'Carrer Leonardo Da Vinci, Sabadell', url:"http://i.imgur.com/boeZN1k.jpg**http://clubhercules.es/images/kick%20boxing.jpg**https://upload.wikimedia.org/wikipedia/en/b/b2/Brad_Pitt_boxing.jpg"),
	Gim.create(name: 'DojoSabadell', description: 'Learning and practicing Karate in DojoSabadell has no age limit. You can start very young or very old and the result is the same, you will improve as a human being and your quality of life.',longitude: "41.5385045", lattitude: "2.0988183", address: 'Carretera Molins de Rei num 172', url:"http://www.dojosabadell.com/recurso/articulo/img_1904_ret.jpg**http://www.dojosabadell.com/recurso/articulo/dsc08098.jpg**http://www.dojosabadell.com/recurso/articulo/dsc07964.jpg")
	
]

# Gim.find(10).gimzones.create


martial_arts = [
	MartialArt.create(name: 'Jeet Kune Do', description: 'Jeet Kune Do, abbreviated JKD, is an eclectic and hybrid style fighting art heavily influenced by the philosophy of martial artist Bruce Lee, who founded the system in 1967, referred it as "non-classical", suggesting that JKD is a form of Chinese Kung Fu, yet without form. Unlike more traditional martial arts, Jeet Kune Do is not fixed or patterned, and is a philosophy with guiding thoughts'),
	#related zone : Eix macia
	MartialArt.create(name: 'Muay Tay', description: 'is a combat sport of Thailand that uses stand-up striking along with various clinching techniques.This physical and mental discipline which includes combat on shins is known as "the art of eight limbs" because it is characterized by the combined use of fists, elbows, knees, shins, being associated with a good physical preparation that makes a full-contact fighter very efficient. Muay Thai became widespread internationally in the twentieth century, when practitioners defeated notable practitioners of other martial arts.A professional league is governed by the World Muay Thai Council'),
	#related zone : 
	MartialArt.create(name: 'Brazilian Jiu Jitsu', description: 'BJJ promotes the concept that a smaller, weaker person can successfully defend against a bigger, stronger assailant by using proper technique, leverage, and most notably, taking the fight to the ground, and then applying joint-locks and chokeholds to defeat the opponen'),
	MartialArt.create(name: 'Mixed Martial Arts', description: 'Mixed martial arts (MMA) is a full-contact combat sport that allows the use of both striking and grappling techniques, both standing and on the ground, from a variety of other combat sports and martial arts. Various mixed-style contests took place throughout Europe, Japan and the Pacific Rim during the early 1900s'),
	MartialArt.create(name: 'Boxing', description: 'Boxing is a martial art and combat sport in which two people throw punches at each other, usually with gloved hands. Historically, the goals have been to weaken and knock down the opponent.'),
	MartialArt.create(name: 'Karate KyokushinKai', description: 'Kyokushin is a style of stand-up, full contact karate, founded in 1964 by Korean-Japanese Masutatsu Oyama . Kyokushin is Japanese for "the ultimate truth." Kyokushin is rooted in a philosophy of self-improvement, discipline and hard training. Its full contact style has had international appeal')
]


zones = [
	Zone.create(name: 'Eix Macià'),
	Zone.create(name: 'Les Termes'),
	Zone.create(name: 'Gracia')
]


#gim has many zones through localisations


gimzones = [ 
GimZone.create(gim_id: gims[0].id, zone_id: zones[0].id),
GimZone.create(gim_id: gims[1].id, zone_id: zones[1].id),
GimZone.create(gim_id: gims[2].id, zone_id: zones[2].id)
]
# gims has many martial arts through courses

gimmartialarts = [
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[0].id),
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[3].id),
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[2].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[1].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[3].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[4].id),
GimMartialArt.create(gim_id: gims[2].id, martial_art_id: martial_arts[5].id)
]

# martial arts has many zones through 
#zones has many martial_arts through 

martialartzone = [
	MartialArtZone.create(martial_art_id: martial_arts[0].id, zone_id: zones[0].id),
	MartialArtZone.create(martial_art_id: martial_arts[2].id, zone_id: zones[0].id),
	MartialArtZone.create(martial_art_id: martial_arts[3].id, zone_id: zones[0].id),
	MartialArtZone.create(martial_art_id: martial_arts[3].id, zone_id: zones[1].id),
	MartialArtZone.create(martial_art_id: martial_arts[1].id, zone_id: zones[1].id),
	MartialArtZone.create(martial_art_id: martial_arts[4].id, zone_id: zones[1].id),
	MartialArtZone.create(martial_art_id: martial_arts[5].id, zone_id: zones[2].id)


]
puts "Done"