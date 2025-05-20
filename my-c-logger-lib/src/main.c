#include <stdio.h>
#include <stdlib.h>
#include "logger.h"

logger_t logger = {DEBUG};

int main(int argc, char *argv[]) {
    if (argc == 1) {
    } else if (atoi(argv[1]) == 0) {
        logger.level = DEBUG;
    } else if (atoi(argv[1]) == 1) {
        logger.level = INFO;
    } else if (atoi(argv[1]) == 2) {
        logger.level = ERROR;
    } else if (atoi(argv[1]) == 3) {
        logger.level = CRITICAL;
    } else {
        printf("Invalid user input\n");
        exit(1);
    }

    debug_log("main", "my first deug");
    info_log("main", "my first info log");
    for (int i = 0; i < 1000000000; i++) {};
    debug_log("main", "my second debug");
    info_log("main", "my second info log");
    for (int i = 0; i < 1000000000; i++) {};
    debug_log("main", "my third debug");
    error_log("main", "only critical log message");
    critical_log("main", "only critical log message");
    for (int i = 0; i < 1000000000; i++) {};
    debug_log("main", "my fourth debug");
    return 0;
}
