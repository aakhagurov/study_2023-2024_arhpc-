---
## Front matter
title: "Отчёта по лабораторной работе No10"
author: "Хагуров Андрей Андреевич"

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

Приобрестни навыки работы с файлами в языке NASM и научиться управлять правами доступа к файлам.
 
# Выполнение лабораторной работы

Создадим рабочую дерикторию и файл, запишем туда код программы из листинга. (рис. [-@fig:001])

![Текст программы](image/Снимок экрана от 2023-12-22 13-08-55.png){ #fig:001 width=70% }

Проассемблируем программу и проверим ее работу(рис. [-@fig:002])

![работа программы](image/Снимок экрана от 2023-12-22 13-22-15.png){ #fig:002 width=70% }

Запретим исполнение для файла lab10-1.(рис. [-@fig:003])

![как и ожидалось, мы не смогли исполнить этот файл](image/Снимок экрана от 2023-12-22 13-27-05.png){ #fig:003 width=70% }

если запретить исполнение файла, то исполнить его станет невозможно.

Когда мы разрешим исполнение файла с расширением .asm и собственно исполним его, то мы увидем множество ошибок, ведь этот файл не предназначен для такого использования.(рис. [-@fig:004])

![Ошибки исполнения файла lab10-1.asm](image/Снимок экрана от 2023-12-22 13-29-33.png){ #fig:004 width=70% }

Зададим файлу readme.txt права использования как во варианте 17 и проверим как получилось.(рис. [-@fig:005])

![Права доступа к файлу readme.txt r-x -wx rw-](image/Снимок экрана от 2023-12-22 13-40-26.png){ #fig:005 width=70% }

# Задания для самостоятельной работы

![часть текста программы](image/Screenshot from 2023-12-23 17-09-06.png){ #fig:006 width=70% }


![работа полученной програмы](image/Screenshot from 2023-12-23 01-43-18.png){ #fig:007 width=70% }


# Выводы

были преобретены навыки по работе с файлами в NASM и правами доступа к файлам.


