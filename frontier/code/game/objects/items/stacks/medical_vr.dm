/obj/item/stack/medical/advanced
	icon = 'frontier/icons/obj/medical_kits_vr.dmi'

/obj/item/stack/medical/advanced/Initialize()
	. = ..()
	update_icon()

/obj/item/stack/medical/advanced/update_icon()
	switch(amount)
		if(1)
			icon_state = initial(icon_state)
		if(2)
			icon_state = "[initial(icon_state)]_2"
		if(3)
			icon_state = "[initial(icon_state)]_3"
		if(4)
			icon_state = "[initial(icon_state)]_4"
		if(5)
			icon_state = "[initial(icon_state)]_5"
		if(6)
			icon_state = "[initial(icon_state)]_6"
		if(7)
			icon_state = "[initial(icon_state)]_7"
		else
			icon_state = "[initial(icon_state)]_10"

/obj/item/stack/medical/bruise_pack
	icon = 'frontier/icons/obj/medical_kits_vr.dmi'

/obj/item/stack/medical/bruise_pack/Initialize()
	. = ..()
	update_icon()

/obj/item/stack/medical/bruise_pack/update_icon()
	switch(amount)
		if(1)
			icon_state = initial(icon_state)
		if(2)
			icon_state = "[initial(icon_state)]_2"
		if(3)
			icon_state = "[initial(icon_state)]_3"
		if(4)
			icon_state = "[initial(icon_state)]_4"
		if(5)
			icon_state = "[initial(icon_state)]_5"
		if(6)
			icon_state = "[initial(icon_state)]_6"
		if(7)
			icon_state = "[initial(icon_state)]_7"
		if(8)
			icon_state = "[initial(icon_state)]_8"
		if(9)
			icon_state = "[initial(icon_state)]_9"
		else
			icon_state = "[initial(icon_state)]_10"

/obj/item/stack/medical/ointment
	icon = 'frontier/icons/obj/medical_kits_vr.dmi'

/obj/item/stack/medical/ointment/Initialize()
	. = ..()
	update_icon()

/obj/item/stack/medical/ointment/update_icon()
	switch(amount)
		if(1 to 2)
			icon_state = initial(icon_state)
		if(3 to 4)
			icon_state = "[initial(icon_state)]_4"
		if(5 to 6)
			icon_state = "[initial(icon_state)]_6"
		if(7 to 8)
			icon_state = "[initial(icon_state)]_8"
		else
			icon_state = "[initial(icon_state)]_10"