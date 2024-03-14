create table "users" (
  "id" serial primary key,
  "username" varchar unique not null,
  "password" varchar not null,
  "role" varchar not null,
  "profile_photo" varchar,
  "team_id" integer,
  "user_id" integer,
  "created_at" timestamp
);

create table "user_detail" (
  "user_id" serial primary key,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar unique,
  "phone" varchar unique,
  "birth_day" date
);

create table "teams" (
  "id" serial primary key,
  "name" varchar unique not null,
  "description" text
);

create table "requests" (
  "id" serial primary key,
  "user_id" integer,
  "status" varchar,
  "reason" varchar,
  "init_date" date not null,
  "end_date" date not null,
  "description" text,
  "document" varchar,
  "created_at" timestamp
);

create table "document" ("name" varchar primary key,
"url" varchar);

alter table "users"
add foreign key ("team_id") references "teams" ("id");

alter table "users"
add foreign key ("user_id") references "user_detail" ("user_id");

alter table "requests"
add foreign key ("user_id") references "users" ("id");

alter table "requests"
add foreign key ("document") references "document" ("name");