PREFIX  := /usr/local
CC      := cc
CFLAGS  := -pedantic -Wall -Wno-deprecated-declarations -Os
LDFLAGS := -lX11

# FreeBSD (uncomment)
#LDFLAGS += -L/usr/local/lib -I/usr/local/include
# # OpenBSD (uncomment)
#LDFLAGS += -L/usr/X11R6/lib -I/usr/X11R6/include

all: options dwmblocks

options:
	@echo dwmblocks build options:
	@echo "CFLAGS  = ${CFLAGS}"
	@echo "LDFLAGS = ${LDFLAGS}"
	@echo "CC      = ${CC}"

dwmblocks: dwmblocks.c blocks.def.h blocks.h
	${CC} -o dwmblocks dwmblocks.c ${CFLAGS} ${LDFLAGS}

blocks.h:
	cp blocks.def.h $@

clean:
	rm -f *.o *.gch dwmblocks

install: dwmblocks
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwmblocks ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks
	cp -f bat.sh ${DESTDIR}${PREFIX}/bin/dwmblocks-battery
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks-battery
	cp -f messages.sh ${DESTDIR}${PREFIX}/bin/dwmblocks-messages
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks-messages
	cp -f stocks.sh ${DESTDIR}${PREFIX}/bin/dwmblocks-stocks
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks-stocks
	cp -f netstrength.sh ${DESTDIR}${PREFIX}/bin/dwmblocks-netstrength
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks-netstrength
	cp -f vol.sh ${DESTDIR}${PREFIX}/bin/dwmblocks-vol
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwmblocks-vol

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwmblocks

.PHONY: all options clean install uninstall
