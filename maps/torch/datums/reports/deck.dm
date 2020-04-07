
/datum/computer_file/report/recipient/shuttle/checklist
	logo = "\[bluelogo\]"
	form_name = "NT-SUP-01"
	title = "Предварительная Проверка Шаттла"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/shuttle/checklist/New()
	..()
	set_access(access_cargo, access_cargo)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/shuttle/checklist/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Поставок и Управления Ангаром")
	add_field(/datum/report_field/text_label/header, "Общая Информация")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/simple_text, "Название судна")
	add_field(/datum/report_field/simple_text, "Назначение судна")
	add_field(/datum/report_field/simple_text, "Место стыковки/стоянки")
	add_field(/datum/report_field/text_label/header, "Контрольный Список")
	add_field(/datum/report_field/options/yes_no, "Корпус левой стороны без повреждений?")
	add_field(/datum/report_field/options/yes_no, "Корпус правой стороны без повреждений?")
	add_field(/datum/report_field/options/yes_no, "Все окна установлены и закреплены?")
	add_field(/datum/report_field/options/yes_no, "Сопла форсунок очищены?")
	add_field(/datum/report_field/options/yes_no, "Присутствует ли утечка топлива?")
	add_field(/datum/report_field/options/yes_no, "Давление топлива превышает 300kPa?")
	add_field(/datum/report_field/options/yes_no, "Присутствует ли портативный генератор на борту?")
	add_field(/datum/report_field/options/yes_no, "Заряд бортового SMES более 60%?")
	add_field(/datum/report_field/options/yes_no, "Все камеры видеонаблюдения в рабочем состоянии?")
	add_field(/datum/report_field/options/yes_no, "Давление в канистре воздушных шлюзов больше 200kPa?")
	add_field(/datum/report_field/options/yes_no, "Присутствует ли набор первой помощи на борту?")
	add_field(/datum/report_field/options/yes_no, "Присутствует ли набор инструментов на борту?")
	add_field(/datum/report_field/options/yes_no, "Шлюзовые камеры обеспечивают герметичность с обеих сторон?")
	add_field(/datum/report_field/signature, "Для дачи разрешения на отбытие судна поставьте подпись здесь")

/datum/computer_file/report/recipient/docked
	logo = "\[bluelogo\]"
	form_name = "NT-SUP-12"
	title = "Отчет о Пристыкованном Судне"
	available_on_ntnet = 1

/datum/computer_file/report/recipient/docked/New()
	..()
	set_access(access_cargo, access_cargo)
	set_access(access_heads, override = 0)

/datum/computer_file/report/recipient/docked/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Поставок и Управления Ангаром")
	add_field(/datum/report_field/text_label/header, "Общая Информация")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/simple_text, "Название судна")
	add_field(/datum/report_field/simple_text, "Пилот судна/владелец")
	add_field(/datum/report_field/simple_text, "Назначение судна")
	add_field(/datum/report_field/people/from_manifest, "Состыковка авторизована (кем)")
	add_field(/datum/report_field/text_label/header, "Информация о Грузах")
	add_field(/datum/report_field/pencode_text, "Перечислите виды грузов, находящихся на судне")
	add_field(/datum/report_field/text_label/header, "Информация об Опасных Грузах")
	add_field(/datum/report_field/options/yes_no, "Вооружение?")
	add_field(/datum/report_field/options/yes_no, "Живой груз?")
	add_field(/datum/report_field/options/yes_no, "Биологически опасные материалы?")
	add_field(/datum/report_field/options/yes_no, "Химически опасные или радиоактивные материалы?")
	add_field(/datum/report_field/signature, "Для дачи разрешения на посещение судна поставьте подпись здесь")
	add_field(/datum/report_field/text_label/header, "Расстыковка и Отбытие")
	add_field(/datum/report_field/time, "Время расстыковки")
	add_field(/datum/report_field/pencode_text, "Заметки о расстыковке")

	/datum/computer_file/report/supply/request
		form_name = "HR-NTCO-07a"
		title = "Запрос в Отдел Поставок"
		available_on_ntnet = 1

/datum/computer_file/report/supply/request/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Поставок и Управления Ангаром")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/people/from_manifest, "Имя запрашивающего")
	add_field(/datum/report_field/simple_text, "Предмет запроса")
	add_field(/datum/report_field/simple_text, "Причина запроса")
	add_field(/datum/report_field/simple_text, "Место доставки")
	add_field(/datum/report_field/pencode_text, "Примечания")
	add_field(/datum/report_field/signature, "Подпись")

/datum/computer_file/report/supply/post
	form_name = "HR-NTCO-07b"
	title = "Запрос на Почтовую Пересылку"
	available_on_ntnet = 1

/datum/computer_file/report/supply/post/generate_fields()
	..()
	add_field(/datum/report_field/text_label/header, "ИСНТ Синяя Сойка - Отдел Поставок и Управления Ангаром")
	add_field(/datum/report_field/date, "Дата")
	add_field(/datum/report_field/time, "Время")
	add_field(/datum/report_field/people/from_manifest, "Имя запрашивающего")
	add_field(/datum/report_field/simple_text, "Посылка")
	add_field(/datum/report_field/simple_text, "Причина запроса")
	add_field(/datum/report_field/simple_text, "Место доставки")
	add_field(/datum/report_field/pencode_text, "Примечания")
	add_field(/datum/report_field/signature, "Подпись")
