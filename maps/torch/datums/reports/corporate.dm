

/datum/computer_file/report/recipient/corp
	logo = "\[ntlogo\]"

/datum/computer_file/report/recipient/corp/generate_fields()
	..()
	add_field(/datum/report_field/simple_text, "Судно", GLOB.using_map.station_name)
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/simple_text, "Индекс")


/datum/computer_file/report/recipient/corp/memo/generate_fields()
	..()
	add_field(/datum/report_field/simple_text, "Тема")
	add_field(/datum/report_field/pencode_text, "Содержание")
	add_field(/datum/report_field/signature, "Подпись ответственного исполнителя")
	add_field(/datum/report_field/options/yes_no, "Одобрено?")

/datum/computer_file/report/recipient/corp/memo/internal
	form_name = "HR-NTCO-04a"
	title = "Внутренний Меморандум"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/memo/internal/New()
	..()
	set_access(access_nanotrasen, access_nanotrasen)

/datum/computer_file/report/recipient/corp/memo/external
	form_name = "HR-NTCO-04b"
	title = "Вневедомственный Меморандум"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/memo/external/New()
	..()
	set_access(access_edit = access_nanotrasen)

//No access restrictions for easier use.
/datum/computer_file/report/recipient/corp/sales
	form_name = "HR-NTCO-2192"
	title = "Корпоративный Договор Купли-Продажи и Квитанция"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/sales/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "Информация о Продукте")
	add_field(/datum/report_field/simple_text, "Наименование Продукта")
	add_field(/datum/report_field/simple_text, "Вид Продукта")
	add_field(/datum/report_field/number, "Себестоимость Единицы Продукта (T)")
	add_field(/datum/report_field/number, "Запрошено Единиц Продукта")
	add_field(/datum/report_field/number, "Общая Стоимость (T)")
	add_field(/datum/report_field/text_label/header, "Информация о Продавце")
	add_field(/datum/report_field/text_label/instruction, "'Покупатель' не имеет права возвращать проданные ему единицы продукции для компенсации стоимости в талерах, однако, имеет право обменять проданный ему продукт на идентичный продукт или продукт равной материальной стоимости. 'Продавец' соглашается приложить все усилия для ремонта или замены любых продуктов или частей продуктов, которые не могут быть использованы по назначению из-за неисправности или производственной ошибки (брака), но не из-за ущерба, причененного пользователем.")
	add_field(/datum/report_field/people/from_manifest, "Полное имя")
	add_field(/datum/report_field/signature, "Подпись")
	add_field(/datum/report_field/options/yes_no, "Одобрено?")

/datum/computer_file/report/recipient/corp/payout
	form_name = "HR-NTCO-03c"
	title = "Запрос на Выплату для Ближайших Родственников"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/payout/generate_fields()
	..()
	add_field(/datum/report_field/people/from_manifest, "Данный документ разрешает выплату оставшегося оклада сотрудника:")
	add_field(/datum/report_field/pencode_text, "Помимо полной выплаты оставшихся личных активов: (Имущество, стоимость в талерах)")
	add_field(/datum/report_field/pencode_text, "Включая личные вещи")
	add_field(/datum/report_field/text_label, "Должно быть немедленно отправлено ближайшим родственникам сотрудника.")
	add_field(/datum/report_field/signature, "Подпись")
	add_field(/datum/report_field/options/yes_no, "Одобрено?")
	set_access(access_edit = access_nanotrasen)
/*
/datum/computer_file/report/recipient/corp/fire
	form_name = "C-0102"
	title = "Corporate Employment Termination Form"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/fire/New()
	..()
	set_access(access_heads, access_heads)
	set_access(access_nanotrasen, override = 0)

/datum/computer_file/report/recipient/corp/fire/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "Notice of Termination of Employment")
	add_field(/datum/report_field/people/from_manifest, "Name")
	add_field(/datum/report_field/number, "Age")
	add_field(/datum/report_field/simple_text, "Position")
	add_field(/datum/report_field/pencode_text, "Reason for Termination")
	add_field(/datum/report_field/signature, "Authorized by")
	add_field(/datum/report_field/text_label/instruction, "Please attach employment records alongside notice of termination.")
*/
/datum/computer_file/report/recipient/corp/incident/New()
	..()
	set_access(access_edit = access_nanotrasen)

/datum/computer_file/report/recipient/corp/incident/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "Краткое изложение Инцидента")
	add_field(/datum/report_field/pencode_text, "Подробное описание Инцидента")

/datum/computer_file/report/recipient/corp/incident/proc/add_signatures()
	add_field(/datum/report_field/signature, "Подпись")
	add_field(/datum/report_field/signature, "Подпись (подписи) свидетеля (свидетелей)")
	add_field(/datum/report_field/options/yes_no, "Одобрено?")

/datum/computer_file/report/recipient/corp/incident/ship
	form_name = "IA-NTCO-01"
	title = "Рапорт об Инциденте на Судне"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/incident/ship/generate_fields()
	..()
	add_field(/datum/report_field/pencode_text, "Вовлеченные департаменты")
	add_signatures()
/*
/datum/computer_file/report/recipient/corp/volunteer
	form_name = "C-1443"
	title = "Corporate Test Subject Volunteer Form"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/volunteer/generate_fields()
	..()
	var/list/temp_fields = list()
	add_field(/datum/report_field/people/from_manifest, "Name of Volunteer")
	add_field(/datum/report_field/simple_text, "Intended Procedure(s)")
	add_field(/datum/report_field/simple_text, "Compensation for Volunteer: (if any)")
	add_field(/datum/report_field/people/list_from_manifest, "Handling Researcher(s)")
	add_field(/datum/report_field/text_label/instruction, "By signing, the \"Volunteer\" agrees to absolve the Corporation, and its employees, of any liability or responsibility for injuries, damages, property loss or side-effects that may result from the intended procedure. If signed by an authorized representative, this form is deemed reviewed, but is only approved if so marked.")
	add_field(/datum/report_field/signature, "Volunteer's Signature:")
	temp_fields += add_field(/datum/report_field/signature, "Corporate Representative's Signature")
	temp_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/temp_field in temp_fields)
		temp_field.set_access(access_edit = access_nanotrasen)

/datum/computer_file/report/recipient/corp/deny
	form_name = "C-1443D"
	title = "Rejection of Test Subject Volunteer Notice"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/corp/deny/generate_fields()
	..()
	add_field(/datum/report_field/text_label, "Dear Sir/Madam, we regret to inform you that your volunteer application for service as a test subject with the Corporation has been rejected. We thank you for your interest in our company and the progression of research. Attached, you will find a copy of your original volunteer form for your records. Regards,")
	add_field(/datum/report_field/signature, "Corporate Representative's Signature")
	add_field(/datum/report_field/people/from_manifest, "Name of Volunteer")
	add_field(/datum/report_field/text_label/header, "Reason for Rejection")
	add_field(/datum/report_field/options/yes_no, "Physically Unfit")
	add_field(/datum/report_field/options/yes_no, "Mentally Unfit")
	add_field(/datum/report_field/options/yes_no, "Project Cancellation")
	add_field(/datum/report_field/simple_text, "Other")
	add_field(/datum/report_field/options/yes_no, "Report Approved")
	set_access(access_edit = access_nanotrasen)
	*/
