
/datum/computer_file/report/recipient/sec
	logo = "\[ntlogo\]"

/datum/computer_file/report/recipient/sec/New()
	..()
	set_access(access_security)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/sec/investigation
	form_name = "NT-SEC-43"
	title = "Отчет о Расследовании"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/investigation/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Служба Безопасности")
	add_field(/datum/report_field/text_label/instruction, "Только для служебного использования.")
	add_field(/datum/report_field/people/from_manifest, "Полное имя")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/simple_text, "Наименование дела")
	add_field(/datum/report_field/pencode_text, "Основная информация")
	add_field(/datum/report_field/pencode_text, "Наблюдения")
	add_field(/datum/report_field/signature, "Подпись")
	set_access(access_edit = access_security)

/datum/computer_file/report/recipient/sec/incident
	form_name = "NT-SEC-12"
	title = "Служба Безопасности: Отчет о Происшествии"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/incident/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Служба Безопасности")
	add_field(/datum/report_field/text_label/instruction, "Заполняется дежурным офицером. Отчет должен быть подписан и представлен Главе Службы Безопасности до окончания смены!")
	add_field(/datum/report_field/people/from_manifest, "Имя дежурного офицера")
	add_field(/datum/report_field/simple_text, "Тип происшествия")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время происшествия")
	add_field(/datum/report_field/people/list_from_manifest, "Офицеры, которые также были на месте происшествия")
	add_field(/datum/report_field/simple_text, "Местоположение")
	add_field(/datum/report_field/text_label/instruction, "(Ж-Жертва, П-Подозреваемый, С-Свидетель, Пр-Пропавший, A-Арестованный, М-Мертвец)")
	add_field(/datum/report_field/pencode_text, "Персонал, вовлеченный в происшествие")
	add_field(/datum/report_field/text_label/instruction, "(П-Поврежденный, У-Улика, Пр-Потерянный, В-Восстановленный, Ук-Украденный)")
	add_field(/datum/report_field/pencode_text, "Описание вещей/имущества")
	add_field(/datum/report_field/pencode_text, "Описание происшествия")
	add_field(/datum/report_field/signature, "Подпись дежурного офицера")
	set_access(access_edit = access_security)

/datum/computer_file/report/recipient/sec/evidence
	form_name = "NT-SEC-02b"
	title = "Отчет об Уликах и Имуществе"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sec/evidence/generate_fields()
	..()
	var/datum/report_field/temp_field
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Служба Безопасности")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/people/from_manifest, "Конфисковано у (кого из персонала)")
	add_field(/datum/report_field/pencode_text, "Список предметов, изъятых в качестве улик")
	set_access(access_edit = access_security)
	temp_field = add_field(/datum/report_field/signature, "Подпись Смотрителя")
	temp_field.set_access(access_edit = list(access_security, access_armory))
	temp_field = add_field(/datum/report_field/signature, "Подпись Следователя")
	temp_field.set_access(access_edit = list(access_security, access_forensics_lockers))
