-- Create a table named 'users' if it doesn't already exist
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY, -- 'id' is the primary key, an integer
    username TEXT NOT NULL UNIQUE -- 'username' must be unique and not null
);

-- Create a table named 'chat_groups' if it doesn't already exist
CREATE TABLE IF NOT EXISTS chat_groups (
    id INTEGER PRIMARY KEY, -- 'id' is the primary key, an integer
    name TEXT NOT NULL UNIQUE -- 'name' of the group must be unique and not null
);

-- Create a table named 'group_members' if it doesn't already exist
CREATE TABLE IF NOT EXISTS group_members (
    user_id INTEGER, -- 'user_id' is an integer
    group_id INTEGER, -- 'group_id' is an integer
    PRIMARY KEY(user_id, group_id), -- Combination of 'user_id' and 'group_id' is the primary key
    FOREIGN KEY(user_id) REFERENCES users(id), -- 'user_id' is a foreign key which references 'id' in 'users' table
    FOREIGN KEY(group_id) REFERENCES chat_groups(id) -- 'group_id' is a foreign key which references 'id' in 'chat_groups' table
);

-- Create a table named 'messages' if it doesn't already exist
CREATE TABLE IF NOT EXISTS messages (
    id INTEGER PRIMARY KEY, -- 'id' is the primary key, an integer
    user_id INTEGER, -- 'user_id' is an integer
    group_id INTEGER, -- 'group_id' is an integer
    message TEXT, -- 'message' is text type
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, -- 'timestamp' is datetime type, default value is current timestamp
    FOREIGN KEY(user_id) REFERENCES users(id), -- 'user_id' is a foreign key which references 'id' in 'users' table
    FOREIGN KEY(group_id) REFERENCES chat_groups(id) -- 'group_id' is a foreign key which references 'id' in 'chat_groups' table
);
-- Yasincan Bozkurt