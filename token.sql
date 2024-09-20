CREATE TABLE tokens (
                        id SERIAL PRIMARY KEY,
                        user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE,
                        email VARCHAR(255) NOT NULL,
                        token VARCHAR(255) NOT NULL UNIQUE,
                        token_hash BYTEA,
                        created_at TIMESTAMP NOT NULL DEFAULT NOW(),
                        updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
                        expiry TIMESTAMP NOT NULL
);