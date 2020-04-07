/datum/computer_file/report/recipient/sci/anomaly
	form_name = "HR-NTCO-01"
	title = "Отчет об Аномальном Объекте"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sci/anomaly/New()
	..()
	set_access(access_research, access_research)

/datum/computer_file/report/recipient/sci/anomaly/generate_fields()
	..()
	add_field(/datum/report_field/simple_text, "Судно", GLOB.using_map.station_name)
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/simple_text, "Индекс")
	add_field(/datum/report_field/simple_text, "Кодовое название АО")
	add_field(/datum/report_field/people/from_manifest, "Отчет заполнял(а)")
	add_field(/datum/report_field/people/from_manifest, "Отчет проверил Директор")
	add_field(/datum/report_field/pencode_text, "Процедуры сдерживания")
	add_field(/datum/report_field/pencode_text, "Общее описание")
	add_field(/datum/report_field/simple_text, "Приблизительный возраст АО")
	add_field(/datum/report_field/simple_text, "Уровень угрозы АО")

/datum/computer_file/report/recipient/sci/volunteer
	form_name = "HR-NTCO-02b"
	title = "Форма Добровольца, Участвующего в Исследованиях"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sci/volunteer/generate_fields()
	..()
	var/list/temp_fields = list()
	add_field(/datum/report_field/people/from_manifest, "Имя добровольца")
	add_field(/datum/report_field/simple_text, "Область сследований(s)")
	add_field(/datum/report_field/simple_text, "Компенсация: (если есть)")
	add_field(/datum/report_field/people/list_from_manifest, "Назначаемый(-ые) исследователь(-и)")
	add_field(/datum/report_field/text_label/instruction, "Ставя свою подпись, \"Доброволец\" соглашается освободить Корпорацию НаноТрейзен и ее сотрудников от любой ответственности за травмы, ущерб, потерю имущества или побочные эффекты, которые могут возникнуть в результате предполагаемых исследований. Если эта форма подписана назначенным(-ыми) исследователем(-ями), она считается рассмотренной, но может быть одобрена только в том случае, если имеется подпись добровольца.")
	add_field(/datum/report_field/signature, "Подпись добровольца")
	temp_fields += add_field(/datum/report_field/signature, "Подпись(-и) назначенного(-ых) исследователя(-лей)")
	temp_fields += add_field(/datum/report_field/options/yes_no, "Одобрено?")
	for(var/datum/report_field/temp_field in temp_fields)
		temp_field.set_access(access_edit = access_research)

/datum/computer_file/report/recipient/sci/deny
	form_name = "HR-NTCO-02b-D"
	title = "Уведомление об Отклоненной Форме Добровольца"
	logo = "\[logo\]"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/sci/deny/generate_fields()
	..()
	add_field(/datum/report_field/text_label, "Уважаемый сэр/мадам, мы с сожалением сообщаем вам, что ваша добровольная заявка на участие в исследованиях в качестве испытуемого в департаменте Исследований и Разработок Корпорации НаноТрейзен была отклонена. Мы благодарим вас за проявленный интерес к нашей компании и прогрессу исследований. В приложении вы найдете копию вашей первоначальной формы добровольца. С уважением,")
	add_field(/datum/report_field/signature, "Подпись(-и) назначаемого(-ых) исследователя(-лей)")
	add_field(/datum/report_field/people/from_manifest, "Имя добровольца")
	add_field(/datum/report_field/text_label/header, "Причина отказа")
	add_field(/datum/report_field/options/yes_no, "Недостаточная физическая подготовка?")
	add_field(/datum/report_field/options/yes_no, "Умственная неполноценность?")
	add_field(/datum/report_field/options/yes_no, "Отмена проекта?")
	add_field(/datum/report_field/simple_text, "Другая причина")
	add_field(/datum/report_field/options/yes_no, "Одобрено?")
	set_access(access_edit = access_research)
