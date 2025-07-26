
-- The following document proposes business requirements for the SportsDB database
USE SportsDB;

-- ================================================
-- Business Requirement 1: Enforce Valid Game Schedule
-- ================================================
/*
Purpose:     Ensure games are scheduled within appropriate hours (e.g. 8 AM to 10 PM) for players and referees.

Problem:     Games should not be scheduled too early or late to avoid conflicts and promote fairness.

Challenge:   Ensure time constraints are respected without manual verification.

Implementation Plan:
1. Create a procedure to schedule a game
2. Validate the time falls between 08:00 and 22:00
3. Insert if valid, reject otherwise
*/

DELIMITER $$

DROP PROCEDURE IF EXISTS ScheduleGame$$

CREATE PROCEDURE ScheduleGame(
    IN p_location VARCHAR(45),
    IN p_date VARCHAR(45),
    IN p_time VARCHAR(45),
    IN p_result VARCHAR(45)
)
BEGIN
    DECLARE game_hour INT;
    SET game_hour = CAST(LEFT(p_time, 2) AS UNSIGNED);

    IF game_hour < 8 OR game_hour > 22 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Game must be scheduled between 8 AM and 10 PM.';
    ELSE
        INSERT INTO Game (Location, Date, Time, Result)
        VALUES (p_location, p_date, p_time, p_result);
    END IF;
END$$

DELIMITER ;

-- ================================================
-- Business Requirement 2: Prevent Duplicate Team Assignment to Game
-- ================================================
/*
Purpose:     Prevent the same team from being assigned multiple times to the same game.

Problem:     Duplicate assignments create inaccurate matchups and scheduling errors.

Challenge:   Add constraints via triggers to avoid manual cleanup.

Implementation Plan:
1. Create a BEFORE INSERT trigger on GameTeamAssociation
2. Check if the team is already linked to the same game
3. Reject insertion if duplicate
*/

DELIMITER $$

DROP TRIGGER IF EXISTS prevent_duplicate_team_assignment$$

CREATE TRIGGER prevent_duplicate_team_assignment
BEFORE INSERT ON GameTeamAssociation
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM GameTeamAssociation
        WHERE GameID = NEW.GameID AND TeamiD = NEW.TeamiD
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Team already assigned to this game.';
    END IF;
END$$

DELIMITER ;

-- ================================================
-- Business Requirement 3: Auto-Assign Referee to Game
-- ================================================
/*
Purpose:     Automatically assign a referee to a game using load-balancing.

Problem:     Manual assignment is inefficient and error-prone.

Challenge:   Distribute referees evenly and fairly.

Implementation Plan:
1. Create a procedure to find the least busy referee
2. Insert into GameRefereeAssociation
*/

DELIMITER $$

DROP PROCEDURE IF EXISTS AutoAssignReferee$$

CREATE PROCEDURE AutoAssignReferee(IN p_game_id INT)
BEGIN
    DECLARE ref_id INT;

    SELECT RefereeID INTO ref_id
    FROM Referee r
    LEFT JOIN GameRefereeAssociation g ON r.RefereeID = g.RefereeID
    GROUP BY r.RefereeID
    ORDER BY COUNT(g.GameID) ASC
    LIMIT 1;

    INSERT INTO GameRefereeAssociation (GameID, RefereeID)
    VALUES (p_game_id, ref_id);
END$$

DELIMITER ;

-- ================================================
-- Business Requirement 4: Injury Conflict Check (Future Logic)
-- ================================================
/*
Purpose:     Prevent scheduling of injured players.

Problem:     Risk of reinjury if not enforced.

Challenge:   Requires additional table or attribute to track injury status.

Suggestion:  Add column `IsInjured` to Player and validate before scheduling.
*/

-- Example: ALTER TABLE Player ADD COLUMN IsInjured BOOLEAN DEFAULT FALSE;

-- ================================================
-- Business Requirement 5: Validate Performance Stats Format
-- ================================================
/*
Purpose:     Ensure player stats are clean and formatted correctly.

Problem:     Bad input can corrupt stat tracking logic.

Challenge:   Use regex to enforce clean formatting.

Implementation Plan:
1. Create trigger before insert into Player
2. Block invalid formats
*/

DELIMITER $$

DROP TRIGGER IF EXISTS check_performance_stat_format$$

CREATE TRIGGER check_performance_stat_format
BEFORE INSERT ON Player
FOR EACH ROW
BEGIN
    IF NEW.`Performance Stats` NOT REGEXP '^[A-Za-z0-9 ]+$' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Performance Stats must be alphanumeric and space only.';
    END IF;
END$$

DELIMITER ;
