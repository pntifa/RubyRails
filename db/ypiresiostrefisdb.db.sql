BEGIN TRANSACTION;
DROP TABLE IF EXISTS "friend_requests";
CREATE TABLE IF NOT EXISTS "friend_requests" (
	"friend_id"	INTEGER NOT NULL,
	"username"	TEXT,
	"sent"	TEXT,
	"received"	TEXT,
	FOREIGN KEY("friend_id") REFERENCES "users"("user_id"),
	PRIMARY KEY("friend_id")
);
DROP TABLE IF EXISTS "private_msg";
CREATE TABLE IF NOT EXISTS "private_msg" (
	"username"	TEXT NOT NULL,
	"user_id"	INTEGER NOT NULL,
	"other_user_id"	INTEGER NOT NULL,
	FOREIGN KEY("user_id") REFERENCES "users"("user_id"),
	FOREIGN KEY("username") REFERENCES "users"("username"),
	FOREIGN KEY("other_user_id") REFERENCES "users"("user_id"),
	UNIQUE("username"),
	UNIQUE("other_user_id"),
	PRIMARY KEY("user_id","other_user_id")
);
DROP TABLE IF EXISTS "users";
CREATE TABLE IF NOT EXISTS "users" (
	"user_id"	INTEGER NOT NULL,
	"username"	TEXT,
	"fullname"	TEXT,
	"email"	TEXT,
	"password"	TEXT,
	"interests"	TEXT,
	"courses"	TEXT,
	UNIQUE("email"),
	UNIQUE("username"),
	PRIMARY KEY("user_id")
);
DROP TABLE IF EXISTS "workgroup";
CREATE TABLE IF NOT EXISTS "workgroup" (
	"workgroup_id"	INTEGER NOT NULL,
	"group_name"	TEXT NOT NULL,
	"username"	TEXT,
	"workgroup_interests"	TEXT NOT NULL,
	"about"	TEXT,
	FOREIGN KEY("username") REFERENCES "users"("username"),
	UNIQUE("group_name"),
	UNIQUE("username"),
	PRIMARY KEY("workgroup_id","group_name")
);
INSERT INTO "users" VALUES (1,'yowaimo08','gojo satoru','il0veget0@gmail.com','1234','geto,megumi,annoying people,being strong,infinity,mahoraga','cursed techniques,domain expansion');
COMMIT;
