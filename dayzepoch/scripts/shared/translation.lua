local languages = {
	en = "English",
	lv = "Latviešu",
	ru = "Русский",
	pt = "Português (BR)",
}

local translation = {
	["weapon1"] = {
		en = "VKS", 
		lv = "VKS",
		ru = "VKS",
		pt = "VKS"
	},
	["weapon2"] = {
		en = "DMR", 
		lv = "DMR",
		ru = "DMR",
		pt = "DMR"
	},
	["weapon3"] = {
		en = "CZ 550", 
		lv = "CZ 550",
		ru = "CZ 550",
		pt = "CZ 550"
	},
	["weapon4"] = {
		en = "SVD Dragunov Camo", 
		lv = "SVD Dragunov Camo",
		ru = "SVD Dragunov Camo",
		pt = "SVD Dragunov Camo"
	},
	["weapon5"] = {
		en = "M24", 
		lv = "M24",
		ru = "M24",
		pt = "M24"
	},
	["weapon6"] = {
		en = "AKS Gold", 
		lv = "Zelta AKS",
		ru = "Золотой AKS",
		pt = "AKS Dourado"
	},
	["weapon7"] = {
		en = "Winchester 1866", 
		lv = "Vinčesteris 1866",
		ru = "Винчестер 1866",
		pt = "Winchester 1866"
	},
	["weapon8"] = {
		en = "Crossbow", 
		lv = "Arbaleta Loks",
		ru = "Арбалет",
		pt = "Besta"
	},
	["weapon9"] = {
		en = "AKS-74U", 
		lv = "AKS-74U",
		ru = "AKS-74U",
		pt = "AKS-74U"
	},
	["weapon10"] = {
		en = "AK-107", 
		lv = "AK-107",
		ru = "AK-107",
		pt = "AK-107"
	},
	["weapon11"] = {
		en = "M4A1 Holo", 
		lv = "M4A1 Holo",
		ru = "M4A1 Holo",
		pt = "M4A1 Holo"
	},
	["weapon12"] = {
		en = "MK 48 CCO", 
		lv = "MK 48 CCO",
		ru = "MK 48 CCO",
		pt = "MK 48 CCO"
	},
	["weapon13"] = {
		en = "RPK", 
		lv = "RPK",
		ru = "RPK",
		pt = "RPK"
	},
	["weapon14"] = {
		en = "SA-58V ACOG", 
		lv = "SA-58V ACOG",
		ru = "SA-58V ACOG",
		pt = "SA-58V ACOG"
	},
	["weapon15"] = {
		en = "Saiga 12K", 
		lv = "Saiga 12K",
		ru = "Saiga 12K",
		pt = "Saiga 12K"
	},
	["weapon16"] = {
		en = "Grenade", 
		lv = "Granāta",
		ru = "Граната",
		pt = "Granada"
	},
	["weapon17"] = {
		en = "Machete", 
		lv = "Mačete",
		ru = "Мачете",
		pt = "Facão"
	},
	["weapon18"] = {
		en = "MP5A5", 
		lv = "MP5A5",
		ru = "MP5A5",
		pt = "MP5A5"
	},
	["weapon19"] = {
		en = "Revolver", 
		lv = "Revolveris",
		ru = "Револьвер",
		pt = "Revólver"
	},
	["weapon20"] = {
		en = "Micro UZI", 
		lv = "Mikro UZI",
		ru = "Micro UZI",
		pt = "Micro UZI"
	},
	["weapon21"] = {
		en = "M1911", 
		lv = "M1911",
		ru = "M1911",
		pt = "M1911"
	},
	["weapon22"] = {
		en = "Hatchet", 
		lv = "Cirvis",
		ru = "Топор",
		pt = "Machado"
	},
	["weapon23"] = {
		en = "M9 SD", 
		lv = "M9 Klusinātājs",
		ru = "M9 Глушитель",
		pt = "M9 SD"
	},
	["weapon24"] = {
		en = "Hunting Knife", 
		lv = "Medību Nazis",
		ru = "Охотничий нож",
		pt = "Faca de Caça"
	},
	["weapon25"] = {
		en = "G17", 
		lv = "G17",
		ru = "G17",
		pt = "G17"
	},
	["weapon26"] = {
		en = "Baseball Bat", 
		lv = "Beisbola Nūja",
		ru = "Бейсбольная бита",
		pt = "Taco de Beisebol"
	},
	["weapon27"] = {
		en = "Shovel", 
		lv = "Lāpsta",
		ru = "Лопата",
		pt = "Pá"
	},
	["weapon28"] = {
		en = "Binoculars", 
		lv = "Binoklis",
		ru = "Бинокль",
		pt = "Binóculos"
	},

	["mag1"] = {
		en = "_45ACP Mag", 
		lv = "_45ACP Munīcija",
		ru = "_45ACP Обойма",
		pt = "Munição _45ACP"
	},
	["mag1description"] = {
		en = "Suitable for weapons\n  G17\n  M9 SD\n  M1911", 
		lv = "Derīgs priekš ieročiem\n  G17\n  M9 SD\n  M1911",
		ru = "Подходит для таких оружий\n  G17\n  M9 SD\n  M1911",
		pt = "Adequado para armas\n  G17\n  M9 SD\n  M1911"
	},
	["mag2"] = {
		en = "_45ACP Clip", 
		lv = "_45ACP Klip",
		ru = "_45ACP Обойма",
		pt = "Pente _45ACP"
	},
	["mag2description"] = {
		en = "Suitable for weapons\n  Revolver", 
		lv = "Derīgs priekš ieročiem\n  Revolveris",
		ru = "Подходит для таких оружий\n  Револьвер",
		pt = "Adequado para armas\n  Revolver"
	},
	["mag3"] = {
		en = "5_45x39 Mag", 
		lv = "5_45x39 Munīcija",
		ru = "5_45x39 Обойма",
		pt = "Munição 5_45x39"
	},
	["mag3description"] = {
		en = "Suitable for weapons\n  Micro UZI\n  MP5A5", 
		lv = "Derīgs priekš ieročiem\n  Mikro UZI\n  MP5A5",
		ru = "Подходит для таких оружий\n  Micro UZI\n  MP5A5",
		pt = "Adequado para armas\n  Micro UZI\n  MP5A5"
	},
	["mag4"] = {
		en = "7_62 Mag", 
		lv = "7_62 Munīcija",
		ru = "7_62 Обойма",
		pt = "Munição 7_62"
	},
	["mag4description"] = {
		en = "Suitable for weapons\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  AKS Gold", 
		lv = "Derīgs priekš ieročiem\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  Zelta AKS",
		ru = "Подходит для таких оружий\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  Золотой AKS",
		pt = "Adequado para armas\n  SA-58V ACOG\n  AK-107\n  AKS-74U\n  AKS Dourado"
	},
	["mag5"] = {
		en = "7_62x39 Mag", 
		lv = "7_62x39 Munīcija",
		ru = "7_62x39 Обойма",
		pt = "Munição 7_62x39"
	},
	["mag5description"] = {
		en = "Suitable for weapons\n  M4A1 Holo", 
		lv = "Derīgs priekš ieročiem\n  M4A1 Holo",
		ru = "Подходит для таких оружий\n  M4A1 Holo",
		pt = "Adequado para armas\n  M4A1 Holo"
	},
	["mag6"] = {
		en = "5_56Box Mag", 
		lv = "5_56Box Munīcija",
		ru = "7_62x39 Обойма",
		pt = "Munição 5_56Box"
	},
	["mag6description"] = {
		en = "Suitable for weapons\n  MK 48 CCO\n  RPK", 
		lv = "Derīgs priekš ieročiem\n  MK 48 CCO\n  RPK",
		ru = "Подходит для таких оружий\n  MK 48 CCO\n  RPK",
		pt = "Adequado para armas\n  MK 48 CCO\n  RPK"
	},
	["mag7"] = {
		en = "_10 Bullets", 
		lv = "_10 Lodes",
		ru = "_10 Патроны",
		pt = "_10 Balas"
	},
	["mag7description"] = {
		en = "Suitable for weapons\n  Winchester 1866\n  Saiga 12K", 
		lv = "Derīgs priekš ieročiem\n  Vinčesteris 1866\n  Saiga 12K",
		ru = "Подходит для таких оружий\n  Винчестер 1866\n  Saiga 12K",
		pt = "Adequado para armas\n  Winchester 1866\n  Saiga 12K"
	},
	["mag8"] = {
		en = "_300 Bullets", 
		lv = "_300 Lodes",
		ru = "_300 Патроны",
		pt = "_300 Balas"
	},
	["mag8description"] = {
		en = "Suitable for weapons\n  CZ 550\n  SVD Dragunov Camo\n  M24", 
		lv = "Derīgs priekš ieročiem\n  CZ 550\n  SVD Dragunov Camo\n  M24",
		ru = "Подходит для таких оружий\n  CZ 550\n  SVD Dragunov Camo\n  M24",
		pt = "Adequado para armas\n  CZ 550\n  SVD Dragunov Camo\n  M24"
	},
	["mag9"] = {
		en = "Bolt", 
		lv = "Būlta",
		ru = "Стрела",
		pt = "Flecha"
	},
	["mag9description"] = {
		en = "Suitable for weapons\n  Crossbow", 
		lv = "Derīgs priekš ieročiem\n  Arbalets",
		ru = "Подходит для таких оружий\n Арбалет",
		pt = "Adequado para armas\n  Besta"
	},
	["mag10"] = {
		en = "_303 Bullets", 
		lv = "_303 Lodes",
		ru = "_303 Патроны",
		pt = "_303 Balas"
	},
	["mag10description"] = {
		en = "Suitable for weapons\n  VKS\n  DMR", 
		lv = "Derīgs priekš ieročiem\n  VKS\n  DMR",
		ru = "Подходит для таких оружий\n  VKS\n  DMR",
		pt = "Adequado para armas\n  VKS\n  DMR"
	},

	["item1"] = {
		en = "Wood Pile", 
		lv = "Koku Čupa",
		ru = "Куча дров",
		pt = "Pilha de Madeira"
	},
	["item2"] = {
		en = "Wire Fence", 
		lv = "Vadu Sēta",
		ru = "Колючая проволока",
		pt = "Cerca de Arame"
	},
	["item3"] = {
		en = "Tent", 
		lv = "Telts",
		ru = "Палатка",
		pt = "Barraca"
	},
	["item4"] = {
		en = "Safe", 
		lv = "Seifs",
		ru = "Сейф",
		pt = "Cofre"
	},
	["item5"] = {
		en = "Roadflare [Red]", 
		lv = "Ceļa Uzliesmojums [Sarkans]",
		ru = "Сигнальная ракета [Красный]",
		pt = "Sinalizador [Vermelho]"
	},
	["item6"] = {
		en = "Trash", 
		lv = "Musars",
		ru = "Мусор",
		pt = "Lixo"
	},
	["item7"] = {
		en = "C4", 
		lv = "C4",
		ru = "C4",
		pt = "C4"
	},
	["item8"] = {
		en = "Supply Signal", 
		lv = "Piegādes Signāls",
		ru = "Сигнал поставки",
		pt = "Sinal de Suprimentos"
	},
	["item9"] = {
		en = "Full Gas Canister", 
		lv = "Pilna Benzīn Kana",
		ru = "Наполненная канистра",
		pt = "Galão de Combustível Cheio"
	},
	["item10"] = {
		en = "Empty Gas Canister", 
		lv = "Tukša Benzīn Kana",
		ru = "Пустая канистра",
		pt = "Galão de Combustível Vazio"
	},
	["item11"] = {
		en = "Roadflare [Green]", 
		lv = "Ceļa Uzliesmojums [Zaļš]",
		ru = "Сигнальная ракета [Зеленый]",
		pt = "Sinalizador [Verde]"
	},
	["item12"] = {
		en = "Roadflare [Blue]", 
		lv = "Ceļa Uzliesmojums [Zils]",
		ru = "Сигнальная ракета [Синий]",
		pt = "Sinalizador [Azul]"
	},
	["item13"] = {
		en = "Mine", 
		lv = "Mīna",
		ru = "Мина",
		pt = "Mina"
	},
	["item14"] = {
		en = "Key", 
		lv = "Atslēga",
		ru = "Ключ",
		pt = "Chave"
	},

	["clothing1"] = {
		en = "Ghillie Suit", 
		lv = "Snaipera Uzvelks",
		ru = "Снайперский камуфляж",
		pt = "Traje Ghillie"
	},
	["clothing2"] = {
		en = "Camouflage Clothing", 
		lv = "Armīnieka Drēbes",
		ru = "Армейский камуфляж",
		pt = "Roupa Camuflada"
	},
	["clothing3"] = {
		en = "Civilian Clothing", 
		lv = "Iedzīvotāja Drēbes",
		ru = "Гражданская одежда",
		pt = "Roupa Civil"
	},
	["clothing4"] = {
		en = "Survivor Clothing [Brown]", 
		lv = "Izdzīvotāja Drēbes [Brūnas]",
		ru = "Одежда выжившего [Коричневый]",
		pt = "Roupa de Sobrevivente [Marrom]"
	},
	["clothing5"] = {
		en = "Survivor Clothing [Grey]", 
		lv = "Izdzīvotāja Drēbes [Pelēkas]",
		ru = "Одежда выжившего [Серый]",
		pt = "Roupa de Sobrevivente [Cinza]"
	},
	["clothing6"] = {
		en = "Survivor Clothing [Black]", 
		lv = "Izdzīvotāja Drēbes [Melnas]",
		ru = "Одежда выжившего [Черный]",
		pt = "Roupa de Sobrevivente [Preto]"
	},

	--[[
	["currency1"] = {
		en = "Briefcase [Gold]", 
		lv = "Koferis [Zelts]",
		ru = "",
		pt = "Maleta [Dourada]"
	},
	["currency2"] = {
		en = "Briefcase [Silver]", 
		lv = "Koferis [Sudrabs]",
		ru = "",
		pt = "Maleta [Prata]"
	},
	["currency3"] = {
		en = "Briefcase [Copper]", 
		lv = "Koferis [Varš]",
		ru = "",
		pt = "Maleta [Cobre]"
	},
	]]--

	["vehiclepart1"] = {
		en = "Engine", 
		lv = "Dzinējs",
		ru = "Двигатель",
		pt = "Motor"
	},
	["vehiclepart2"] = {
		en = "Rotor", 
		lv = "Turbīnas Rats",
		ru = "Ротор",
		pt = "Rotor"
	},
	["vehiclepart3"] = {
		en = "Tire", 
		lv = "Riepa",
		ru = "Колесо",
		pt = "Pneu"
	},
	["vehiclepart4"] = {
		en = "Tank Parts", 
		lv = "Degvielas Tvertne",
		ru = "Бензобак",
		pt = "Peças do Tanque"
	},
	["vehiclepart5"] = {
		en = "Scrap Metal", 
		lv = "Metāllūžņi",
		ru = "Металлолом",
		pt = "Sucata"
	},

	["medicine1"] = {
		en = "Large Medic Kit", 
		lv = "Lielā Aptieciņa",
		ru = "Больщая Аптечка",
		pt = "Kit Médico Grande"
	},
	["medicine2"] = {
		en = "Medic Kit", 
		lv = "Aptieciņa",
		ru = "Аптечка",
		pt = "Kit Médico"
	},
	["medicine3"] = {
		en = "Small Medic Kit", 
		lv = "Mazā Aptieciņa",
		ru = "Маленькая Аптечка",
		pt = "Kit Médico Pequeno"
	},
	["medicine4"] = {
		en = "Heat Pack", 
		lv = "Siltumu Paka",
		ru = "Грелка",
		pt = "Bolsa Térmica"
	},
	["medicine5"] = {
		en = "Bandage", 
		lv = "Binde",
		ru = "Бинт",
		pt = "Bandagem"
	},
	["medicine6"] = {
		en = "Painkiller", 
		lv = "Pretsāpju Līdzeklis",
		ru = "Болеутоляющее",
		pt = "Analgésico"
	},
	["medicine7"] = {
		en = "Blood Bag", 
		lv = "Asins Paka",
		ru = "Пакет крови",
		pt = "Bolsa de Sangue"
	},
	["medicine8"] = {
		en = "Morphine", 
		lv = "Morfīns",
		ru = "Морфий",
		pt = "Morfina"
	},

	["fooditem1"] = {
		en = "Water Bottle", 
		lv = "Ūdens Pudele",
		ru = "Фляга",
		pt = "Garrafa de Água"
	},
	["fooditem2"] = {
		en = "Empty Water Bottle", 
		lv = "Tukša Ūdens Pudele",
		ru = "Пустая фляга",
		pt = "Garrafa de Água Vazia"
	},
	["fooditem3"] = {
		en = "Pasta Can", 
		lv = "Pastu Kana",
		ru = "Банка макарон",
		pt = "Lata de Macarrão"
	},
	["fooditem4"] = {
		en = "Beans Can", 
		lv = "Pupu Kana",
		ru = "Банка бобов",
		pt = "Lata de Feijão"
	},
	["fooditem5"] = {
		en = "Burger", 
		lv = "Burgeris",
		ru = "Гамбургер",
		pt = "Hambúrguer"
	},
	["fooditem6"] = {
		en = "Milk", 
		lv = "Piens",
		ru = "Молоко",
		pt = "Leite"
	},
	["fooditem7"] = {
		en = "Soda Can", 
		lv = "Sodas Kana",
		ru = "Банка соды",
		pt = "Lata de Refrigerante"
	},
	["fooditem8"] = {
		en = "Empty Soda Can", 
		lv = "Tukša Sodas Kana",
		ru = "Пустая банка соды",
		pt = "Lata de Refrigerante Vazia"
	},
	["fooditem9"] = {
		en = "Pizza", 
		lv = "Pica",
		ru = "Пицца",
		pt = "Pizza"
	},
	["fooditem10"] = {
		en = "Cooked Meat", 
		lv = "Uzcepta Gaļa",
		ru = "Жареное мясо",
		pt = "Carne Cozida"
	},
	["fooditem11"] = {
		en = "Raw Meat", 
		lv = "Jēla Gaļa",
		ru = "Сырое мясо",
		pt = "Carne Crua"
	},

	["toolbelt1"] = {
		en = "Map", 
		lv = "Karte",
		ru = "Карта",
		pt = "Mapa"
	},
	["toolbelt2"] = {
		en = "GPS", 
		lv = "Navigācija",
		ru = "GPS",
		pt = "GPS"
	},
	["toolbelt3"] = {
		en = "Watch", 
		lv = "Pūlkstenis",
		ru = "Часы",
		pt = "Relógio"
	},
	["toolbelt4"] = {
		en = "Toolbox", 
		lv = "Instrumentu Kaste",
		ru = "Инструменты",
		pt = "Caixa de Ferramentas"
	},
	["toolbelt5"] = {
		en = "Box of Matches", 
		lv = "Sērkoku Kaste",
		ru = "Спички",
		pt = "Caixa de Fósforos"
	},
	["toolbelt6"] = {
		en = "Infrared Goggles", 
		lv = "Infrasarkanās Brilles",
		ru = "Инфокрасные очки",
		pt = "Óculos Infravermelhos"
	},
	["toolbelt7"] = {
		en = "Night Vision Goggles", 
		lv = "Nakts Redzamības Brilles",
		ru = "Очки ночного видения",
		pt = "Óculos de Visão Noturna"
	},
	["toolbelt8"] = {
		en = "Radio Device", 
		lv = "Radio Ierīce",
		ru = "Рация",
		pt = "Dispositivo de Rádio"
	},
	["toolbelt9"] = {
		en = "Advanced Toolbox", 
		lv = "Advancēta Instrumentu Kaste",
		ru = "Расширенный набор инструментов",
		pt = "Caixa de Ferramentas Avançada"
	},

	["vehiclehudtext1"] = {
		en = "ENGINE", 
		lv = "DZINĒJS",
		ru = "ДВИГАТЕЛЬ",
		pt = "MOTOR"
	},
	["vehiclehudtext2"] = {
		en = "ROTOR", 
		lv = "TURBĪNAS RATS",
		ru = "РОТОР",
		pt = "ROTOR"
	},
	["vehiclehudtext3"] = {
		en = "TIRE", 
		lv = "RIEPA",
		ru = "КОЛЕСО",
		pt = "PNEU"
	},
	["vehiclehudtext4"] = {
		en = "TANK PARTS", 
		lv = "DEGVIELAS TVERTNE",
		ru = "БЕНЗОБАК",
		pt = "TANQUE"
	},
	["vehiclehudtext5"] = {
		en = "SCRAP METAL", 
		lv = "METĀLLŪŽŅI",
		ru = "МЕТАЛЛОЛОМ",
		pt = "SUCATA"
	},
	--[[
	["vehiclehudtext6"] = {
		en = "Fuel:", 
		lv = "Benzīns:",
		ru = "",
		pt = "Combustível:"
	},
	]]

	["logintext"] = {
		en = "has logged in!", 
		lv = "pieslēdzās!",
		ru = "вошел в систему!",
		pt = "entrou no servidor!"
	},
	["jointext"] = {
		en = "joined the game", 
		lv = "pievienojās spēlē",
		ru = "присоединился к игре",
		pt = "entrou no jogo"
	},
	["leavetext"] = {
		en = "left the game", 
		lv = "atvienojās no spēles",
		ru = "покинул игру",
		pt = "saiu do jogo"
	},
	["changenicktext"] = {
		en = "is now known as", 
		lv = "ir tagad zināms kā",
		ru = "известен как",
		pt = "agora é conhecido como"
	},

	["inventoryactiontext1"] = {
		en = "Arm Primary Weapon", 
		lv = "Uzvilkt Primāro Ieroci",
		ru = "Взять в руки",
		pt = "Equipar Arma Primária"
	},
	["inventoryactiontext2"] = {
		en = "Unarm Primary Weapon", 
		lv = "Novilkt Primāro Ieroci",
		ru = "Убрать из рук",
		pt = "Desequipar Arma Primária"
	},
	["inventoryactiontext3"] = {
		en = "Arm Secondary Weapon", 
		lv = "Uzvilkt Sekundāro Ieroci",
		ru = "Взять в руки",
		pt = "Equipar Arma Secundária"
	},
	["inventoryactiontext4"] = {
		en = "Unarm Secondary Weapon", 
		lv = "Novilkt Sekundāro Ieroci",
		ru = "Убрать из рук",
		pt = "Desequipar Arma Secundária"
	},
	["inventoryactiontext5"] = {
		en = "Arm Special Weapon", 
		lv = "Uzvilkt Speciālo Ieroci",
		ru = "Взять в руки",
		pt = "Equipar Arma Especial"
	},
	["inventoryactiontext6"] = {
		en = "Unarm Special Weapon", 
		lv = "Novilkt Speciālo Ieroci",
		ru = "Убрать из рук",
		pt = "Desequipar Arma Especial"
	},
	["inventoryactiontext7"] = {
		en = "Drink", 
		lv = "Dzert",
		ru = "Попить",
		pt = "Beber"
	},
	["inventoryactiontext8"] = {
		en = "Eat", 
		lv = "Ēst",
		ru = "Съесть",
		pt = "Comer"
	},
	["inventoryactiontext9"] = {
		en = "Bandage yourself", 
		lv = "Aptīt bindi ap sevi",
		ru = "Опбинтовать себья",
		pt = "Se enfaixar"
	},
	["inventoryactiontext10"] = {
		en = "Place", 
		lv = "Uzlikt",
		ru = "Надеть",
		pt = "Colocar"
	},
	["inventoryactiontext11"] = {
		en = "Use", 
		lv = "Lietot",
		ru = "Использовать",
		pt = "Usar"
	},
	["inventoryactiontext12"] = {
		en = "Build a wire fence", 
		lv = "Uzcelt vadu sētu",
		ru = "поставить Колючую проволоку",
		pt = "Construir cerca de arame"
	},
	["inventoryactiontext13"] = {
		en = "Pitch a tent", 
		lv = "Uzlikt telti",
		ru = "поставить палатку",
		pt = "Armar barraca"
	},
	["inventoryactiontext14"] = {
		en = "Build a safe", 
		lv = "Uzlikt seifu",
		ru = "поставить сейф",
		pt = "Construir cofre"
	},
	["inventoryactiontext15"] = {
		en = "Put clothes on", 
		lv = "Uzvilkt drēbes",
		ru = "Надеть",
		pt = "Vestir roupas"
	},
	["inventoryactiontext16"] = {
		en = "Fill bottle up", 
		lv = "Piepildīt pudeli",
		ru = "Наполнить",
		pt = "Encher garrafa"
	},
	["inventoryactiontext17"] = {
		en = "Call Airdrop", 
		lv = "Izsaukt Airdropu",
		ru = "Вызвать Airdrop",
		pt = "Chamar Airdrop"
	},
	["inventoryactiontext18"] = {
		en = "Equip Backpack", 
		lv = "Uzvilkt Somu",
		ru = "Надеть рюкзак",
		pt = "Equipar Mochila"
	},
	["inventoryactiontext19"] = {
		en = "Make a Fire", 
		lv = "Uztaisīt Ugunskuru",
		ru = "Зделать костер",
		pt = "Fazer Fogueira"
	},
	["inventoryactiontext20"] = {
		en = "Set GPS channel", 
		lv = "Uzlikt Navigācijas staciju",
		ru = "Поставить GPS волну",
		pt = "Definir canal do GPS"
	},
	["inventoryactiontext21"] = {
		en = "Set Radio channel", 
		lv = "Uzlikt Radio staciju",
		ru = "",
		pt = "Definir canal do Rádio"
	},
	["inventorytext1"] = {
		en = "SLOTS", 
		lv = "VIETA",
		ru = "СЛОТЫ",
		pt = "ESPAÇOS"
	},
	["inventorydescription1"] = {
		en = "Damage", 
		lv = "Stiprums",
		ru = "Урон",
		pt = "Dano"
	},

	--[[ netiek izmantots
	["inventorydescription2"] = {
		en = "Knife for hunting", 
		lv = "Nazis priekš medīšanas",
		ru = "",
		pt = "Faca para caça"
	},
	["inventorydescription3"] = {
		en = "Just a sharp Hatchet", 
		lv = "Ass cirvis",
		ru = "",
		pt = "Apenas um machado afiado"
	},
	["inventorydescription4"] = {
		en = "get some faces beaten up", 
		lv = "stipra nūja",
		ru = "",
		pt = "quebre algumas caras"
	},
	["inventorydescription5"] = {
		en = "can be used to bury bodies", 
		lv = "var tikt izmantots lai apglabātu līķus",
		ru = "",
		pt = "pode ser usado para enterrar corpos"
	},
	]]--

	["inventorydescription6"] = {
		en = "Can view long distances", 
		lv = "Var skatīties lielus attālumus",
		ru = "Можно наблюдать большие дистанции",
		pt = "Pode ver longas distâncias"
	},
	--[[
	["inventorydescription7"] = {
		en = "Ammunition for gun", 
		lv = "Munīcija priekš ieroča",
		ru = "",
		pt = "Munição para arma"
	},
	]]--
	["inventorydescription8"] = {
		en = "Clean Water", 
		lv = "Tīrs Ūdens",
		ru = "Чистая вода",
		pt = "Água Limpa"
	},
	["inventorydescription9"] = {
		en = "Eatable Pasta", 
		lv = "Ēdama Pasta",
		ru = "Съедобная паста",
		pt = "Macarrão Comestível"
	},
	["inventorydescription10"] = {
		en = "Fresh Food", 
		lv = "Svaigs Ēdiens",
		ru = "Свежая еда",
		pt = "Comida Fresca"
	},
	["inventorydescription11"] = {
		en = "Unopened Soda", 
		lv = "Neatvērta Soda",
		ru = "Неоткрытая сода",
		pt = "Refrigerante Lacrado"
	},
	["inventorydescription12"] = {
		en = "Fresh Milk", 
		lv = "Svaigs Piens",
		ru = "Свежее молоко",
		pt = "Leite Fresco"
	},
	["inventorydescription13"] = {
		en = "Fresh Steak", 
		lv = "Svaigs Steiks",
		ru = "Свежий стейк",
		pt = "Bife Fresco"
	},
	["inventorydescription14"] = {
		en = "Stack of wood", 
		lv = "Čupa ar pagalēm",
		ru = "Куча дров",
		pt = "Pilha de madeira"
	},
	["inventorydescription15"] = {
		en = "Can stop bleeding", 
		lv = "Var apstādināt asiņošanu",
		ru = "Может остановить кровотечение",
		pt = "Pode parar sangramentos"
	},
	["inventorydescription16"] = {
		en = "Lights up road", 
		lv = "Iededzina ceļu",
		ru = "Подсветка дороги",
		pt = "Ilumina a estrada"
	},
	["inventorydescription17"] = {
		en = "Can store gas", 
		lv = "Kana lai uzturētu benzīnu",
		ru = "Может хранить бензин",
		pt = "Pode armazenar combustível"
	},
	["inventorydescription18"] = {
		en = "Fresh Gas", 
		lv = "Svaigs benzīns",
		ru = "Свежий бензин",
		pt = "Combustível Fresco"
	},
	["inventorydescription19"] = {
		en = "Restores lost blood", 
		lv = "Atgriež pazudušās asinis",
		ru = "Восстанавливает потерянную кровь",
		pt = "Restaura sangue perdido"
	},
	["inventorydescription20"] = {
		en = "Worms you up", 
		lv = "Sasildina tevi",
		ru = "Согреет вас",
		pt = "Aquece você"
	},
	["inventorydescription21"] = {
		en = "Removes pain", 
		lv = "Noņem sāpes",
		ru = "Снежает боль",
		pt = "Remove dor"
	},
	["inventorydescription22"] = {
		en = "Restores broken bones", 
		lv = "Salabo beigtus kaulus",
		ru = "Восстанавливает сломанные кости",
		pt = "Restaura ossos quebrados"
	},
	["inventorydescription23"] = {
		en = "Can restore blood for other players", 
		lv = "Var atgriest asinis priekš citiem spēlētājiem",
		ru = "Может восстановить кровь для других игроков",
		pt = "Pode restaurar sangue para outros jogadores"
	},
	["inventorydescription24"] = {
		en = "Fence that can be placed", 
		lv = "Sēta kas var tikt uzlikta",
		ru = "Забор, который можно разместить где вы хотите",
		pt = "Cerca que pode ser colocada"
	},
	["inventorydescription25"] = {
		en = "Very dangerous explosive", 
		lv = "Ļoti bīstama sprāgstviela",
		ru = "Очень опасное взрывчатое вещество",
		pt = "Explosivo muito perigoso"
	},
	["inventorydescription26"] = {
		en = "Can be cooked", 
		lv = "Var tikt uzcepta",
		ru = "Можно пожарить",
		pt = "Pode ser cozinhado"
	},
	["inventorydescription27"] = {
		en = "Part of a vehicle\nToolbox required to install", 
		lv = "Detaļa no mašīnas\nInstrumenta kaste nepieciešams lai ienstalētu",
		ru = "Часть транспортного средства\nНужны Инструменты",
		pt = "Peça de um veículo\nCaixa de ferramentas necessária para instalar"
	},
	["inventorydescription28"] = {
		en = "Can be used as storage", 
		lv = "Var tikt izmantots kā noliktava",
		ru = "Можно использоваться как хранилище",
		pt = "Pode ser usado como armazenamento"
	},
	["inventorydescription29"] = {
		en = "Lockable Safe with Pin Code", 
		lv = "Aizstaisāms seifs ar pin kodu",
		ru = "Блокируемый сейф с PIN-кодом",
		pt = "Cofre com Código PIN"
	},
	["inventorydescription30"] = {
		en = "Fresh Clothes", 
		lv = "Svaigas Drēbes",
		ru = "Свежая одежда",
		pt = "Roupas Novas"
	},
	["inventorydescription31"] = {
		en = "Can be filled with water", 
		lv = "Var tikt piepildīts ar ūdeni",
		ru = "Можно наполнить водой",
		pt = "Pode ser enchida com água"
	},
	["inventorydescription32"] = {
		en = "Unusable item", 
		lv = "Neizmantojama manta",
		ru = "нелзя пользоваться",
		pt = "Item inutilizável"
	},
	["inventorydescription33"] = {
		en = "Unusable item", 
		lv = "Neizmantojama manta",
		ru = "нелзя пользоваться",
		pt = "Item inutilizável"
	},
	--[[
	["inventorydescription34"] = {
		en = "Game Currency - Tier 1", 
		lv = "Spēles valūta - Tier 1",
		ru = "",
		pt = "Moeda do Jogo - Nível 1"
	},
	["inventorydescription35"] = {
		en = "Game Currency - Tier 2", 
		lv = "Spēles valūta - Tier 2",
		ru = "",
		pt = "Moeda do Jogo - Nível 2"
	},
	["inventorydescription36"] = {
		en = "Game Currency - Tier 3", 
		lv = "Spēles valūta - Tier 3",
		ru = "",
		pt = "Moeda do Jogo - Nível 3"
	},
	]]--
	["inventorydescription37"] = {
		en = "Blows up locked storages", 
		lv = "Uzspridzina aizstaisāmus seifus",
		ru = "Взрывает заблокированные хранилища",
		pt = "Explode armazenamentos trancados"
	},
	["inventorydescription38"] = {
		en = "Want some high tier loot? Use this", 
		lv = "Gribi labas mantas? Izmanto šito",
		ru = "Хочешь хорощие вещи? Пользуйсья етим",
		pt = "Quer loot de alto nível? Use isto"
	},
	["inventorydescription39"] = {
		en = "Slots: 12", 
		lv = "Sloti: 12",
		ru = "Слоты: 12",
		pt = "Espaços: 12"
	},
	["inventorydescription40"] = {
		en = "Slots: 16", 
		lv = "Sloti: 16",
		ru = "Слоты: 16",
		pt = "Espaços: 16"
	},
	["inventorydescription41"] = {
		en = "Slots: 24", 
		lv = "Sloti: 24",
		ru = "Слоты: 24",
		pt = "Espaços: 24"
	},
	["inventorydescription42"] = {
		en = "Slots: 36", 
		lv = "Sloti: 36",
		ru = "Слоты: 36",
		pt = "Espaços: 36"
	},
	["inventorydescription43"] = {
		en = "Goggles for night", 
		lv = "Brilles priekš nakts",
		ru = "очки ночного видения",
		pt = "Óculos para noite"
	},
	["inventorydescription44"] = {
		en = "Goggles for pros", 
		lv = "Brilles priekš profiņiem",
		ru = "Очки для профессионалов",
		pt = "Óculos para profissionais"
	},
	["inventorydescription45"] = {
		en = "Shows your location", 
		lv = "Rāda tavu lokāciju",
		ru = "Показывает ваше местоположение",
		pt = "Mostra sua localização"
	},
	["inventorydescription46"] = {
		en = "Lights up wood", 
		lv = "Uzliesmo koku",
		ru = "поджигает дерево",
		pt = "Acende madeira"
	},
	["inventorydescription47"] = {
		en = "Shows time", 
		lv = "Rāda laiku",
		ru = "Показывает время",
		pt = "Mostra o tempo"
	},
	["inventorydescription48"] = {
		en = "For technical things", 
		lv = "Priekš Tehnikas",
		ru = "Для технических вещей",
		pt = "Para coisas técnicas"
	},
	["inventorydescription49"] = {
		en = "no use yet\nbut if you somehow got this, then you're a total cheater. :D", 
		lv = "nav mērķa vēl, bet ja tu dabuji šito mantu kaut kā, tad tu toč esi čīteris. :D",
		ru = "nav mērķa vēl, bet ja tu dabuji šito mantu kaut kā, tad tu toč esi čīteris. :D",
		pt = "ainda sem uso\nmas se você conseguiu isto de alguma forma, então você é um trapaceiro completo. :D"
	},
	["inventorydescription50"] = {
		en = "Find other survivors", 
		lv = "Atrodi citus izdzīvojošos",
		ru = "Найди других выживших",
		pt = "Encontrar outros sobreviventes"
	},
	["inventorydescription51"] = {
		en = "Slots: 48", 
		lv = "Sloti: 48",
		ru = "Слоты: 48",
		pt = "Espaços: 48"
	},
	["inventorydescription52"] = {
		en = "Capacity", 
		lv = "Vieta",
		ru = "Вместимость",
		pt = "Capacidade"
	},
	["inventorydescription53"] = {
		en = "Vehicle Damage", 
		lv = "Mašīnas Bojājumi",
		ru = "Повреждения машины",
		pt = "Dano do Veículo"
	},
	["inventorydescription54"] = {
		en = "Fire Rate", 
		lv = "Šaušanas Ātrums",
		ru = "Скорострельность",
		pt = "Taxa de Disparo"
	},
	["inventorydescription55"] = {
		en = "Very Fast", 
		lv = "Ļoti Ātrs",
		ru = "Очень быстро",
		pt = "Muito Rápida"
	},
	["inventorydescription56"] = {
		en = "Fast", 
		lv = "Ātrs",
		ru = "Быстро",
		pt = "Rápida"
	},
	["inventorydescription57"] = {
		en = "Medium", 
		lv = "Vidējs",
		ru = "Средний",
		pt = "Média"
	},
	["inventorydescription58"] = {
		en = "Slow", 
		lv = "Lēns",
		ru = "",
		pt = "Lenta"
	},
	["inventorydescription59"] = {
		en = "Very Slow", 
		lv = "Ļoti Lēns",
		ru = "Медленный",
		pt = "Muito Lenta"
	},
	["inventorydescription60"] = {
		en = "Statistics", 
		lv = "Statistika",
		ru = "Статистика",
		pt = "Estatísticas"
	},
	["inventorydescription61"] = {
		en = "Noise", 
		lv = "Skaļums",
		ru = "Шум",
		pt = "Ruído"
	},
	["inventorydescription62"] = {
		en = "Very High", 
		lv = "Ļoti Augsts",
		ru = "Очень высокий",
		pt = "Muito Alto"
	},
	["inventorydescription63"] = {
		en = "High", 
		lv = "Augsts",
		ru = "Высокая",
		pt = "Alto"
	},
	["inventorydescription64"] = {
		en = "Low", 
		lv = "Zems",
		ru = "Низкий",
		pt = "Baixo"
	},
	["inventorydescription65"] = {
		en = "Slots: 63", 
		lv = "Sloti: 63",
		ru = "Слоты: 63",
		pt = "Espaços: 63"
	},
	["inventorydescription66"] = {
		en = "Slots: 72", 
		lv = "Sloti: 72",
		ru = "Слоты: 72",
		pt = "Espaços: 72"
	},
	["inventorydescription67"] = {
		en = "Locks/Unlocks Vehicle", 
		lv = "Aizslēdz/Atslēdz Mašīnu",
		ru = "",
		pt = "Tranca/Destranca Veículo"
	},

	["deathtext1"] = {
		en = "You are dead!\nRespawning in", 
		lv = "Tu esi miris!\nAtdzīvosies pēc",
		ru = "Ты умер!\nВозрождение через",
		pt = "Você está morto!\nRenascendo em"
	},
	["deathtext2"] = {
		en = "seconds", 
		lv = "sekundēm",
		ru = "секунд",
		pt = "segundos"
	},
	["deathtext3"] = {
		en = "spawning...", 
		lv = "atdzīvojamies...",
		ru = "Возрождение...",
		pt = "nascendo..."
	},

	["deadplayertext1"] = {
		en = "is dead. Cause of death:", 
		lv = "ir miris. Nāves iemesls:",
		ru = "мертв. Причина смерти:",
		pt = "está morto. Causa da morte:"
	},
	["deadplayertext2"] = {
		en = "Unknown", 
		lv = "Nezināms",
		ru = "Неизвестный",
		pt = "Desconhecido"
	},
	["deadplayertext3"] = {
		en = "Time of death:", 
		lv = "Nāves laiks:",
		ru = "Время смерти:",
		pt = "Hora da morte:"
	},
	["deadanimaltext"] = {
		en = "This animal was killed around", 
		lv = "Šis dzīvnieks bija nogalināts ap",
		ru = "Это животное было убито в",
		pt = "Este animal foi morto por volta de"
	},
	["deadzombietext"] = {
		en = "Looks like it's finally dead. Estimated time of death:", 
		lv = "Izskatās ka beidzot viņš ir miris. Apmērais laiks no nāves:",
		ru = "Похоже, он наконец то мертв. Расчетное время смерти:",
		pt = "Parece que finalmente está morto. Hora estimada da morte:"
	},
	["zombiename"] = {
		en = "Zombie", 
		lv = "Zombijs",
		ru = "Зомби",
		pt = "Zumbi"
	},
	["clocktext"] = {
		en = "o'clock", 
		lv = "pūlkstens",
		ru = "часов",
		pt = "horas"
	},

	["helicrash"] = {
		en = "Helicrash", 
		lv = "Avarējis Heli",
		ru = "Упал вертолет",
		pt = "Queda de Helicóptero"
	},
	["hospitalbox"] = {
		en = "Hospitalbox", 
		lv = "Slimnīcaskaste",
		ru = "Медицинский ящик",
		pt = "Caixa Hospitalar"
	},

	["clientinfotext2"] = {
		en = "No mags left for this weapon!", 
		lv = "Nav vairāk ložu priekš šī ieroča!",
		ru = "Нет патронов!",
		pt = "Sem munição para esta arma!"
	},
	["clientinfotext3"] = {
		en = "You consumed", 
		lv = "Tu izlietoji",
		ru = "Вы потребляете",
		pt = "Você consumiu"
	},
	["clientinfotext4"] = {
		en = "You filled", 
		lv = "Tu piepildiji",
		ru = "Ты наполнил",
		pt = "Você encheu"
	},
	["clientinfotext5"] = {
		en = "You must be in water!", 
		lv = "Tev ir jābūt ūdenī!",
		ru = "Вы должны быть в воде!",
		pt = "Você deve estar na água!"
	},
	["clientinfotext6"] = {
		en = "You cooked", 
		lv = "Tu uzcepi",
		ru = "Вы приготовили",
		pt = "Você cozinhou"
	},
	["clientinfotext7"] = {
		en = "You don't have Radio Device!", 
		lv = "Tev nav Radio Ierīce!",
		ru = "У вас нет радио!",
		pt = "Você não tem Dispositivo de Rádio!"
	},
	["clientinfotext8"] = {
		en = "I'm too cold, I have to worm up!", 
		lv = "Man ir pārāk auksti, Man vajag uzsildīties!",
		ru = "Мне слишком холодно, мне нужно разогреться!",
		pt = "Estou com muito frio, preciso me aquecer!"
	},
	["clientinfotext9"] = {
		en = "I'm trembling, I need Painkiller!", 
		lv = "Es trīcu, Man vajag sāpes mazinātāju!",
		ru = "Я дрожу, мне нужны обезбаливаюшие!",
		pt = "Estou tremendo, preciso de Analgésico!"
	},
	["clientinfotext10"] = {
		en = "I'm starving, I need something to eat!", 
		lv = "Esmu izsalcis, Man vajag kaut ko paēst!",
		ru = "Я голоден, мне нужно что-нибудь поесть!",
		pt = "Estou morrendo de fome, preciso de algo para comer!"
	},
	["clientinfotext11"] = {
		en = "I'm thirsty, I need some water!", 
		lv = "Esmu izslāpis, Man vajag ūdeni!",
		ru = "Я хочу пить, мне нужна вода!",
		pt = "Estou com sede, preciso de água!"
	},
	["clientinfotext12"] = {
		en = "I'm bleeding, I have to use bandage!", 
		lv = "Es asiņoju, Man vajag bindi!",
		ru = "У меня кровотечение, мне нужен бинт!",
		pt = "Estou sangrando, preciso usar bandagem!"
	},
	["clientinfotext13"] = {
		en = "Fuel tank is full!", 
		lv = "Benzīn tanks ir pilns!",
		ru = "Топливный бак заполнен!",
		pt = "Tanque de combustível está cheio!"
	},
	["clientinfotext14"] = {
		en = "Gas filled into vehicle!", 
		lv = "Benzīns iepildīts mašīnā!",
		ru = "Топливо заполнено в транспортное средство!",
		pt = "Combustível colocado no veículo!"
	},
	["clientinfotext15"] = {
		en = "Loot is full!", 
		lv = "Loots ir pilns!",
		ru = "Тут нету места!",
		pt = "Loot está cheio!"
	},
	["clientinfotext16"] = {
		en = "Inventory is full!", 
		lv = "Inventārs ir pilns!",
		ru = "Инвентарь заполнен!",
		pt = "Inventário está cheio!"
	},
	["clientinfotext17"] = {
		en = "You can't do another thing while being in this action!", 
		lv = "Tu nevari darīt citu lietu kāmēr dari šo darbību!",
		ru = "Вы не можете делать другое дело, находясь в этом действии!",
		pt = "Você não pode fazer outra coisa enquanto está nesta ação!"
	},
	["clientinfotext18"] = {
		en = "You installed", 
		lv = "Tu ienstalēji",
		ru = "Ты установил",
		pt = "Você instalou"
	},
	["clientinfotext19"] = {
		en = "into vehicle", 
		lv = "mašīnā",
		ru = "в мащину",
		pt = "no veículo"
	},
	["clientinfotext20"] = {
		en = "You removed", 
		lv = "Tu noņēmi",
		ru = "Ты снял",
		pt = "Você removeu"
	},
	["clientinfotext21"] = {
		en = "from vehicle", 
		lv = "no mašīnas",
		ru = "с мащины",
		pt = "do veículo"
	},
	["clientinfotext22"] = {
		en = "Wait... You can't move while looting!", 
		lv = "Pagaidi... Tu nedrīksti kustēties kāmēr cel mantas!",
		ru = "Подождите ... Вы не можете двигаться!",
		pt = "Espere... Você não pode se mover enquanto pega loot!"
	},
	["clientinfotext23"] = {
		en = "Safe Installed", 
		lv = "Seifs Ienstalēts",
		ru = "Сейф установлен",
		pt = "Cofre Instalado"
	},
	["clientinfotext24"] = {
		en = "Access Granted", 
		lv = "Pieeja Atļauta",
		ru = "Доступ разрешен",
		pt = "Acesso Concedido"
	},
	["clientinfotext25"] = {
		en = "Access Denied", 
		lv = "Pieeja Neatļauta",
		ru = "Доступ закрыт",
		pt = "Acesso Negado"
	},
	["clientinfotext26"] = {
		en = "Placed", 
		lv = "Uzlikts",
		ru = "Поставлен",
		pt = "Colocado"
	},
	["clientinfotext27"] = {
		en = "Code Changed", 
		lv = "Kods Nomainīts",
		ru = "Код изменен ",
		pt = "Código Alterado"
	},
	["clientinfotext28"] = {
		en = "Airdrop Incoming!", 
		lv = "Airdrops Pienāk!",
		ru = "Входящий Airdrop!",
		pt = "Airdrop Chegando!"
	},
	["clientinfotext29"] = {
		en = "I'm too hot, I have to сщщд down!", 
		lv = "Man ir pārāk karsti, Man vajag nosildīties!",
		ru = "Мне слишком жарко, мне нужно остыть!",
		pt = "Estou com muito calor, preciso me resfriar!"
	},
	["clientinfotext30"] = {
		en = "Press 'K' to toggle the engine!", 
		lv = "Spied 'K' lai ieslēgtu/izslēgtu dzinēju!",
		ru = "Нажмите «K», чтобы включить двигатель!",
		pt = "Pressione 'K' para ligar/desligar o motor!"
	},
	["clientinfotext31"] = {
		en = "Fuel tank is empty!", 
		lv = "Benzīn bāka ir tukša!",
		ru = "Топливный бак пуст!",
		pt = "Tanque de combustível está vazio!"
	},
	["clientinfotext32"] = {
		en = "Rotor is missing!", 
		lv = "Turbīnas Rats pietrūkst!",
		ru = "Ротор отсутствует!",
		pt = "Rotor está faltando!"
	},
	["clientinfotext33"] = {
		en = "Engine missing!", 
		lv = "Dzinējs pietrūkst!",
		ru = "Двигатель отсутствует!",
		pt = "Motor está faltando!"
	},
	["clientinfotext34"] = {
		en = "Some Scrap Metal is missing!", 
		lv = "Metāllūžņi pietrūkst!",
		ru = "Некоторый металлолом отсутствует!",
		pt = "Falta Sucata!"
	},
	["clientinfotext35"] = {
		en = "Some Tires are missing!", 
		lv = "Dažas Riepas pietrūkst!",
		ru = "Некоторые шины отсутствуют!",
		pt = "Faltam Pneus!"
	},
	["clientinfotext36"] = {
		en = "Engine started!", 
		lv = "Dzinējs iedarbināts!",
		ru = "Двигатель запущен!",
		pt = "Motor ligado!"
	},
	["clientinfotext37"] = {
		en = "Engine stopped!", 
		lv = "Dzinējs izslēgts!",
		ru = "Двигатель остановлен!",
		pt = "Motor desligado!"
	},
	["clientinfotext38"] = {
		en = "is already in repair!", 
		lv = "tiek jau labots!",
		ru = "уже ремонтируется!",
		pt = "já está em reparo!"
	},
	["clientinfotext39"] = {
		en = "Started to repair", 
		lv = "Sāki labot",
		ru = "Начался ремонт",
		pt = "Começou a reparar"
	},
	["clientinfotext40"] = {
		en = "You repaired", 
		lv = "Tu salaboji",
		ru = "Вы отремонтировали",
		pt = "Você reparou"
	},
	["clientinfotext41"] = {
		en = "You can't chat that fast!", 
		lv = "Tu nevari čatot tik ātri!",
		ru = "Вы не можете так быстро общаться!",
		pt = "Você não pode conversar tão rápido!"
	},
	["clientinfotext42"] = {
		en = "Vehicle repair has been cancelled!", 
		lv = "Mašīnas labošana tika atcelta!",
		ru = "Ремонт автомобиля отменен!",
		pt = "Reparo do veículo foi cancelado!"
	},
	["clientinfotext43"] = {
		en = "You are muted!", 
		lv = "Tu esi nomutots!",
		ru = "Вы отключены!",
		pt = "Você está mutado!"
	},
	["clientinfotext44"] = {
		en = "You can't open/close that fast!", 
		lv = "Tu nevari atvērt/aizvērt tik ātri!",
		ru = "Вы не можете быстро открывать / закрывать это!",
		pt = "Você não pode abrir/fechar tão rápido!"
	},
	["menuclienttext1"] = {
		en = "Take", 
		lv = "Paņemt",
		ru = "Взять",
		pt = "Pegar"
	},
	["menuclienttext2"] = {
		en = "Gear", 
		lv = "Loots",
		ru = "Лут",
		pt = "Equipamento"
	},
	["menuclienttext3"] = {
		en = "Refill Gas", 
		lv = "Uzpildīt Benzīnu",
		ru = "Наполнить топливо",
		pt = "Reabastecer"
	},
	["menuclienttext4"] = {
		en = "Repair", 
		lv = "Salabot",
		ru = "Починить",
		pt = "Reparar"
	},
	["menuclienttext5"] = {
		en = "Install Parts", 
		lv = "Ienstalēt Detaļas",
		ru = "Установить детали",
		pt = "Instalar Peças"
	},
	["menuclienttext6"] = {
		en = "Remove Parts", 
		lv = "Noņemt Detaļas",
		ru = "Удалить детали",
		pt = "Remover Peças"
	},
	["menuclienttext7"] = {
		en = "Press 'J' to access the Gear!", 
		lv = "Spied 'J' lai atvērtu šo Lootu!",
		ru = "Нажмите «J», чтобы открыть!",
		pt = "Pressione 'J' para acessar o Equipamento!"
	},
	["menuclienttext8"] = {
		en = "Press 'J' to access the Safe!", 
		lv = "Spied 'J' lai atvērtu šo Seifu!",
		ru = "Нажмите «J», чтобы открыть сейф!",
		pt = "Pressione 'J' para acessar o Cofre!"
	},
	["menuclienttext9"] = {
		en = "Enter code to access the Safe!", 
		lv = "Ievadi kodu lai atvērtu šo Seifu!",
		ru = "Введите код",
		pt = "Digite o código para acessar o Cofre!"
	},
	["menuclienttext10"] = {
		en = "Press 'J' to access the Airdrop!", 
		lv = "Spied 'J' lai atvērtu šo Airdropu",
		ru = "Нажмите «J», чтобы открыть!",
		pt = "Pressione 'J' para acessar o Airdrop!"
	},
	["menuclienttext11"] = {
		en = "Airdrop", 
		lv = "Airdrops",
		ru = "Airdrop",
		pt = "Airdrop"
	},
	["menuclienttext12"] = {
		en = "Open", 
		lv = "Atvērt",
		ru = "Открыть",
		pt = "Abrir"
	},
	["menuclienttext13"] = {
		en = "Raided Safe", 
		lv = "Izreidots Seifs",
		ru = "Взломанный сейф",
		pt = "Cofre Saqueado"
	},
	["menuclienttext14"] = {
		en = "Remove Tent", 
		lv = "Noņemt Telti",
		ru = "Удалить палатку",
		pt = "Remover Barraca"
	},
	["menuclienttext15"] = {
		en = "Enter Code", 
		lv = "Ievadīt Kodu",
		ru = "Введите код",
		pt = "Digitar Código"
	},
	["menuclienttext16"] = {
		en = "Place", 
		lv = "Uzlikt",
		ru = "Поставить",
		pt = "Colocar"
	},
	["menuclienttext17"] = {
		en = "Change Code", 
		lv = "Nomainīt Kodu",
		ru = "Поменять код",
		pt = "Alterar Código"
	},
	["menuclienttext18"] = {
		en = "Remove Safe", 
		lv = "Noņemt Seifu",
		ru = "Убрать сейф",
		pt = "Remover Cofre"
	},
	["menuclienttext19"] = {
		en = "Give",
		lv = "Iedot",
		ru = "Дать",
		pt = "Dar"
	},
	["menuclienttext20"] = {
		en = "Check Body",
		lv = "Pārbaudīt Līķi",
		ru = "Проверить труп",
		pt = "Verificar Corpo"
	},
	["menuclienttext21"] = {
		en = "Bury Body",
		lv = "Noglabāt Līķi",
		ru = "Похоронить труп",
		pt = "Enterrar Corpo"
	},
	["menuclienttext22"] = {
		en = "Cook",
		lv = "Uzcept",
		ru = "Жарить",
		pt = "Cozinhar"
	},
	["menuclienttext23"] = {
		en = "Refill",
		lv = "Uzpildīt",
		ru = "Пополнение",
		pt = "Reabastecer"
	},
	["menuclienttext24"] = {
		en = "Remove",
		lv = "Noņemt",
		ru = "Убрать",
		pt = "Remover"
	},
	["menuclienttext25"] = {
		en = "REQUIRE:",
		lv = "VAJADZĪGS:",
		ru = "ТРЕБУЕТСЯ:",
		pt = "REQUER:"
	},
	["menuclienttext26"] = {
		en = "Gas Station",
		lv = "Gāzes Stacija",
		ru = "Бензоколонка",
		pt = "Posto de Gasolina"
	},
	["menuclienttext27"] = {
		en = "Water Station",
		lv = "Ūdens Stacija",
		ru = "Водная станция",
		pt = "Posto de Água"
	},
	["menuclienttext28"] = {
		en = "Fire Place",
		lv = "Ugunskurs",
		ru = "Костер",
		pt = "Fogueira"
	},
	["menuclienttext29"] = {
		en = "Item Pickup",
		lv = "Itemu Pacelšana",
		ru = "Перевозка предметов",
		pt = "Pegar Item"
	},
	["menuclienttext30"] = {
		en = "Press",
		lv = "Spied",
		ru = "Нажми",
		pt = "Pressione"
	},
	["menuclienttext31"] = {
		en = "to refill",
		lv = "lai uzpildītu",
		ru = "чтобы пополнять",
		pt = "para reabastecer"
	},
	["menuclienttext32"] = {
		en = "to remove",
		lv = "lai noņemtu",
		ru = "чтобы убрать",
		pt = "para remover"
	},
	["menuclienttext33"] = {
		en = "to cook",
		lv = "lai uzceptu",
		ru = "чтобы пожарить",
		pt = "para cozinhar"
	},
	["menuclienttext34"] = {
		en = "to pick this item up",
		lv = "lai paceltu šo itemu",
		ru = "чтобы поднять",
		pt = "para pegar este item"
	},
	["menuclienttext35"] = {
		en = "Press 'E' to detonate this mine!",
		lv = "Spied 'E' lai atmīnētu šo mīnu!",
		ru = "Нажмите «E», чтобы взорвать мину!",
		pt = "Pressione 'E' para detonar esta mina!"
	},
	["menuclienttext36"] = {
		en = "Detonate",
		lv = "Atmīnēt",
		ru = "Детонировать",
		pt = "Detonar"
	},
	["menuclienttext37"] = {
		en = "Mine",
		lv = "Mīna",
		ru = "Мина",
		pt = "Mina"
	},
	["menuclienttext38"] = {
		en = "You don't have that item!",
		lv = "Tev nav tā itema!",
		ru = "У вас нет этого предмета!",
		pt = "Você não tem esse item!"
	},

	["pingfailtext"] = {
		en = "Your ping is over 450!", 
		lv = "Tavs pings ir pāri 450!",
		ru = "Ваш пинг составляет более 450!",
		pt = "Seu ping está acima de 450!"
	},

	["waskilledtext1"] = {
		en = "was killed by", 
		lv = "tika nogalināts no",
		ru = "был убит",
		pt = "foi morto por"
	},
	["waskilledtext2"] = {
		en = "was killed", 
		lv = "tika nogalināts",
		ru = "был убит",
		pt = "foi morto"
	},

	["statname1"] = {
		en = "Zombies killed", 
		lv = "Nogalinātie zombiji",
		ru = "Зомби убито",
		pt = "Zumbis mortos"
	},
	["statname2"] = {
		en = "Headshots", 
		lv = "Galvā nogalināti",
		ru = "В голову",
		pt = "Tiros na Cabeça"
	},
	["statname3"] = {
		en = "Murders", 
		lv = "Slepkavības",
		ru = "Убийства",
		pt = "Assassinatos"
	},
	["statname4"] = {
		en = "Bandits killed", 
		lv = "Bandīti nogalināti",
		ru = "Бандиты убиты",
		pt = "Bandidos mortos"
	},
	["statname5"] = {
		en = "Blood", 
		lv = "Asinis",
		ru = "Кровь",
		pt = "Sangue"
	},
	["statname6"] = {
		en = "Temperature", 
		lv = "Temperatūra",
		ru = "Температура",
		pt = "Temperatura"
	},
	["statname7"] = {
		en = "Humanity", 
		lv = "Cilvēciba",
		ru = "Человечество",
		pt = "Humanidade"
	},
	["statname8"] = {
		en = "Alive time", 
		lv = "Dzīves laiks",
		ru = "Прожито",
		pt = "Tempo vivo"
	},
	["statname9"] = {
		en = "Ping", 
		lv = "Pings",
		ru = "Пинг",
		pt = "Ping"
	},
	["scoreboard1"] = {
		en = "Player", 
		lv = "Spēlētājs",
		ru = "Игрок",
		pt = "Jogador"
	},
	["scoreboard2"] = {
		en = "Players", 
		lv = "Spēlētāji",
		ru = "Игроки",
		pt = "Jogadores"
	},
	["scoreboard3"] = {
		en = "*Hold 'RMB' to toggle cursor", 
		lv = "*Turi 'RMB' lai ieslēgtu peli",
		ru = "* Удерживайте «RMB» для включения курсора",
		pt = "*Segure 'Botão Direito' para alternar cursor"
	},
	["scoreboard4"] = {
		en = " #", 
		lv = " #",
		ru = " №",
		pt = " #"
	},

	["newbiehelp1"] = {
		en = "Press 'F1' to create team", 
		lv = "Spied 'F1' lai izveidotu komandu",
		ru = "Нажмите «F1», чтобы создать команду",
		pt = "Pressione 'F1' para criar equipe"
	},
	["newbiehelp2"] = {
		en = "Press 'F2' to open settings panel", 
		lv = "Spied 'F2' lai atvērtu opcijas paneli",
		ru = "Нажмите «F2», чтобы открыть панель настроек",
		pt = "Pressione 'F2' para abrir painel de configurações"
	},
	["newbiehelp3"] = {
		en = "Press 'J' to open inventory", 
		lv = "Spied 'J' lai atvērtu inventāru",
		ru = "Нажмите «J», чтобы открыть инвентарь.",
		pt = "Pressione 'J' para abrir inventário"
	},
	["newbiehelp4"] = {
		en = "Press 'X' to global chat", 
		lv = "Spied 'X' lai čatotu globāliski",
		ru = "Нажмите «X» для глобального чата",
		pt = "Pressione 'X' para chat global"
	},
	["newbiehelp5"] = {
		en = "Press 'T' to local chat", 
		lv = "Spied 'T' lai čatotu vietējiem",
		ru = "Нажмите «T» для локального чата",
		pt = "Pressione 'T' para chat local"
	},
	["newbiehelp6"] = {
		en = "Press 'Y' to team chat", 
		lv = "Spied 'Y' lai čatotu komandai",
		ru = "Нажмите «Y» для чата с командой",
		pt = "Pressione 'Y' para chat da equipe"
	},
	["newbiehelp7"] = {
		en = "Press 'U' to radio chat (radio device required)", 
		lv = "Spied 'U' lai čatotu pa radio (radio ierīce nepieciešama)",
		ru = "Нажмите «U» для чата по радио",
		pt = "Pressione 'U' para chat de rádio (dispositivo de rádio necessário)"
	},
	["newbiehelp8"] = {
		en = "Press 'L' to prone", 
		lv = "Spied 'L' lai apgūltos",
		ru = "Нажмите «L», чтобы лечь ",
		pt = "Pressione 'L' para deitar"
	},
	["newbiehelp9"] = {
		en = "Press ',' to sit", 
		lv = "Spied ',' lai apsēstos ",
		ru = "Нажмите «,», чтобы сесть",
		pt = "Pressione ',' para sentar"
	},
	["newbiehelp10"] = {
		en = "Press '.' to show hands", 
		lv = "Spied '.' lai parādītu rokas",
		ru = "Нажмите '.' чтобы показывать руки",
		pt = "Pressione '.' para mostrar mãos"
	},
	["newbiehelp11"] = {
		en = "Press ';' to shout friendly", 
		lv = "Spied ';' lai bļautu draudzīgs",
		ru = "Нажмите ';' чтобы кричать дружелюбно",
		pt = "Pressione ';' para gritar amigável"
	},

	["hint1"] = {
		en = "Right click on 'GPS' to set a specific channel", 
		lv = "Uzpied otro peles pogu uz 'Navigācijas' lai nomainītu staciju",
		ru = "Щелкните правой кнопкой мыши на «GPS», чтобы установить определенный канал",
		pt = "Clique com o botão direito em 'GPS' para definir um canal específico"
	},
	["hint2"] = {
		en = "People in same team as you they will have green triangle on top of their head", 
		lv = "Cilvēki tajā pašā komanda kurā esi tu viņiem būs zaļš trīstūris virs viņu galvas",
		ru = "Люди в той же команде, что и вы, у них будет зеленый треугольник поверх головы",
		pt = "Pessoas na mesma equipe que você terão um triângulo verde em cima da cabeça"
	},
	["hint3"] = {
		en = "Press 'J' to access the Inventory", 
		lv = "Spied 'J' lai atvērtu Inventāru",
		ru = "Нажмите «J» для доступа к инвентарю",
		pt = "Pressione 'J' para acessar o Inventário"
	},
	["hint4"] = {
		en = "Different type of shops have their own benefits", 
		lv = "Katram veikala tipam ir savi labumi",
		ru = "У разных типов магазинов есть свои преимущества",
		pt = "Diferentes tipos de lojas têm seus próprios benefícios"
	},
	["hint5"] = {
		en = "To detonate Mine you must need Toolbox", 
		lv = "Lai atmīnētu Mīnu tev vajag Instrumentu Kasti",
		ru = "Для детонации мины вам понадобится инструменты",
		pt = "Para detonar Mina você precisa de Caixa de Ferramentas"
	},
	["hint6"] = {
		en = "Missions spawn once an hour and loot depends on online players", 
		lv = "Misijas parādās katru stundu un lūts atbilst uz pieslēgušiem spēlētājiem",
		ru = "Миссии появляются один раз в час, а добыча зависит от онлайн-игроков",
		pt = "Missões aparecem uma vez por hora e o loot depende dos jogadores online"
	},
	["hint7"] = {
		en = "WARNING: Be careful in shop areas, there is NO safe zone", 
		lv = "BRĪDINĀJUMS: Esi uzmanīgs pie veikaliem, tur NAV drošās zonas",
		ru = "ПРЕДУПРЕЖДЕНИЕ. Будьте осторожны в зонах магазина, нет безопасной зоны",
		pt = "AVISO: Tenha cuidado em áreas de loja, NÃO há zona segura"
	},
	["hint8"] = {
		en = "Use 'Heat Pack' to worm up", 
		lv = "Lieto 'Siltumu Paku' lai uzsildītos",
		ru = "Используйте «Heat Pack» для разогрева",
		pt = "Use 'Bolsa Térmica' para se aquecer"
	},
	["hint9"] = {
		en = "To install/desamble parts in vehicle you must need Toolbox", 
		lv = "Lai salabotu/izjauktu mašīnu tev vajag Instrumentu Kasti",
		ru = "Чтобы установить / деамплировать детали в автомобиле, вам понадобится ящик инструментов",
		pt = "Para instalar/desmontar peças no veículo você precisa de Caixa de Ferramentas"
	},
	["hint10"] = {
		en = "Player name tag color depends on their humanity", 
		lv = "Spēlētāja vārdu krāsa atbilst viņu cilvēcībai",
		ru = "Цвет тега имени игрока зависит от их гуманности",
		pt = "A cor da tag do nome do jogador depende da sua humanidade"
	},
	["hint11"] = {
		en = "If you have any bug reports or want to suggest something you can do so by typing /report in chat",
		lv = "Ja tu esi atradis kādu bugu vai gribi ieteikt kaut ko, tu vari to izdarīt rakstot /report čatā",
		ru = "Если у вас есть отчеты об ошибках или вы хотите предложить что-то, вы можете сделать это, набрав / сообщив в чате",
		pt = "Se você tiver relatórios de bugs ou quiser sugerir algo, pode fazê-lo digitando /report no chat"
	},

	["backpack1"] = {
		en = "Coyote Backpack", 
		lv = "Kojotu Mugursoma",
		ru = "Рюкзак койот",
		pt = "Mochila Coyote"
	},
	["backpack2"] = {
		en = "Boulder Backpack", 
		lv = "Laukakmeņu Mugursoma",
		ru = "Рюкзак колхоз",
		pt = "Mochila Boulder"
	},
	["backpack3"] = {
		en = "Hunting Backpack", 
		lv = "Medību Mugursoma",
		ru = "Рюкзак охотника",
		pt = "Mochila de Caça"
	},
	["backpack4"] = {
		en = "Leather Sack", 
		lv = "Ādas Maiss",
		ru = "Кожаный мешок",
		pt = "Saco de Couro"
	},
	["backpack5"] = {
		en = "Dry Bag", 
		lv = "Sausā Mugursoma",
		ru = "Сухой мешок",
		pt = "Bolsa Seca"
	},
	["backpack6"] = {
		en = "Tortilla Backpack", 
		lv = "Tortillas Mugursoma",
		ru = "Рюкзак Tortilla",
		pt = "Mochila Tortilla"
	},
	["backpack7"] = {
		en = "Alice Backpack", 
		lv = "Alisa Mugursoma",
		ru = "Элис Рюкзак",
		pt = "Mochila Alice"
	},


	["helmet1"] = {		
		en = "Special Forces Helmet", 		
		lv = "Īpašo Spēku Ķivere",		
		ru = "Шлем спецназа",
		pt = "Capacete de Forças Especiais"
	},		
	["helmet2"] = {		
		en = "Military Helmet", 		
		lv = "Militārā Ķivere",		
		ru = "Военный шлем",
		pt = "Capacete Militar"
	},		
	["helmet3"] = {		
		en = "Motorcycle Helmet", 		
		lv = "Motorciklu Ķivere",		
		ru = "Мотоциклетный шлем",
		pt = "Capacete de Motocicleta"
	},		
	["helmet4"] = {		
		en = "SWAT Helmet", 		
		lv = "SWAT Ķivere",		
		ru = "Шлем SWAT",
		pt = "Capacete SWAT"
	},		
	["helmet5"] = {		
		en = "Welder Helmet", 		
		lv = "Metinātāja Ķivere",		
		ru = "Шлем сварщика",
		pt = "Capacete de Soldador"
	},		
	["helmet6"] = {		
		en = "Cap", 		
		lv = "Cepure",		
		ru = "Кепка",
		pt = "Boné"
	},		
	["helmet7"] = {		
		en = "Ushanka", 		
		lv = "Ushanka",		
		ru = "Ушанка",
		pt = "Ushanka"
	},		
		
	["vest1"] = {		
		en = "Police Vest", 		
		lv = "Policijas Veste",		
		ru = "Полицейский жилет",
		pt = "Colete Policial"
	},		
	["vest2"] = {		
		en = "Military Vest", 		
		lv = "Militārā Veste",		
		ru = "Военный жилет",
		pt = "Colete Militar"
	},


	["inventoryactiontext22"] = {
		en = "Wear Helmet", 
		lv = "Uzvilkt Ķiveri",
		ru = "Надеть шлем",
		pt = "Usar Capacete"
	},
	["inventoryactiontext23"] = {
		en = "Wear Vest", 
		lv = "Uzvilkt Vesti",
		ru = "Надеть жилет",
		pt = "Usar Colete"
	},


	["inventorytext2"] = {
		en = "* You can also move items by double clicking on them", 
		lv = "* Tu arī vari divreiz uzpiest uz itēma lai pārnestu",
		ru = "* Вы можете перемещать объекты, дважды щелкая",
		pt = "* Você também pode mover itens clicando duas vezes neles"
	},

	["inventorydescription68"] = {
		en = "Protects your head", 
		lv = "Aizsargā tavu galvu",
		ru = "Защищает голову",
		pt = "Protege sua cabeça"
	},
	["inventorydescription69"] = {
		en = "Protects your chest", 
		lv = "Aizsargā tavu vēdaru",
		ru = "Защищает грудь",
		pt = "Protege seu peito"
	},
	["inventorydescription70"] = {
		en = "Be stylish", 
		lv = "Esi modīgs",
		ru = "Будьте стильными",
		pt = "Seja estiloso"
	},

	["inventorycolumntext1"] = {
		en = "Primary Weapon:", 
		lv = "Primārais Ierocis:",
		ru = "Первичное оружие:",
		pt = "Arma Primária:"
	},
	["inventorycolumntext2"] = {
		en = "Secondary Weapon:", 
		lv = "Sekundārais Ierocis:",
		ru = "Вторичное оружие:",
		pt = "Arma Secundária:"
	},
	["inventorycolumntext3"] = {
		en = "Specially Weapon:", 
		lv = "Speciālais Ierocis:",
		ru = "Специальное оружие:",
		pt = "Arma Especial:"
	},
	["inventorycolumntext4"] = {
		en = "Ammo:", 
		lv = "Patronas:",
		ru = "Боеприпасы:",
		pt = "Munição:"
	},
	["inventorycolumntext5"] = {
		en = "Food:", 
		lv = "Ēdiens:",
		ru = "Еда:",
		pt = "Comida:"
	},
	["inventorycolumntext6"] = {
		en = "Medicaments:", 
		lv = "Medikamenti:",
		ru = "Медикаменты:",
		pt = "Medicamentos:"
	},
	["inventorycolumntext7"] = {
		en = "Items:", 
		lv = "Mantas:",
		ru = "Предметы:",
		pt = "Itens:"
	},
	["inventorycolumntext8"] = {
		en = "Equipment:", 
		lv = "Ekipējums:",
		ru = "Оборудование:",
		pt = "Equipamento:"
	},
	["inventorycolumntext9"] = {
		en = "Toolbelt:", 
		lv = "Rīki:",
		ru = "Пояс с инструментами:",
		pt = "Cinturão de Ferramentas:"
	},

	["clientinfotext45"] = {
		en = "You already have equipped this helmet!", 
		lv = "Tev jau ir uzvilkta šī ķivere!",
		ru = "Вы уже одели этот шлем!",
		pt = "Você já equipou este capacete!"
	},

	["clothing7"] = {
		en = "Soldier Clothing", 
		lv = "Karavīra Drēbes",
		ru = "Одежда солдата",
		pt = "Roupa de Soldado"
	},
	["clothing8"] = {
		en = "Police Clothing", 
		lv = "Policiju Drēbes",
		ru = "Полицейская одежда",
		pt = "Roupa Policial"
	},
	["clothing9"] = {
		en = "Medic Clothing", 
		lv = "Ārsta Drēbes",
		ru = "Медицинская одежда",
		pt = "Roupa de Médico"
	},

	["clientinfotext0"] = {
		en = "You need to free up ", 
		lv = "Tev vajag atbrīvot ",
		ru = "Вам нужно освободить",
		pt = "Você precisa liberar "
	},["clientinfotext1"] = {
		en = " slots to equip this", 
		lv = " slotus lai uzvilktu šo",
		ru = " слоты для оснащения",
		pt = " espaços para equipar isto"
	},
}

function getPlayerLanguage(player)
	if (not player) then outputDebugString("Player expected got '"..tostring(player).."'",1,255,0,0) return; end
	if (getElementData(player,"language")) then
		return getElementData(player,"language");
	else
		return "en";
	end
	return false;
end

function getLanguageTextClient(text)
	if (not text) then outputDebugString("String expected got '"..tostring(text).."'",1,255,0,0) return; end
	local translationText = translation[text];
	if (translationText) then
		return translationText[getPlayerLanguage(localPlayer)];
	end
	return text;
end

function getLanguageTextServer(text,player)
	if (not text) then outputDebugString("String expected got '"..tostring(text).."'",1,255,0,0) return; end
	if (not text) then outputDebugString("Player expected got '"..tostring(player).."'",1,255,0,0) return; end
	local translationText = translation[text];
	if (translationText) then
		return translationText[getPlayerLanguage(player)];
	end
	return text;
end