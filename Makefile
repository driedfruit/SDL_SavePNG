CC=gcc

CFLAGS=-g `sdl-config --cflags`
LDFLAGS=`sdl-config --libs` -lpng 

SOURCES=savepng.c main.c
EXECUTABLE=savepng

OBJECTS=$(SOURCES:.c=.o)

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@

clean:
	rm -rf *.o *.a $(EXECUTABLE)
