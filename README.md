# UNIX command - cat
====================
## Реализация команды cat на языке программирования Perl.
## SYNOPSIS
    perl main.pl [OPTION] [FILE]
## DESCRIPTION
    Опции реализованные в данный момент:
    -h, --help    Вывод справочной информации по cat
    -v, --version Версия программы
    -c [int]      Выводит n-количество строк с начала файла
## EXAMPLES
    perl main.pl -c 10 file.txt
    	Первые 10 строк файла file.txt выводятся в STDOUT
    perl main.pl file.txt
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