# Sports Management System

This project is an Oracle SQL and SQL*Plus based Sports Management System. It stores information about players, coaches, sports, admissions, tournaments, and achievements, then provides menu-driven SQL*Plus scripts for common operations.

## Project Structure

```text
sqlplussports/
├── README.md
├── schema.sql
├── seed.sql
├── 1creatinguser.txt
├── 2creatingtables.txt
├── 3insertingrecords.txt
└── sqlprograms/
    ├── mainmenu.sql
    ├── playermenu.sql
    ├── coachmenu.sql
    ├── sportmenu.sql
    ├── admissionmenu.sql
    ├── tournamentmenu.sql
    ├── acheivementmenu.sql
    └── reportmenu.sql
```

The `.txt` files are original SQL*Plus transcript files. Use `schema.sql` and `seed.sql` for clean setup.

## Requirements

- Oracle Database
- SQL*Plus
- A database account with permission to create users, or an existing user where tables can be created

## Database Setup

1. Log in as an admin user if you need to create the project user.

```sql
CREATE USER SPORTS IDENTIFIED BY sports123;
GRANT CONNECT, RESOURCE TO SPORTS;
ALTER USER SPORTS QUOTA UNLIMITED ON USERS;
```

2. Log in as the `SPORTS` user.

```text
sqlplus SPORTS/sports123
```

3. Run the table creation script.

```sql
@schema.sql
```

4. Insert sample records.

```sql
@seed.sql
```

5. Start the menu program.

```sql
@sqlprograms/mainmenu.sql
```

## Main Features

- Player management: add, update, delete, search, and display players
- Coach management: add, update, delete, search, and display coaches
- Sport management: add, update, delete, search, and display sports
- Admission management: add, update, delete, search, and display admissions
- Tournament management: add, update, delete, search, and display tournaments
- Achievement management: add, update, delete, search, and display achievements
- Reports for joined sports, player, admission, tournament, and achievement data

## Tables

| Table | Purpose |
| --- | --- |
| `SPORT` | Stores sport name, fee, and schedule |
| `PLAYER` | Stores player details and selected sport |
| `COACH` | Stores coach details, experience, and salary |
| `ADMISSION` | Stores player admission records |
| `TOURNAMENT` | Stores tournament name, location, and date |
| `ACHIEVEMENT` | Stores player tournament achievements |

## Relationships

- `PLAYER.SPORT_ID` references `SPORT.SPORT_ID`
- `ADMISSION.PLAYER_ID` references `PLAYER.PLAYER_ID`
- `ADMISSION.SPORT_ID` references `SPORT.SPORT_ID`
- `ACHIEVEMENT.PLAYER_ID` references `PLAYER.PLAYER_ID`
- `ACHIEVEMENT.TOURNAMENT_ID` references `TOURNAMENT.TOURNAMENT_ID`

## Notes

- Enter dates in `DD-MM-YYYY` format.
- Commit is included after add, update, and delete operations in the menu scripts.
- The achievement menu file keeps the original spelling `acheivementmenu.sql` so existing calls keep working.
