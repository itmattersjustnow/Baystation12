
/datum/computer_file/report/recipient/medical
	logo = "\[bluelogo\]"
	form_name = "NT-MED-00"

/datum/computer_file/report/recipient/medical/checkup
	form_name = "NT-MED-013b"
	title = "Контрольный Список Медицинского Осмотра"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/medical/checkup/generate_fields()
	add_field(/datum/report_field/text_label/instruction, "Для проведения регулярного медицинского осмотра вам понадобится следующее оборудование: стетоскоп, анализатор здоровья, фонарик.")
	add_field(/datum/report_field/people/from_manifest, "Пациент")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/simple_text, "Проверить пульс", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Проверить кровяное давление", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Проверить наличие шумов в сердце", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Проверить наличие шумов в легких", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Спросить пациента, занимается ли пациент спортом", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Спросить пациента, курит ли пациент; если да, как часто", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Проверить реакцию зрачков на свет", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Спросить пациента, не подвергался ли пациент недавно радиационному облучению", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/simple_text, "Спросить пациента о недавно перенесенных болезнях", "НЕ ПРОВЕРЕНО")
	add_field(/datum/report_field/pencode_text, "Другие заметки")
	add_field(/datum/report_field/signature, "Подпись врача")
	set_access(access_edit = access_medical_equip)
