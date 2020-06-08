/datum/language/siik_maas
	name = LANGUAGE_SIIK_MAAS
	desc = "A language originating from the large Hharar agricultural communities scattered around the Meralaran temperate zone that evolved through trading caravans into a broad and nuanced, if complex and sometimes unwieldy, shared language of the trading houses and the rich. For humans, the language is difficult to speak without a great deal of practice and experience as it incorporates a great deal of pitch variation, yowls, and trills that are difficult to replicate with the human palate. As a Seleminite language, they have the archetypical third person usage to refer to themselves, often carrying over to ZAC and other languages as the first person represents trust or affection."
	speech_verb = "mrowls"
	ask_verb = "mrowls"
	exclaim_verb = "yowls"
	colour = "tajaran"
	key = "i"
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","saam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")
	shorthand = "TJ"
	partial_understanding = list(
		LANGUAGE_AKHANI = 20
	)

/datum/language/tajaran/get_random_name(var/gender)
	var/new_name = ..(gender,1)
	if(prob(50))
		new_name += " [pick(list("Hadii","Kaytam","Nazkiin","Zhan-Khazan","Hharar","Njarir'Akhan","Faaira'Nrezi","Rhezar","Mi'dynh","Rrhazkal","Bayan","Al'Manq","Mi'jri","Chur'eech","Sanu'dra","Ii'rka"))]"
	else
		new_name += " [..(gender,1)]"
	return new_name

/datum/language/akhani
	name = LANGUAGE_AKHANI
	desc = "The ancient tongue of the Njarir'Akhan, dubbed Akhani. While today's Akhani is somewhat polluted with lendwords from Siik due to its use up and down the coasts of Meralar by the crews of trade ships, Akhani is still a distinct language family on its own. Akhani has a very structured and formal grammar, with words mostly formed by common syllables and compound nouns."
	speech_verb = "chatters"
	ask_verb = "mrowls"
	exclaim_verb = "wails"
	colour = "akhani"
	key = "l"
	syllables = list("mrr","rr","marr","tar","ahk","ket","hal","kah","dra","nal","kra","vah","dar","hrar", "eh",
	"ara","ka","zar","mah","ner","zir","mur","hai","raz","ni","ri","nar","njar","jir","ri","ahn","kha","sir",
	"kar","yar","kzar","rha","hrar","err","fer","rir","rar","yarr","arr","ii'r","jar","kur","ran","rii","ii",
	"nai","ou","kah","oa","ama","uuk","bel","chi","ayt","kay","kas","akor","tam","yir","enai")
	shorthand = "AKH"
	partial_understanding = list(
		LANGUAGE_SIIK_MAAS = 20
	)