CC = gcc
CFlAGS = -Wall -Wextra -pedantic -std=c99

SRC = usha.c sha1.c sha224-256.c sha384-512.c \
      hmac.c hkdf.c shatest.c
OBJ = ${SRC:%.c=%.o}
BIN = shatest

.PHONY: all clean
all: ${BIN}

${BIN}: ${OBJ}
	${CC} ${CFLAGS} -o $@ $^

clean:
	${RM} -rf ${OBJ} ${BIN}

