
CIFFI = 0
LIND = 0
LIND4 = 0
ISISXL = 0
ISISXL512 = 0
LINDLUX = 0
PROCXSLT = 0
_FILE_OFFSET_BITS = 0
_LARGEFILE64_SOURCE = 0
SIXTY_FOUR = 0
SUPERISIS = 0
MAXMFRL=0

CICONF1 = -DCIFFI=$(CIFFI) -DLIND=$(LIND) -DLIND4=$(LIND4) -DISISXL=$(ISISXL) -DISISXL512=$(ISISXL512) -DLINDLUX=$(LINDLUX) -DPROCXSLT=$(PROCXSLT) -D_FILE_OFFSET_BITS=$(_FILE_OFFSET_BITS) -D_LARGEFILE64_SOURCE=$(_LARGEFILE64_SOURCE) -DSIXTY_FOUR=$(SIXTY_FOUR) -DSUPERISIS=$(SUPERISIS) -DMAXMFRL=$(MAXMFRL)
#CICONF1 = -DCIFFI=$(CIFFI) -DLIND=$(LIND) -DISISXL=$(ISISXL) -DISISXL512=$(ISISXL512) -DLINDLUX=$(LINDLUX)
CICONF2 = -DCIWTF=0 -DINCPROCX=0 -DINCPRECX=0 -DEXCFMCGI=1 -DEXCFMXML=1 -D_GLIBC_VERSIONED_SOURCE

CC = cc
CCFLAGS = -funsigned-char -Wall
CCLIBS = -lm
CCOPTS = -c $(CCFLAGS) $(CICONF1) $(CICONF2)

mkiy0: mkiy0.o cidbx.o 
	echo ld mkiy0..
	$(CC) -o mkiy0 mkiy0.o cidbx.o $(CCLIBS) 

mkiy0.o: mkiy0.c cisis.h
	echo mkiy0..
	$(CC) $(CCOPTS) mkiy0.c

cidbx.o: cidbx.c cisis.h
	echo cidbx..
	$(CC) $(CCOPTS) cidbx.c
