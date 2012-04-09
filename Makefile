CFLAGS = "-O3 -fPIC -shared -Wall $(shell pkg-config --cflags libxslt)"
LDFLAGS = "$(shell pkg-config --libs libxslt)"

all:
	@CFLAGS=$(CFLAGS) LDFLAGS=$(LDFLAGS) rebar compile

check: all
	@rebar eunit 2> /dev/null

doc:
	@rebar doc

clean:
	@rebar clean
