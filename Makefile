all: _webp.so

CFLAGS = `pkg-config --cflags python-2.7`
LDFLAGS = -fPIC -lwebp -shared

_webp.so: webp.c
	gcc $^ -o $@ $(CFLAGS) $(LDFLAGS)

clean:
	rm -f _webp.so
