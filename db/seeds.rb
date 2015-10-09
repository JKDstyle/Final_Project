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
	Gim.create(name: "Loong", description: "the way of the intercepting first", longitude: "41.555488", lattitude: "2.095242", address: "Via Julia, Sabadell", url: "http://i.imgur.com/jFPDzXO.jpg**http://i.imgur.com/gkCcBrK.jpg**http://i.imgur.com/E1yPQYt.jpg", web_site:'http://loong.es/menu.html'),
	Gim.create(name: 'Campió', description: 'Improve you skills in personal defense',longitude: "41.5232701", lattitude: "2.1115711", address: 'Carrer Leonardo Da Vinci, Sabadell', url:"http://i.imgur.com/boeZN1k.jpg**http://clubhercules.es/images/kick%20boxing.jpg**https://upload.wikimedia.org/wikipedia/en/b/b2/Brad_Pitt_boxing.jpg", web_site:'http://www.campioclubesportiu.com/'),
	Gim.create(name: 'DojoSabadell', description: 'Learning and practicing Karate in DojoSabadell has no age limit.',longitude: "41.5385045", lattitude: "2.0988183", address: 'Carretera Molins de Rei num 172', url:'http://www.dojosabadell.com/recurso/articulo/img_1904_ret.jpg**http://www.dojosabadell.com/recurso/articulo/dsc08098.jpg**http://www.dojosabadell.com/recurso/articulo/dsc07964.jpg', web_site:'http://www.dojosabadell.com'),
	Gim.create(name: 'Sabadell Training Center', description: 'Center specializing in martial arts and Krav Maga', longitude: '41.5344712,', lattitude:'2.1010999', address: 'Ramon Casellers, 33', url:'https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-xfa1/t31.0-8/s720x720/10644354_701873239866643_4583340836944705119_o.jpg**http://sabadelltrainingcenter.com/wp-content/uploads/2013/11/IMG_4593_ALEX_BN1.jpg**http://4.bp.blogspot.com/-XU_u0E3EJhg/VZ21o1Ex3-I/AAAAAAAABYQ/x-Oi1G20Kpw/s1600/Krav%2BMaga-54.jpeg', web_site:'http://sabadelltrainingcenter.com'),	
	Gim.create(name: 'Club de Boxa Lin', description: 'Fitness center and Martial Arts', longitude:'41.52217', lattitude:'2.12211', address:'C/ Espronceda , 73', url:'fñfdf', web_site: 'https://www.facebook.com/clubboxalin'),
	Gim.create(name: 'Aikido Mushin Dojo', description: 'Serious , solid, logical and effective Aikido', longitude:'41.5486', lattitude:'2.1075', address:'C/Bosh i Cardellach', url:'http://static.wixstatic.com/media/ad7400_e046be362641417686e3a872ffb4a863.jpg_srz_960_642_85_22_0.50_1.20_0.00_jpg_srz**http://static.wixstatic.com/media/ad7400_4a7606036a5f4bce90b2ddc42882984d.jpg_srz_720_480_85_22_0.50_1.20_0.00_jpg_srz**jklñ.jpg', web_site:'http://www.aikidomushindojo.com'),
	Gim.create(name: 'Club Esportiu Arts Marcials Tatami', description:'Martial Arts', longitude:'41.542891',lattitude:'2.106586', address:'Carrer de Ferran Casablancas nº72', url:'https://scontent-mad1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12049521_443998589121444_3282885566800488872_n.jpg?oh=50d59a08e93382bb75d0b36e1e328720&oe=5684A9A7**https://scontent-mad1-1.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/11990398_440640052790631_6428833861497348854_n.jpg?oh=929dc91a222d5c176391fddfa2ac794d&oe=56CD7537**https://scontent-mad1-1.xx.fbcdn.net/hphotos-xfp1/v/t1.0-9/12049521_443998589121444_3282885566800488872_n.jpg?oh=50d59a08e93382bb75d0b36e1e328720&oe=5684A9A7', web_site:'https://www.facebook.com/A.M.Tatami'),
	Gim.create(name: 'Capoeira Brazil Barcelona', description:'Capoeira style', longitude:'41.5468331', lattitude:'2.1102184', address:'C/Sant Josep, 23', url:'https://scontent-mad1-1.xx.fbcdn.net/hphotos-xta1/v/t1.0-9/11113709_397915993726835_8827268101385482672_n.jpg?oh=c6e5549e53f836163728c932e87357a5&oe=568D34CB**https://scontent-mad1-1.xx.fbcdn.net/hphotos-xtp1/t31.0-8/10580867_293871790797923_351579568817384326_o.jpg**https://scontent-mad1-1.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10312489_254812984703804_3141876944440848917_n.jpg?oh=7c6597d72cfa15794fa8ab6a0fa2550d&oe=56917C16', web_site:'http://capoeirabarna.com')
]




# Gim.find(10).gimzones.create


martial_arts = [
	MartialArt.create(name: 'Jeet Kune Do', description: 'Jeet Kune Do, abbreviated JKD, is an eclectic and hybrid style fighting art heavily influenced by the philosophy of martial artist Bruce Lee, who founded the system in 1967, referred it as "non-classical", suggesting that JKD is a form of Chinese Kung Fu, yet without form. Unlike more traditional martial arts, Jeet Kune Do is not fixed or patterned, and is a philosophy with guiding thoughts,', image:'Jeet.jpg'),
	#related zone : Eix macia
	MartialArt.create(name: 'Muay Tay', description: 'Is a combat sport of Thailand that uses stand-up striking along with various clinching techniques.This physical and mental discipline which includes combat on shins is known as "the art of eight limbs" because it is characterized by the combined use of fists, elbows, knees, shins, being associated with a good physical preparation that makes a full-contact fighter very efficient. Muay Thai became widespread internationally in the twentieth century, when practitioners defeated notable practitioners of other martial arts.A professional league is governed by the World Muay Thai Council', image:'Muay.jpg'),
	#related zone : 
	MartialArt.create(name: 'Brazilian Jiu Jitsu', description: 'BJJ promotes the concept that a smaller, weaker person can successfully defend against a bigger, stronger assailant by using proper technique, leverage, and most notably, taking the fight to the ground, and then applying joint-locks and chokeholds to defeat the opponen',image:'Brazilian.jpg'),
	MartialArt.create(name: 'Mixed Martial Arts', description: 'Mixed martial arts (MMA) is a full-contact combat sport that allows the use of both striking and grappling techniques, both standing and on the ground, from a variety of other combat sports and martial arts. Various mixed-style contests took place throughout Europe, Japan and the Pacific Rim during the early 1900s',image:'Mixed.jpg'),
	MartialArt.create(name: 'Box', description: 'Boxing is a martial art and combat sport in which two people throw punches at each other, usually with gloved hands. Historically, the goals have been to weaken and knock down the opponent.', image:'box.jpg'),
	MartialArt.create(name: 'Karate KyokushinKai', description: 'Kyokushin is a style of stand-up, full contact karate, founded in 1964 by Korean-Japanese Masutatsu Oyama . Kyokushin is Japanese for "the ultimate truth." Kyokushin is rooted in a philosophy of self-improvement, discipline and hard training. Its full contact style has had international appeal',image:'Kyoku.jpg'),
	MartialArt.create(name: 'Krav Maga', description:'Krav Maga ("contact combat") is a self-defense system developed for the military in Israel that consists of a wide combination of techniques sourced from Aikido, Judo, boxing and wrestling along with realistic fight training', image:'Krav.jpg'),
	MartialArt.create(name: 'Yoseikan Budo', description:'Yoseikan Budo may be classified as a sogo budo form, but is used here to indicate a martial art into which various martial ways have been integrated. It is probably most widely known for its connection to a pre-war style of aikido; however, it has important connections to judo, karate, western boxing and a traditional form of Japanese armed combat known as Tenshin Shoden Katori Shinto-ryu.', image:'Yosein.jpg'),
	MartialArt.create(name: 'Kick Boxing', description:'Kickboxing is a group of stand-up combat sports based on kicking and punching, historically developed from karate, Muay Thai, and Western boxing. Kickboxing is practiced for self-defense, general fitness, or as a contact sport', image:'Kick.jpg'),
	MartialArt.create(name: 'Aikido', description:'Aikido is a Japanese martial art developed by Morihei Ueshiba as a synthesis of his martial studies, philosophy, and religious beliefs. Aikido is often translated as "the way of unifying (with) life energy or as the way of harmonious spirit. Ueshiba''s goal was to create an art that practitioners could use to defend themselves while also protecting their attacker from injury', image:'Aikido.jpg'),
	MartialArt.create(name: 'Kung Fu', description:'Chinese martial arts, which are called kung fu  or wushu, are a number of fighting styles that have developed over the centuries in China. These fighting styles are often classified according to common traits, identified as "families" or "schools" of martial arts', image:'Kung.jpg'),
	MartialArt.create(name: 'Tai Chi', description:' T''ai chi  is an internal Chinese martial art practiced for both its defense training and its health benefits. Though originally conceived as a martial art, it is also typically practiced for a variety of other personal reasons: competitive wrestling in the format of Pushing Hands (Tui Shou), demonstration competitions, and achieving greater longevity', image:'Tai.jpg'),
	MartialArt.create(name: 'Capoeira', description:'Capoeira is a Brazilian martial art that combines elements of dance, acrobatics and music, and is sometimes referred to as a game. It was developed in Brazil mainly by West African descendants with native Brazilian influences, probably beginning in the 16th century. It is known for quick and complex moves, using mainly power, speed, and leverage for a wide variety of kicks, spins, and highly mobile techniques', image:'Capoeira.jpg')
]



zones = [
	Zone.create(name: 'Eix Macià'),
	Zone.create(name: 'Les Termes'),
	Zone.create(name: 'Gracia'),
	Zone.create(name: 'Centre'),
	Zone.create(name: 'XXX')


]


#gim has many zones through localisations


gimzones = [ 
GimZone.create(gim_id: gims[0].id, zone_id: zones[0].id),
GimZone.create(gim_id: gims[1].id, zone_id: zones[1].id),
GimZone.create(gim_id: gims[2].id, zone_id: zones[2].id),
GimZone.create(gim_id: gims[3].id, zone_id: zones[3].id),
GimZone.create(gim_id: gims[4].id, zone_id: zones[4].id),
GimZone.create(gim_id: gims[5].id, zone_id: zones[3].id),
GimZone.create(gim_id: gims[6].id, zone_id: zones[3].id),
GimZone.create(gim_id: gims[7].id, zone_id: zones[3].id)

]
# gims has many martial arts through courses

gimmartialarts = [
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[0].id),
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[3].id),
GimMartialArt.create(gim_id: gims[0].id, martial_art_id: martial_arts[2].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[1].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[3].id),
GimMartialArt.create(gim_id: gims[1].id, martial_art_id: martial_arts[4].id),
GimMartialArt.create(gim_id: gims[2].id, martial_art_id: martial_arts[5].id),
GimMartialArt.create(gim_id: gims[3].id, martial_art_id: martial_arts[6].id),
GimMartialArt.create(gim_id: gims[3].id, martial_art_id: martial_arts[7].id),
GimMartialArt.create(gim_id: gims[3].id, martial_art_id: martial_arts[8].id),
GimMartialArt.create(gim_id: gims[4].id, martial_art_id: martial_arts[4].id),
GimMartialArt.create(gim_id: gims[4].id, martial_art_id: martial_arts[8].id),
GimMartialArt.create(gim_id: gims[5].id, martial_art_id: martial_arts[9].id),
GimMartialArt.create(gim_id: gims[6].id, martial_art_id: martial_arts[10].id),
GimMartialArt.create(gim_id: gims[6].id, martial_art_id: martial_arts[11].id),
GimMartialArt.create(gim_id: gims[7].id, martial_art_id: martial_arts[12].id)




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
	MartialArtZone.create(martial_art_id: martial_arts[5].id, zone_id: zones[2].id),
	MartialArtZone.create(martial_art_id: martial_arts[6].id, zone_id: zones[3].id),
	MartialArtZone.create(martial_art_id: martial_arts[7].id, zone_id: zones[3].id),
	MartialArtZone.create(martial_art_id: martial_arts[8].id, zone_id: zones[3].id),
	MartialArtZone.create(martial_art_id: martial_arts[8].id, zone_id: zones[4].id),
	MartialArtZone.create(martial_art_id: martial_arts[4].id, zone_id: zones[4].id),
	MartialArtZone.create(martial_art_id: martial_arts[9].id, zone_id: zones[3].id),
	MartialArtZone.create(martial_art_id: martial_arts[10].id, zone_id: zones[3].id),
	MartialArtZone.create(martial_art_id: martial_arts[11].id, zone_id: zones[3].id),
	MartialArtZone.create(martial_art_id: martial_arts[1].id, zone_id: zones[3].id)




]
puts "Done"