/*
    Version: 1
*/

/*
    Notes:

    - TODOs: https://github.com/orgs/red-elf/projects/2/views/1
    - Identifiers in the system are UUID strings.
    - Mapping tables are used for binding entities and defining relationships.
        Mapping tables are used as well to append properties to the entities.
*/

DROP TABLE IF EXISTS chats;
DROP TABLE IF EXISTS chats_yandex_mappings;
DROP TABLE IF EXISTS chats_google_mappings;
DROP TABLE IF EXISTS chats_slack_mappings;
DROP TABLE IF EXISTS chats_telegram_mappings;
DROP TABLE IF EXISTS chats_whatsapp_mappings;

/*
    Chat support for the projects.

    Chat room can be connected with:
        - Organization
        - Team
        - Project
        - Ticket.

    Each of these entities can have up to one chat room.
    Chat rooms can be provided by the various vendors:
        - Slack
        - Yandex
        - Google
        - Telegram
        - WhatsApp, etc.
*/
CREATE TABLE chats
(

    id              TEXT    NOT NULL PRIMARY KEY UNIQUE,
    title           TEXT    NOT NULL,
    organization_id TEXT UNIQUE,
    team_id         TEXT UNIQUE,
    project_id      TEXT UNIQUE,
    ticket_id       TEXT UNIQUE,
    created         INTEGER NOT NULL,
    modified        INTEGER NOT NULL,
    deleted         BOOLEAN NOT NULL CHECK (deleted IN (0, 1)) DEFAULT 0
);

/*
    Chats can be provided by the Yandex Messenger.
    The table contains all the meta-data associated with it.
*/
CREATE TABLE chats_yandex_mappings
(

    id       TEXT    NOT NULL PRIMARY KEY UNIQUE,
    chat_id  TEXT    NOT NULL UNIQUE,
    property TEXT    NOT NULL,
    value    TEXT,
    created  INTEGER NOT NULL,
    modified INTEGER NOT NULL,
    deleted  BOOLEAN NOT NULL CHECK (deleted IN (0, 1)) DEFAULT 0
);


/*
    Chats can be provided by the Slack.
    The table contains all the meta-data associated with it.
*/
CREATE TABLE chats_slack_mappings
(

    id       TEXT    NOT NULL PRIMARY KEY UNIQUE,
    chat_id  TEXT    NOT NULL UNIQUE,
    property TEXT    NOT NULL,
    value    TEXT,
    created  INTEGER NOT NULL,
    modified INTEGER NOT NULL,
    deleted  BOOLEAN NOT NULL CHECK (deleted IN (0, 1)) DEFAULT 0
);


/*
    Chats can be provided by the Telegram.
    The table contains all the meta-data associated with it.
*/
CREATE TABLE chats_telegram_mappings
(

    id       TEXT    NOT NULL PRIMARY KEY UNIQUE,
    chat_id  TEXT    NOT NULL UNIQUE,
    property TEXT    NOT NULL,
    value    TEXT,
    created  INTEGER NOT NULL,
    modified INTEGER NOT NULL,
    deleted  BOOLEAN NOT NULL CHECK (deleted IN (0, 1)) DEFAULT 0
);


/*
    Chats can be provided by the Google.
    The table contains all the meta-data associated with it.
*/
CREATE TABLE chats_google_mappings
(

    id       TEXT    NOT NULL PRIMARY KEY UNIQUE,
    chat_id  TEXT    NOT NULL UNIQUE,
    property TEXT    NOT NULL,
    value    TEXT,
    created  INTEGER NOT NULL,
    modified INTEGER NOT NULL,
    deleted  BOOLEAN NOT NULL CHECK (deleted IN (0, 1)) DEFAULT 0
);


/*
    Chats can be provided by the WhatsApp.
    The table contains all the meta-data associated with it.
*/
CREATE TABLE chats_whatsapp_mappings
(

    id       TEXT    NOT NULL PRIMARY KEY UNIQUE,
    chat_id  TEXT    NOT NULL UNIQUE,
    property TEXT    NOT NULL,
    value    TEXT,
    created  INTEGER NOT NULL,
    modified INTEGER NOT NULL,
    deleted  BOOLEAN NOT NULL CHECK (deleted IN (0, 1)) DEFAULT 0
);