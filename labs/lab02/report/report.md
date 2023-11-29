---
## Front matter
title: "Лабораторная работа номер 2"
subtitle: "Система контроля версий Git"
author: "Хагуров Андрей андреевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Изучить систему Git. Научиться работать, загружать информацию на github

# Задание

Создать SSH ключ и рабочего пространства. Подготовить отчёт по лабораторной работе номер 2.

# Теоретическое введение

Системы контроля версий (Version Control System, VCS) применяются при работе
нескольких человек над одним проектом. Обычно основное дерево проекта хранится в
локальном или удалённом репозитории, к которому настроен доступ для участников про-
екта. При внесении изменений в содержание проекта система контроля версий позволяет
их фиксировать, совмещать изменения, произведённые разными участниками проекта,
производить откат к любой более ранней версии проекта, если это требуется.
В классических системах контроля версий используется централизованная модель, пред-
полагающая наличие единого репозитория для хранения файлов. Выполнение большинства
функций по управлению версиями осуществляется специальным сервером. Участник про-
екта (пользователь) перед началом работы посредством определённых команд получает
нужную ему версию файлов. После внесения изменений, пользователь размещает новую
версию в хранилище. При этом предыдущие версии не удаляются из центрального хранили-
ща и к ним можно вернуться в любой момент. Сервер может сохранять не полную версию
изменённых файлов, а производить так называемую дельта-компрессию — сохранять только
изменения между последовательными версиями, что позволяет уменьшить объём хранимых
данных.
Системы контроля версий поддерживают возможность отслеживания и разрешения кон-
фликтов, которые могут возникнуть при работе нескольких человек над одним файлом.
Можно объединить (слить) изменения, сделанные разными участниками (автоматически
или вручную), вручную выбрать нужную версию, отменить изменения вовсе или заблоки-
ровать файлы для изменения. В зависимости от настроек блокировка не позволяет другим
пользователям получить рабочую копию или препятствует изменению рабочей копии файла
средствами файловой системы ОС, обеспечивая таким образом, привилегированный доступ
только одному пользователю, работающему с файлом

# Выполнение лабораторной работы

Сначала сделаем предварительную конфигурацию git. Откроем терминал и введём
следующие команды, указав имя и email владельца репозитория (рис. @fig:001).
![1](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-37-43.png){#fig:001 width=70%}

Настроим utf-8 в выводе сообщений git (рис. @fig:002).
![2](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-40-24.png){#fig:002 width=70%}

Дададим имя начальной ветки (будем называть её master) (рис. @fig:003).
![3](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-41-32.png){#fig:003 width=70%}

Параметр autocrlf (рис. @fig:004).
![4](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-42-02.png){#fig:004 width=70%}

Параметр safecrlf (рис. @fig:005).
![5](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-43-00.png){#fig:005 width=70%}

Для последующей идентификации пользователя на сервере репозиториев необходимо
сгенерировать пару ключей (приватный и открытый) (рис. @fig:006).
![6](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-43-24.png){#fig:006 width=70%}

 Откроем терминал и создадим каталог для предмета «Архитектура компьютера» (рис. @fig:007).
![7](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-44-53.png){#fig:007 width=70%}

 Откроем терминал и перейдём в каталог курса (рис. @fig:008).
![8](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-45-30.png){#fig:008 width=70%}

Клонируем созданный репозиторий (рис. @fig:009).
![9](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-45-54.png){#fig:009 width=70%}

Перейдём в каталог курса: (рис. @fig:010).
![10](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-45-30.png){#fig:0010 width=70%}

Удалим лишние файлы (рис. @fig:011).
![11](//afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-46-25.png){#fig:0011 width=70%}

Создадим необходимые каталоги (рис. @fig:012).
![12](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-46-39.png){#fig:012 width=70%}

Отправим файлы на сервер(рис. @fig:013).
![13](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-47-06.png){#fig:013 width=70%}

Отправим файлы на сервер(рис. @fig:013).
![14](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-47-24.png){#fig:013 width=70%}

Создадим отчет по выполнению лабораторной работы в соответствующем каталоге
рабочего пространства (рис. @fig:014).
![15](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-48-30.png){#fig:014 width=70%}

Скопируем отчеты по выполнению предыдущих лабораторных работ в соответствующие каталоги созданного рабочего пространства (рис. @fig:015).
![16](/afs/.dk.sci.pfu.edu.ru/home/a/a/aakhagurov/Изображения/Снимки экрана/Снимок экрана от 2023-11-22 12-49-03.png){#fig:015 width=70%}


# Выводы

В ходе лабораторной работы мы ознакомились с системой Git и создали собственный репозиторий

# Список литературы{.unnumbered}

1. GDB: The GNU Project Debugger. — URL: https://www.gnu.org/software/gdb/.
2. GNU Bash Manual. — 2016. — URL: https://www.gnu.org/software/bash/manual/.
3. Midnight Commander Development Center. — 2021. — URL: https://midnight-commander.
org/.
4. NASM Assembly Language Tutorials. — 2021. — URL: https://asmtutor.com/.
5. Newham C. Learning the bash Shell: Unix Shell Programming. — O’Reilly Media, 2005. —
354 с. — (In a Nutshell). — ISBN 0596009658. — URL: http://www.amazon.com/Learning-
bash-Shell-Programming-Nutshell/dp/0596009658.
6. Robbins A. Bash Pocket Reference. — O’Reilly Media, 2016. — 156 с. — ISBN 978-1491941591.
7. The NASM documentation. — 2021. — URL: https://www.nasm.us/docs.php.
8. Zarrelli G. Mastering Bash. — Packt Publishing, 2017. — 502 с. — ISBN 9781784396879.
9. Колдаев В. Д., Лупин С. А. Архитектура ЭВМ. — М. : Форум, 2018.
10. Куляс О. Л., Никитин К. А. Курс программирования на ASSEMBLER. — М. : Солон-Пресс,
2017.
11. Новожилов О. П. Архитектура ЭВМ и систем. — М. : Юрайт, 2016.
12. Расширенный ассемблер: NASM. — 2021. — URL: https://www.opennet.ru/docs/RUS/nasm/.
13. Робачевский А., Немнюгин С., Стесик О. Операционная система UNIX. — 2-е изд. — БХВ-
Петербург, 2010. — 656 с. — ISBN 978-5-94157-538-1.
14. Столяров А. Программирование на языке ассемблера NASM для ОС Unix. — 2-е изд. —
М. : МАКС Пресс, 2011. — URL: http://www.stolyarov.info/books/asm_unix.
15. Таненбаум Э. Архитектура компьютера. — 6-е изд. — СПб. : Питер, 2013. — 874 с. —
(Классика Computer Science).
16. Таненбаум Э., Бос Х. Современные операционные системы. — 4-е изд. — СПб. : Питер, — 1120 с. — (Классика Computer Science).
