# Student Management System

A historical PHP and JavaScript application for managing student records.

The project includes authentication/session flow, administrative pages, AJAX interactions, database scripts and a traditional server-rendered PHP structure.

## Repository structure

The application is organized around folders for:

- PHP components
- page modules
- AJAX endpoints
- JavaScript
- CSS
- uploaded files
- reusable page blocks
- database scripts

The entry point selects the login or dashboard flow based on the current session.

## Stack

- PHP
- JavaScript
- jQuery
- Bootstrap
- MySQL

## Database

The repository includes:

```text
sistema_alunos.sql
```

for the historical database structure and data used by the application.

## Modern rebuild

I later rebuilt the same domain as a new API instead of rewriting this history in place.

The current implementation uses Laravel 13, PostgreSQL, ULIDs, versioned endpoints, transactional enrollment rules, tests and GitHub Actions:

https://github.com/bielfelix/sistema_alunos_laravel

Keeping both repositories public makes the progression explicit: this repository preserves the older implementation, while the newer repository shows how I would design the backend today.

## Historical context

This is an older system and I keep it public to show part of my development history with traditional PHP applications before later framework and architecture work.

It should be read as historical code, not as a template for my current engineering standards.
