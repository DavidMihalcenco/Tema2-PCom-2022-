CFLAGS = -Wall -g

all: server subscriber

# Compileaza server.c
server: -lm server.c

# Compileaza subscriber.c
subscriber: -lm subscriber.c

.PHONY: clean run_server run_subscriber

# Ruleaza serverul
run_server:
	./server ${IP_SERVER} ${PORT}

# Ruleaza subscriberul	
run_subscriber:
	./subscriber ${IP_SERVER} ${PORT}

clean:
	rm -f server subscriber
