#ifndef LOGGER

typedef enum {
    DEBUG,
    INFO,
    ERROR,
    CRITICAL,
} logger_level_e;

typedef struct logger_t {
    logger_level_e level;
} logger_t;

extern logger_t logger;
void debug_log(char *tag, char *msg);
void info_log(char *tag, char *msg);
void error_log(char *tag, char *msg);
void critical_log(char *tag, char *msg);

#endif // !LOGGER
