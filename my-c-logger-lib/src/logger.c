#include "logger.h"
#include <stdio.h>
#include <time.h>


void _base_log(char *tag, char *msg, char *lev) {
    time_t rawtime;
    struct tm *timeinfo;
    time(&rawtime);
    timeinfo = localtime(&rawtime);
    printf("%d-%d-%d %d:%d:%d — %s — %s — %s\n",
            timeinfo->tm_year + 1900,
            timeinfo->tm_mon + 1,
            timeinfo->tm_mday,
            timeinfo->tm_hour,
            timeinfo->tm_min,
            timeinfo->tm_sec,
            lev,
            tag,
            msg);
}


extern logger_t logger;


void debug_log(char *tag, char *msg) {
    if (logger.level <= DEBUG) {
        _base_log(tag, msg, "DEBUG");
    }
}


void info_log(char *tag, char *msg) {
    if (logger.level <= INFO) {
        _base_log(tag, msg, "INFO");
    }
}


void error_log(char *tag, char *msg) {
    if (logger.level <= ERROR) {
        _base_log(tag, msg, "ERROR");
    }
}


void critical_log(char *tag, char *msg) {
    if (logger.level <= CRITICAL) {
        _base_log(tag, msg, "CRITICAL");
    }
}
