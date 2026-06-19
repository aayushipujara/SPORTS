SET SERVEROUTPUT ON
SET VERIFY OFF
SET LINESIZE 200
SET PAGESIZE 100

PROMPT ========================================
PROMPT        SPORTS MANAGEMENT SYSTEM
PROMPT ========================================
PROMPT 1. PLAYER MANAGEMENT
PROMPT 2. COACH MANAGEMENT
PROMPT 3. SPORT MANAGEMENT
PROMPT 4. ADMISSION MANAGEMENT
PROMPT 5. TOURNAMENT MANAGEMENT
PROMPT 6. ACHIEVEMENT MANAGEMENT
PROMPT 7. REPORTS
PROMPT 8. EXIT
PROMPT

ACCEPT ENTER_CHOICE NUMBER PROMPT 'Enter choice: '

COLUMN NEXT_SCRIPT NEW_VALUE NEXT_SCRIPT NOPRINT
SELECT CASE &ENTER_CHOICE
          WHEN 1 THEN 'playermenu.sql'
          WHEN 2 THEN 'coachmenu.sql'
          WHEN 3 THEN 'sportmenu.sql'
          WHEN 4 THEN 'admissionmenu.sql'
          WHEN 5 THEN 'tournamentmenu.sql'
          WHEN 6 THEN 'acheivementmenu.sql'
          WHEN 7 THEN 'reportmenu.sql'
          WHEN 8 THEN 'exitmenu.sql'
          ELSE 'invalidmenu.sql'
       END NEXT_SCRIPT
FROM DUAL;

@@&NEXT_SCRIPT
