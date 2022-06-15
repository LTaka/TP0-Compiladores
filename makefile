#Nome do programa
TARGET = a.out

#diretorios dos arquivos
SRC = ./src

#compilador
CC = gcc 
LEX =	flex
lex1:
	$(LEX) $(SRC)/lex.l
	$(CC) lex.yy.c -ll
	./$(TARGET) < $(SRC)/entrada.txt
lex2:
	$(LEX) $(SRC)/lex2.l
	$(CC) lex.yy.c -ll
	./$(TARGET) < $(SRC)/entradas2.txt
