# UNIX command - cat
====================
## Реализация команды cat на языке программирования Perl.
## SYNOPSIS
    perl my_cat [OPTION] [FILE]
## DESCRIPTION
    Опции реализованные в данный момент:
    -h, --help    Вывод справочной информации по my_cat
    -v, --version Версия программы
    -c [int]      Выводит n-количество строк с начала файла
## EXAMPLES
    perl my_cat -c 10 file.txt
    	Первые 10 строк файла file.txt выводятся в STDOUT
    perl my_cat file.txt
        Выводит построчно содержимое файла file.txt STDOUT
## FUTURE
    Опции реализуемые в последущих версия программы:
    -b
    -E
    -n
    -s
    -T
## VERSION
    Version 0.02;