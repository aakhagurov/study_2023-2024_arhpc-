---
## Front matter
title: "Oтчёт по лабораторной 6"
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
Научиться производить математические операции посредствам языка программирования assembler.

# Выполнение лабораторной работы
Создадим нужный каталог и файл.	
Напишем текст программы в файл lab6-1.asm. Проассемблируем этот файл и запустим его.
![сложение юникодов строк](image/Снимок экрана от 2023-12-24 11-19-30.png){ #fig:001 width=70% }

и вправду, получилось очень неожиданное значение.
Исправим программу(рис. [-@fig:002])

![исправленный текст программы](image/Снимок экрана от 2023-12-24 11-21-31.png){ #fig:002 width=70% }

при замене строк на числа, выведется символ пререноса строки (рис. [-@fig:003])

![вывод символа с кодом 10](image/Снимок экрана от 2023-12-24 11-22-32.png){ #fig:003 width=70% }

создадим файл lab6-2.asm, запишем туда код программы с использованием функций из файла in_out.asm, проассемблируем, запустим(рис. [-@fig:004])

![вывод числа, а не соответсвующего ему в юникоде символа](image/Снимок экрана от 2023-12-24 11-41-33.png){ #fig:004 width=70% }

исправим программу следующим образом(рис. [-@fig:005])

![программа, считающая и выводящая числа правильно](image/Снимок экрана от 2023-12-24 11-46-34.png){ #fig:005 width=70% }


далее уберем кавычки и наконец получим вывод суммы 4 и 6(рис. [-@fig:006])

![вывод суммы чисел 4 и 6](image/Снимок экрана от 2023-12-24 11-45-35.png){ #fig:006 width=70% }

если изменить функцию iprintLF на iprint, то программа будет выводить ответ без символа переноса строки и приглашение bush'а появится сразу за 10.(рис. [-@fig:007])

![вывод с использованием iprint](image/Снимок экрана от 2023-12-24 11-47-36.png){ #fig:007 width=70% }
 
 
 программа, выводящая решение  f(x) = (5 * 2 + 3)/3 (рис. [-@fig:008]) и ее работа (рис. [-@fig:009])

![код программы для f(x)](image/Снимок экрана_2023-12-25_16-12-37.png){ #fig:008 width=70% }

![вывод программы для f(x)](image/Снимок экрана_2023-12-25_16-12-38.png){ #fig:009 width=70% }


далее создадим файл, для выбора варианта, запишем туда код, проассемблируем его, исполним с номером студенческого(рис. [-@fig:010])

![получение варианта](image/Снимок экрана_2023-12-25_16-13-39.png){ #fig:010 width=70% }

# Ответ на вопросы
1. 
```nasm
mov eax,rem
call sprint
```

2. данный код нужен для записи в переменную х вводимого из консоли значения
3. call atoi вызывает функцию, преобдразающую код символа в число
4. 
```nasm
mov ebx,20
div ebx
inc edx
```
5. остаток будет в edx
6. 
```nasm
mov eax,rem
call sprint
mov eax,edx
call iprintLF
```

# Самостоятельные задания

код программы

![](image/Снимок экрана_2023-12-25_16-57-40.png){ #fig:011 width=70% }

ее работа с заданными значениями 

![](image/Снимок экрана_2023-12-25_16-58-41.png){ #fig:012 width=70% }

# Выводы
 Были получены навыки по выполнению арифметических операций через ассемблер.


