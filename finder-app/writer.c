#include <stdio.h>
#include <syslog.h>

int main(int argc, char *argv[]) {

    if( argc != 3) {
        printf("Incorrect number of arguments %d, please provide 2: \n", argc);
        return 1;
    }

    FILE *openFile = fopen(argv[1], "w");//arg 1 is dir 2 is string
    openlog(NULL,LOG_PERROR,LOG_USER);

    syslog(LOG_DEBUG,"Writing %s to %s", argv[1],argv[2]);
    fputs(argv[2], openFile);

    if( ferror(openFile) ) {
        syslog(LOG_ERR,"Error");
    }
    
    fclose(openFile);
    closelog();
    
    return 0;
}