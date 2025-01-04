waitpid1:
	gcc waitpid1.c csapp.c csapp.h -o waitpid1 -lpthread

waitpid2:
	gcc waitpid2.c csapp.c csapp.h -o waitpid2 -lpthread

sign:
	gcc sign.c csapp.c csapp.h -g -o sign -lpthread

snooze:
	gcc snooze.c csapp.c csapp.h -g -o snooze -lpthread

signall:
	gcc signall.c csapp.c csapp.h -g -o signall -lpthread

setjmp:
	gcc setjmp.c csapp.c csapp.h -g -o setjmp -lpthread

restart:
	gcc restart.c csapp.c csapp.h -g -o restart -lpthread

clean:
	rm -f waitpid1
	rm -f waitpid2
.PHONY: clean, waitpid1, waitpid2, sign snooze signall	setjmp	restart