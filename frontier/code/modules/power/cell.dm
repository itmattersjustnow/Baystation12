/obj/item/weapon/cell/device/weapon/small
    name = "small weapon energy cell"
    desc = "A small power cell designed to power low-energy weapon."
    icon_state = "device"
    w_class = ITEM_SIZE_SMALL
    maxcharge = 100
    origin_tech = list(TECH_POWER = 1)
    matter = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 5)

/obj/item/weapon/cell/device/weapon/normal
    name = "weapon energy cell"
    desc = "A power cell designed to power energy weapon."
    icon_state = "device"
    w_class = ITEM_SIZE_SMALL
    maxcharge = 200
    origin_tech = list(TECH_POWER = 1)
    matter = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 5)

/obj/item/weapon/cell/device/weapon/big
    name = "big weapon energy cell"
    desc = "A big power cell designed to power high-energy weapon."
    icon_state = "device"
    w_class = ITEM_SIZE_SMALL
    maxcharge = 300
    origin_tech = list(TECH_POWER = 1)
    matter = list(MATERIAL_STEEL = 70, MATERIAL_GLASS = 5)

/obj/item/weapon/cell/device/weapon/small/extended
    name = "advanced small weapon energy cell"
    icon_state = "device"
    maxcharge = 200
    origin_tech = list(TECH_POWER = 2)

/obj/item/weapon/cell/device/weapon/normal/extended
    name = "advanced weapon energy cell"
    icon_state = "device"
    maxcharge = 400
    origin_tech = list(TECH_POWER = 2)

/obj/item/weapon/cell/device/weapon/big/extended
    name = "advanced big weapon energy cell"
    icon_state = "device"
    maxcharge = 600
    origin_tech = list(TECH_POWER = 2)

/obj/item/weapon/cell/weapon
    name = "hyper energy cell"
    desc = "A rechargable electrochemical power cell."
    icon = 'icons/obj/power.dmi'
    icon_state = "cell"
    item_state = "cell"
    force = 5.0
    throwforce = 5.0
    throw_speed = 3
    throw_range = 5
    w_class = ITEM_SIZE_NORMAL
    maxcharge = 1000
    origin_tech = list(TECH_POWER = 5, TECH_MATERIAL = 4)
    matter = list(MATERIAL_STEEL = 700, MATERIAL_GLASS = 50, MATERIAL_PLASTIC = 20)
