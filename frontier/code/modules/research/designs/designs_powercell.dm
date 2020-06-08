/datum/design/item/powercell/weapon/AssembleDesignName()
	name = "Weapon cell model ([item_name])"

/datum/design/item/powercell/weapon/small
	name = "small"
	id = "weapon_cell_small"
	req_tech = list(TECH_POWER = 1)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 5)
	build_path = /obj/item/weapon/cell/device/weapon/small
	sort_string = "DAAAG"

/datum/design/item/powercell/weapon/normal
	name = "normal"
	id = "weapon_cell_normal"
	req_tech = list(TECH_POWER = 1)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 5)
	build_path = /obj/item/weapon/cell/device/weapon/normal
	sort_string = "DAAAH"

/datum/design/item/powercell/weapon/big
	name = "big"
	id = "weapon_cell_big"
	req_tech = list(TECH_POWER = 1)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 5)
	build_path = /obj/item/weapon/cell/device/weapon/big
	sort_string = "DAAAI"

/datum/design/item/powercell/weapon/small/extended
	name = "small advanced"
	id = "weapon_cell_small_advanced"
	req_tech = list(TECH_POWER = 2)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 6)
	build_path = /obj/item/weapon/cell/device/weapon/small/extended
	sort_string = "DAAAJ"

/datum/design/item/powercell/weapon/normal/extended
	name = "normal advanced"
	id = "weapon_cell_normal_advanced"
	req_tech = list(TECH_POWER = 2)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 6)
	build_path = /obj/item/weapon/cell/device/weapon/normal/extended
	sort_string = "DAAAK"

/datum/design/item/powercell/weapon/big/extended
	name = "big advanced"
	id = "weapon_cell_big_advanced"
	req_tech = list(TECH_POWER = 2)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 6)
	build_path = /obj/item/weapon/cell/device/weapon/big/extended
	sort_string = "DAAAL"

/datum/design/item/powercell/weapon
	name = "hyper"
	id = "weapon_cell_hyper"
	req_tech = list(TECH_POWER = 5, TECH_MATERIAL = 4)
	materials = list(MATERIAL_STEEL = 70, MATERIAL_GOLD = 30, MATERIAL_SILVER = 30, MATERIAL_GLASS = 6, MATERIAL_ALUMINIUM = 5)
	build_path = /obj/item/weapon/cell/weapon
	sort_string = "DAAAM"