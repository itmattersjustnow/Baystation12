
/datum/computer_file/report/recipient/crew_transfer
	form_name = "R-CTA-01"
	title = "Заявление на перевод"
	logo = "\[bluelogo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/crew_transfer/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Кадров")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Глава Персонала/Капитан)")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Заявитель)", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/simple_text, "Текущая должность")
	add_field(/datum/report_field/simple_text, "Запрашиваемая должность")
	add_field(/datum/report_field/pencode_text, "Причина заявления")
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати.")
	add_field(/datum/report_field/signature, "Подпись (Заявитель)")
	xo_fields += add_field(/datum/report_field/signature, "Подпись (Глава Персонала/Капитан)")
	xo_fields += add_field(/datum/report_field/number, "Количество сотрудников, занимающих нынешнюю должность")
	xo_fields += add_field(/datum/report_field/number, "Количество сотрудников, занимающих запрашиваемую должность")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено?")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/access_modification
	form_name = "R-AMA-02"
	title = "Заявление на Изменение Доступа"
	logo = "\[bluelogo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/access_modification/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Кадров")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Глава Персонала/Капитан)")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Заявитель)", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/simple_text, "Текущая должность")
	add_field(/datum/report_field/simple_text, "Запрашиваемый доступ")
	add_field(/datum/report_field/pencode_text, "Причина заявления")
	add_field(/datum/report_field/simple_text, "Срок изменения доступа")
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати.")
	add_field(/datum/report_field/signature, "Подпись (Заявитель)")
	xo_fields += add_field(/datum/report_field/signature, "Подпись (Глава Персонала/Капитан)")
	xo_fields += add_field(/datum/report_field/number, "Количество сотрудников, занимающих текущую должность")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено?")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/fire
	form_name = "R-D-01"
	title = "Прекращение трудового контракта NT"
	logo = "\[bluelogo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/fire/generate_fields()
	..()
	var/list/xo_fields = list()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Кадров")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Глава Персонала/Капитан)")
	add_field(/datum/report_field/people/from_manifest, "Полное имя (Увольняемый)", required = 1)
	add_field(/datum/report_field/date, "Дата заполнения")
	add_field(/datum/report_field/time, "Время заполнения")
	add_field(/datum/report_field/simple_text, "Текущая должность")
	add_field(/datum/report_field/pencode_text, "Причина прекращения трудового контракта")
	add_field(/datum/report_field/text_label/instruction, "Документ является недействительным в случае отсутствия подписи или печати Главы Персонала или Капитана.")
	xo_fields += add_field(/datum/report_field/signature, "Подпись (Глава Персонала/Капитан)")
	xo_fields += add_field(/datum/report_field/number, "Количество сотрудников, занимающих текущую должность")
	xo_fields += add_field(/datum/report_field/options/yes_no, "Одобрено?")
	for(var/datum/report_field/field in xo_fields)
		field.set_access(access_edit = access_hop)
