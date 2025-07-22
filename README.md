# ⚽ Sports Team Management Database

---

## Introduction

The Sports Team Management Database is an SQL-based system designed to simplify and enhance the management of sports teams. Inspired by the challenges of coordinating communication, scheduling, player performance, and well-being, this project serves as a centralized tool for coaches, players, and administrators. It aims to streamline day-to-day operations while ensuring that team activities run smoothly and efficiently.

At its core, this system enables coaches to organize schedules, monitor individual player development, and manage team rosters with ease. The database is built with adaptability in mind, allowing it to support various sports and accommodate diverse team structures.

---

## Features

**Player Performance Tracking** – Stores real-time performance data from practices and games to evaluate individual progress and development.

**Coach & Team Management** – Maintains records of coaches and their assigned teams, roles, and responsibilities.

**Scheduling System** – Organizes practices, games, and events while preventing time conflicts using constraints and stored procedures.

**Injury & Health Monitoring** – Tracks injuries, rehabilitation progress, and player clearance status to promote safe and responsible return-to-play decisions.

**Communication Support** – Serves as a backend data structure for potential future integrations (e.g., messaging, notifications, etc.).

**Cross-Sport Flexibility** – Designed to be easily adapted to different types of sports, team sizes, and age groups.

**Data Integrity & Normalization** – Enforces relational constraints and follows normalization techniques (up to 3NF) for optimal structure and query performance.

---

## Repository Contents

This repository contains the following files and folders:

- **Documentation.pdf** – Provides an overview of the system’s purpose, functionality, business requirements, and non-functional expectations. Includes ER diagrams and normalization details.

- **Files/** – Contains all SQL scripts and supporting assets:
  - `databasemodel.sql` – Defines the schema: tables, relationships, primary/foreign keys, and data types.
  - `inserts.sql` – Populates the database with sample players, teams, matches, and injuries.
  - `eer.mwb` – Enhanced Entity Relationship Diagram (MySQL Workbench format).
  - `erd.drawio.png` – Visual representation of the ERD.
  - `business_requirements.sql` – Implements business logic: triggers, stored procedures, and constraints related to scheduling, injury tracking, and performance logging.
