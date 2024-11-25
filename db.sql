-- Adminer 4.8.1 PostgreSQL 17.0 (Debian 17.0-1.pgdg120+1) dump

DROP TABLE IF EXISTS "memos";
DROP SEQUENCE IF EXISTS memo_id_seq;
CREATE SEQUENCE memo_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."memos" (
    "id" integer DEFAULT nextval('memo_id_seq') NOT NULL,
    "text" character varying(2000) NOT NULL,
    "created" timestamp NOT NULL,
    "modified" timestamp NOT NULL,
    CONSTRAINT "memo_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "memos" ("id", "text", "created", "modified") VALUES
(1,	'Hello world',	'2024-11-04 15:17:39.631825',	'2024-11-04 15:17:39.631825'),
(2,	'wedevs academy',	'2024-11-04 15:18:02.016682',	'2024-11-04 15:18:02.016682'),
(3,	'Javascript is cool',	'2024-11-04 15:57:57.811913',	'2024-11-04 15:57:57.811913');

DROP TABLE IF EXISTS "users";
DROP SEQUENCE IF EXISTS user_id_seq;
CREATE SEQUENCE user_id_seq INCREMENT 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1;

CREATE TABLE "public"."users" (
    "id" integer DEFAULT nextval('user_id_seq') NOT NULL,
    "created" timestamp NOT NULL,
    "email" character varying(255) NOT NULL,
    "password" character varying(255) NOT NULL,
    CONSTRAINT "user_pkey" PRIMARY KEY ("id"),
    CONSTRAINT "users_email_uniq" UNIQUE ("email")
) WITH (oids = false);

CREATE INDEX "users_email" ON "public"."users" USING btree ("email");

INSERT INTO "users" ("id", "created", "email", "password") VALUES
(1,	'2024-11-07 15:46:27.949',	'me@anam.co',	'$2b$10$3yl4J80D1eNSsec4EEpDNOO5/AM/tHCfaaVPiRPL7tz8zh6wMeAGe');

-- 2024-11-07 15:50:58.167141+00