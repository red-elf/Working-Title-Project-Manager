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

DROP TABLE IF EXISTS times;

/*
    Time tracking.
    Time is tracked against the tickets.
    One entry is associated with the parent ticket and it contains the information:
        - How much time
        - Unit (time unit)
        - The title for the performed work (optional)
        - The description for the performed work (optional)
        - The identifier of the work ticket.
*/
CREATE TABLE times
(

    id          TEXT NOT NULL PRIMARY KEY UNIQUE,
    created     INTEGER     NOT NULL,
    modified    INTEGER     NOT NULL,
    amount      INTEGER     NOT NULL,

    unit        TEXT CHECK (
            unit IN (
                     'Minute', 'Hour', 'Day', 'Week', 'Month'
            )
        )                   NOT NULL DEFAULT 'Hour',

    title       TEXT,
    description TEXT,
    ticket_id   TEXT NOT NULL,
    deleted     BOOLEAN     NOT NULL CHECK (deleted IN (0, 1))
);

