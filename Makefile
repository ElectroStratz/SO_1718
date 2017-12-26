all: simulador monitor

simulador: simulador.o
	gcc -g simulador.o -o simulador -lpthread

simulador.o: simulador.c
	gcc -g -c simulador.c

monitor: monitor.o
	gcc -g monitor.o -o monitor -lpthread

monitor.o: monitor.c
	gcc -g -c monitor.c

clean:
	rm -f *.o core
