USE SportsDB;

-- Insert into User table
INSERT INTO `User` (`UserID`, `Username`, `Password`, `Email`, `Personal Details`) VALUES
(1, 'luai_almaznai', 'password123', 'luai@example.com', 'Luai Almaznai Details'),
(2, 'mesut_ozil', 'password123', 'mesut@example.com', 'Mesut Ozil Details'),
(3, 'juicy_momo', 'password123', 'juicy@example.com', 'Juicy Momo Details');

-- Insert into Player table
INSERT INTO `Player` (`PlayerID`, `Leave Requests`, `Performance Stats`) VALUES
(1, 'Leave Request 1', 'Performance Stat 1'),
(2, 'Leave Request 2', 'Performance Stat 2'),
(3, 'Leave Request 3', 'Performance Stat 3');

-- Insert into Coach table
INSERT INTO `Coach` (`CoachID`, `Training Programs Assigned`, `Team Schedule`) VALUES
(1, 'Training Program 1', 'Team Schedule 1'),
(2, 'Training Program 2', 'Team Schedule 2'),
(3, 'Training Program 3', 'Team Schedule 3');

-- Insert into Team table
INSERT INTO `Team` (`TeamID`, `Roster`, `Historical Performance Data`, `Attendance Tracking`) VALUES
(1, 'Roster 1', 'Performance Data 1', 'Attendance 1'),
(2, 'Roster 2', 'Performance Data 2', 'Attendance 2'),
(3, 'Roster 3', 'Performance Data 3', 'Attendance 3');

-- Insert into Scheduler table
INSERT INTO `Scheduler` (`SchedulerID`, `Notifications`, `Referee Allocation`) VALUES
(1, 'Notification 1', 'Referee Allocation 1'),
(2, 'Notification 2', 'Referee Allocation 2'),
(3, 'Notification 3', 'Referee Allocation 3');

-- Insert into Referee table
INSERT INTO `Referee` (`RefereeID`, `Game Scores Entered`, `Disciplinary Actions`) VALUES
(1, 'Game Score 1', 'Disciplinary Action 1'),
(2, 'Game Score 2', 'Disciplinary Action 2'),
(3, 'Game Score 3', 'Disciplinary Action 3');

-- Insert into Parent table
INSERT INTO `Parent` (`ParentID`, `Child's Game Schedule Access`, `Notifications`) VALUES
(1, 'Schedule Access 1', 'Notification 1'),
(2, 'Schedule Access 2', 'Notification 2'),
(3, 'Schedule Access 3', 'Notification 3');

-- Insert into Medical Staff table
INSERT INTO `Medical Staff` (`Medical StaffID`, `Contact Info`, `Specialization`, `Health Records`) VALUES
(1, 'contact1@example.com', 'Cardiology', 'Record1'),
(2, 'contact2@example.com', 'Neurology', 'Record2'),
(3, 'contact3@example.com', 'Orthopedics', 'Record3');

-- Insert into System Administrator table
INSERT INTO `System Administrator` (`AdminID`, `Access Level`, `Contact Info`) VALUES
(1, 'Full', 'admin1@example.com'),
(2, 'Full', 'admin2@example.com'),
(3, 'Full', 'admin3@example.com');

-- Insert into Financial Officer table
INSERT INTO `Financial Officer` (`FinancialOfficerID`, `Access To Financial Reports`, `Budget Management`) VALUES
(1, 'Full', 'Budget1'),
(2, 'Full', 'Budget2'),
(3, 'Full', 'Budget3');

-- Insert into Merchandise Manager table
INSERT INTO `Merchandise Manager` (`MerchManagerID`, `Inventory Management`, `Sales Report`) VALUES
(1, 'Inventory1', 'Sales1'),
(2, 'Inventory2', 'Sales2'),
(3, 'Inventory3', 'Sales3');

-- Insert into Sports League Organizer table
INSERT INTO `Sports League Organizer` (`OrganizerID`, `League Schedule`, `Contact Info`) VALUES
(1, 'League Schedule 1', 'organizerA@example.com'),
(2, 'League Schedule 2', 'organizerB@example.com'),
(3, 'League Schedule 3', 'organizerC@example.com');

-- Insert into Game Statistics Provider table
INSERT INTO `Game Statistics Provider` (`ProviderID`, `Data Accuracy`, `Reliability`) VALUES
(1, 'High', 'Reliable'),
(2, 'Medium', 'Very Reliable'),
(3, 'Low', 'Moderate');

-- Insert into Social Media Manager table
INSERT INTO `Social Media Manager` (`SocialMediaManagerID`, `Platform Expertise`, `Engagement Analytics`, `Notifications Sent`) VALUES
(1, 'Expertise 1', 'Analytics 1', 'Notification 1'),
(2, 'Expertise 2', 'Analytics 2', 'Notification 2'),
(3, 'Expertise 3', 'Analytics 3', 'Notification 3');

-- Insert into Fan/User Watching the Game table
INSERT INTO `Fan/User Watching the Game` (`FanID`, `Subscription Details`, `Preferences`) VALUES
(1, 'Subscription 1', 'Preference 1'),
(2, 'Subscription 2', 'Preference 2'),
(3, 'Subscription 3', 'Preference 3');

-- Insert into Fan/User Interacting with Players table
INSERT INTO `Fan/User Interacting with Players` (`InteractingFanID`, `Interaction History`, `Preferences`) VALUES
(1, 'History 1', 'Preference 1'),
(2, 'History 2', 'Preference 2'),
(3, 'History 3', 'Preference 3');

-- Insert into Fan/User Reviewing Games table
INSERT INTO `Fan/User Reviewing Games` (`ReviewingFanID`, `Review History`, `Feedback`) VALUES
(1, 'History 1', 'Feedback 1'),
(2, 'History 2', 'Feedback 2'),
(3, 'History 3', 'Feedback 3');

-- Insert into Team Staff table
INSERT INTO `Team Staff` (`TeamStaffID`, `Role Description`, `Contact Info`) VALUES
(1, 'Role 1', 'contact1@example.com'),
(2, 'Role 2', 'contact2@example.com'),
(3, 'Role 3', 'contact3@example.com');

-- Insert into Team Captain table
INSERT INTO `Team Captain` (`Team Captain ID`, `Leadership Role`, `Strategy Input`) VALUES
(1, 'Leader 1', 'Strategy 1'),
(2, 'Leader 2', 'Strategy 2'),
(3, 'Leader 3', 'Strategy 3');

-- Insert into Scout table
INSERT INTO `Scout` (`ScoutID`, `Recruitment Focus`, `Contact Info`) VALUES
(1, 'Focus 1', 'contact1@example.com'),
(2, 'Focus 2', 'contact2@example.com'),
(3, 'Focus 3', 'contact3@example.com');

-- Insert into Player Agent table
INSERT INTO `Player Agent` (`AgentID`, `Client List`, `Negotiation Skills`) VALUES
(1, 'Client 1', 'Skills 1'),
(2, 'Client 2', 'Skills 2'),
(3, 'Client 3', 'Skills 3');

-- Insert into PlayerFanUserInteractingwithPlayersAssociation table
INSERT INTO `PlayerFanUserInteractingwithPlayersAssociation` (`PlayerID`, `InteractingFanID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into PlayerPlayerAgentAssociation table
INSERT INTO `PlayerPlayerAgentAssociation` (`PlayerID`, `AgentID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into PlayerMedicalStaffAssociation table
INSERT INTO `PlayerMedicalStaffAssociation` (`PlayerID`, `Medical StaffID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into PlayerScoutAssociation table
INSERT INTO `PlayerScoutAssociation` (`PlayerID`, `Scout ID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into PlayerTeamAssociation table
INSERT INTO `PlayerTeamAssociation` (`PlayerID`, `TeamID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into Game table
INSERT INTO `Game` (`GameID`, `Location`, `Date`, `Time`, `Result`) VALUES
(1, 'Location 1', '2024-07-01', '18:00', 'Result 1'),
(2, 'Location 2', '2024-07-02', '19:00', 'Result 2'),
(3, 'Location 3', '2024-07-03', '20:00', 'Result 3');

-- Insert into GameTeamAssociation table
INSERT INTO `GameTeamAssociation` (`GameID`, `TeamiD`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into GameFan/UserWatchingtheGameAssociation table
INSERT INTO `GameFan/UserWatchingtheGameAssociation` (`GameID`, `FanID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into GameGameStatisticsProviderAssociation table
INSERT INTO `GameGameStatisticsProviderAssociation` (`GameID`, `ProviderID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into GameMerchandiseManagerAssociation table
INSERT INTO `GameMerchandiseManagerAssociation` (`GameID`, `MerchManagerID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into GameRefereeAssociation table
INSERT INTO `GameRefereeAssociation` (`GameID`, `RefereeID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into GameSchedulerAssociation table
INSERT INTO `GameSchedulerAssociation` (`GameID`, `SchedulerID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into GameFan/UserReviewingGamesAssociation table
INSERT INTO `GameFan/UserReviewingGamesAssociation` (`GameID`, `ReviewingFanID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into TeamTeamStaffAssociation table
INSERT INTO `TeamTeamStaffAssociation` (`TeamID`, `TeamStaffID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into TeamCoachAssociation table
INSERT INTO `TeamCoachAssociation` (`TeamID`, `CoachID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into TeamSportsLeagueOrganizerAssociation table
INSERT INTO `TeamSportsLeagueOrganizerAssociation` (`TeamID`, `OrganizerID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into TeamSocialMediaManagerAssociation table
INSERT INTO `TeamSocialMediaManagerAssociation` (`TeamID`, `SocialMediaManagerID`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Insert into TeamFinancialOfficerAssociation table
INSERT INTO `TeamFinancialOfficerAssociation` (`TeamID`, `FinancialOfficerID`) VALUES
(1, 1),
(2, 2),
(3, 3);


