#!/usr/bin/perl
use strict;
use warnings;

my $version = 0.01;
my $help = <<"EOF";
    +----------------------------------------------+
    -h, --help    Вывод справочной информации по cat
    -v, --version Версия программы
    -c [int]      Выводит n-количество строк с начала файла
    ------------------------------------------------
    Пример работы:
        \$ perl cat.pl --help
        \$ perl cat.pl -v
        \$ perl cat.pl data.txt
    -------------------------------------------------
EOF

sub print_ten_line_file_up {
    my $number = shift;
    my $file = shift;
    open(my $fh, '<', $file) or die $!;
    for (my $i = 0; $i<$number; $i++) {
        while ( my $line = <$fh> ) {
            chomp($line);
            print($line . "\n");
            last;
        }
    }
    close($fh);
}

sub full_print_file {
    my $file = shift;
    open(my $fh, '<', $file) or die $!;
    while ( my $line = <$fh> ) {
        chomp($line);
        print($line . "\n");
    }
    close($fh);
}

sub cat {
    while ( my $argument = shift ) {
        if ( $argument eq '-h' || $argument eq '--help' ) {
            print($help . "\n");
        }
        elsif ( $argument eq "-v" || $argument eq "--version" ) {
            print("Cat - version " .  $version . "\n" );
        }
        elsif ( $argument eq '-c' ) {
            my $number = shift;
            my $arg = shift;
            print_ten_line_file_up( $number, $arg );
        }
        else {
            full_print_file( $argument );
        }
    }
}

if ( scalar(@ARGV) <= 0 ) {
    print "Argument not found!\n";
}
 else {
    cat(@ARGV);
}
