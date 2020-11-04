# UNIX command - cat
     Реализация команды cat на языке программирования Perl.
## SYNOPSIS
    perl my_cat [OPTION] [FILE]
## DESCRIPTION
    Опции реализованные в данный момент:
        --help,    -h  Вывод справочной информации по my_cat
        --version  -v  Версия программы
        --count    -c  Выводит n-количество строк с начала файла
        --number   -n  Нумерация всех строк по мере их записи на стандартный вывод
## EXAMPLES
    perl my_cat -c 10 file.txt
    	Первые 10 строк файла file.txt выводятся в STDOUT
    perl my_cat file.txt
        Выводит построчно содержимое файла file.txt STDOUT
## FUTURE
    Опции реализуемые в последущих версия программы:
    -b
    -E
    -s
    -T
## VERSION
    Version 0.03;