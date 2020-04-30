/obj/item/weapon/reagent_containers/food/drinks/cans/revo
	name = "\improper Revo AlcoEnergy"
	desc = "A low-alcohol energy drink made by a Terran company 'Novyje Produkty'. WARNING! Consuming leads to addiction, cancer, DNA mutation, violation of internal organs, and can lead to death if consumed in large quantities."
	icon = 'frontier/icons/obj/drinks.dmi'
	icon_state = "revo_can"
	center_of_mass = "x=16;y=10"

/obj/item/weapon/reagent_containers/food/drinks/cans/revo/Initialize()
	. = ..()
	reagents.add_reagent(/datum/reagent/ethanol/thirteenloko/revo, 30)