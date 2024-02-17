CREATE TABLE IF NOT EXISTS "friend_requests" (
    "friend_id" INTEGER PRIMARY KEY NOT NULL,
    "username" TEXT,
    "sent" TEXT,
    "received" TEXT,
    FOREIGN KEY("friend_id") REFERENCES "users"("user_id")
);

CREATE TABLE IF NOT EXISTS "private_msg" (
    "username" TEXT NOT NULL,
    "user_id" INTEGER NOT NULL,
    "other_user_id" INTEGER NOT NULL,
    FOREIGN KEY("other_user_id") REFERENCES "users"("user_id"),
    FOREIGN KEY("user_id") REFERENCES "users"("user_id"),
    FOREIGN KEY("username") REFERENCES "users"("username"),
    UNIQUE("other_user_id"),
    UNIQUE("username"),
    PRIMARY KEY("user_id", "other_user_id")
);

CREATE TABLE IF NOT EXISTS "users" (
    "user_id" INTEGER PRIMARY KEY NOT NULL,
    "username" TEXT UNIQUE,
    "fullname" TEXT,
    "email" TEXT UNIQUE,
    "password" TEXT,
    "interests" TEXT,
    "courses" TEXT
);

CREATE TABLE IF NOT EXISTS "workgroup" (
    "workgroup_id" INTEGER PRIMARY KEY NOT NULL,
    "group_name" TEXT NOT NULL,
    "username" TEXT,
    "workgroup_interests" TEXT NOT NULL,
    "about" TEXT,
    UNIQUE("group_name"),
    UNIQUE("username"),
    FOREIGN KEY("username") REFERENCES "users"("username")
);


