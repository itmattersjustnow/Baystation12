/client/proc/cmd_admin_check_player_logs(mob/living/M as mob in SSmobs.mob_list)
	set category = "Admin"
	set name = "Check Player Attack Logs"
	set desc = "Check a player's attack logs."

//Views specific attack logs belonging to one player.
	var/dat = "<B>[M]'s Attack Log:<HR></B>"
	dat += "<b>Viewing attack logs of [M]</b> - (Played by ([key_name(M)]).<br>"
	if(M.mind)
		dat += "<b>Current Antag?:</b> [(M.mind.special_role)?"Yes":"No"]<br>"
	dat += "<br><b>Note:</b> This is arranged from earliest to latest. <br><br>"


	if(!isemptylist(M.attack_logs_))
		dat += "<fieldset style='border: 2px solid white; display: inline'>"
		for(var/l in M.attack_logs_)
			dat += "[l]<br>"

		dat += "</fieldset>"

	else
		dat += "<i>No attack logs found for [M].</i>"

	var/datum/browser/popup = new(usr, "admin_attack_log", "[src]", 650, 650, src)
	popup.set_content(jointext(dat,null))
	popup.open()

	onclose(usr, "admin_attack_log")

	SSstatistics.add_field_details("admin_verb","PL") //If you are copy-pasting this, ensure the 2nd parameter is unique to the new proc!