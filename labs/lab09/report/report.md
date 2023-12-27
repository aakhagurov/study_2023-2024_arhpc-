---
## Front matter
title: "Отчёт по лабораторной работе №9"
author: "Хагуров Андрей"

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

Освоить работу с подпрограммами и отладчиком gdb.

# Выполнение лабораторной работы

Создадим рабочую директорию и файл. Запишем туда программу из листинга, исправив опечатки. (рис. [-@fig:001])

![-](image/im1.png){#fig:001 width=70%}

напишем программу, имитирующую сложную функцию. Функции назовем _calul и _subcalcul_(рис. [-@fig:002])

![f(g(x))](image/Screenshot from 2023-12-16 16-50-50.png){#fig:002 width=70%}

Проверим ее работу (рис. [-@fig:003)

![-](image/Снимок экрана от 2023-12-15 13-25-59.png){#fig:003 width=70%}

Создадим файл lab9-2.asm и посмотрим, как она работает. Так же проассемблируем его с другими ключами, чтобы была возможность открыть этот файл через gdb. (рис. [-@fig:004])

![-](image/Снимок экрана от 2023-12-15 13-42-26.png){#fig:004 width=70%}

Откроем lab9-2 с помощью gdb. Запустим ее там(рис. [-@fig:005])

![-](image/Снимок экрана от 2023-12-15 13-42-37.png){#fig:005 width=70%}

Поставим точку останова(breakpoint) на метке _start. Посмотрим дизассемеблированный код, начиная с этой метки.  (рис. [-@fig:006])

![-](image/Снимок экрана от 2023-12-15 14-00-24.png){#fig:006 width=70%}

Так же посмотрим как выглядит дизассемблированный код c синтаксисом Intel (рис. [-@fig:007])

![-](image/Снимок экрана от 2023-12-15 14-02-59.png){#fig:007 width=70%}

В представлении ATT в виде 16-ричного числа записаны первые аргументы всех комманд, а в представлении intel так записываются адреса вторых аргумантов. 

включим режим псевдографики, с помощью которго отбражается код программы и содержимое регистров(рис. [-@fig:008])

![-](image/Снимок экрана от 2023-12-15 14-04-40.png){#fig:008 width=70%}

Посмотрим информацию о наших точках останова. Сделать это можно коротко командой i b (рис. [-@fig:009])

![-](image/Снимок экрана от 2023-12-15 14-09-40.png){#fig:009 width=70%}

добавим еще одну точку останова, но сделаем это по адресу (рис. [-@fig:010])

![-](image/Снимок экрана от 2023-12-15 14-17-00.png){#fig:010 width=70%}

Так же можно выводить значения регистров. Делается это командой i r. Псевдографика предствалена на (рис. [-@fig:011])

![-](image/Снимок экрана от 2023-12-15 14-19-42.png){#fig:011 width=70%}

В отладчике можно вывести текущее значение переменных. Сделать это можно например по имени (рис. [-@fig:012]) или по адресу (рис. [-@fig:013])

![-](image/Снимок экрана от 2023-12-15 14-33-01.png){#fig:012 width=70%}

![-](image/Снимок экрана от 2023-12-15 14-39-14.png){#fig:013 width=70%}

Так же отладчик позволяет менять значения переменных прямо во время выполнения программы (рис. [-@fig:014])

![-](image/Screenshot from 2023-12-16 13-51-33.png){#fig:014 width=70%}

Здесь тоже можно обращаться по адресам переменных(рис. [-@fig:015]). здесь был заменен первый символ переменной msg2 на символ отступа.

![-](image/Screenshot from 2023-12-16 13-58-31.png){#fig:015 width=70%}

Выоводить можно так же содержимое регисторов. Выведем значение edx в разных форматах: строчном, 16-ричном, двоичном(рис. [-@fig:016])

![-](image/Screenshot from 2023-12-16 14-07-18.png){#fig:016 width=70%}

Как и переменным, регистрам можно задавать значения.(рис. [-@fig:017])

![-](image/Screenshot from 2023-12-16 14-09-22.png){#fig:017 width=70%}

Однако при попытке задать строчное значение, происходит ошибка.

Завершим работу в gdb командами continue, она закончит выполнение программы, и exit, она завершит сеанс gdb.

Скопируем файл из лабораторной 9, переименуем и создадим исполняемый файл. Откроем отладчик и зададим аргументы. Создадим точку останова на метке _start и запустим программу(рис. [-@fig:018])

![-](image/Screenshot from 2023-12-16 14-23-35.png){#fig:018 width=70%}

Посмотрим на содержимое того,что расположено по адрессу, находящемуся в регистре esp (рис. [-@fig:019])

![-](image/Screenshot from 2023-12-16 14-26-12.png){#fig:019 width=70%}

Далее посмотрим на все остальные аргументы в стеке. Их адреса распологаются в 4 байтах друг от друга(именно столько заниемает элемент стека) (рис. [-@fig:020])

![-](image/Screenshot from 2023-12-16 14-32-23.png){#fig:020 width=70%}

# Задания для самостоятельной работы

Программа из лабороторной 9, но с использованием подпрограмм (рис. [-@fig:021])

![-](image/Screenshot from 2023-12-16 14-52-17.png){#fig:021 width=70%}

и проверка ее работоспособности(рис. [-@fig:022])

![-](image/Screenshot from 2023-12-16 14-57-25.png){#fig:022 width=70%}

Просмотр регистров, для поиска ошибки в программе из листинга 9.3 (рис. [-@fig:023]) и (рис. [-@fig:024])

![-](image/Screenshot from 2023-12-16 16-09-31.png){#fig:023 width=70%}

![-](image/Screenshot from 2023-12-16 16-09-48.png){#fig:024 width=70%}

Ошибка была в сторках
```nasm
add ebx,eax
mov ecx,4
mul ecx
add ebx,5
mov edi,ebx
```
правильно работающая программа представлена на (рис. [-@fig:025])

![-](image/Screenshot from 2023-12-16 16-18-10.png){#fig:025 width=70%}

Проверка корректронсти работы программы, после исправлений (рис. [-@fig:026])

![-](image/Screenshot from 2023-12-16 16-18-30.png){#fig:026 width=70%}



# Выводы

В результате выполнения работы, я научился организовывать код в подпрограммы и познакомился с базовыми функциями отладчика gdb.
