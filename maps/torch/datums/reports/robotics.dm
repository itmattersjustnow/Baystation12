/datum/computer_file/report/recipient/borging
	form_name = "NN-CC-09"
	title = "Контракт на Киборгизацию"
	logo = "\[bluelogo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/borging/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Кадров")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Глава Персонала/Капитан)")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Субъект)", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/text_label/instruction, "Я, нижеподписавшийся Субъект, настоящим соглашаюсь добровольно подвергнуться процедуре лоботизации с намерением киборгизации или ассимиляции ИИ, и мне известны все последствия такого решения. Я также понимаю, что эта процедура может быть необратимой, и что мой трудовой контракт будет расторгнут.")
	add_field(/datum/report_field/signature, "Подпись Субъекта")
	xo_fields += add_field(/datum/report_field/signature, "Подпись Главы Персонала/Капитана")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено?")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)
