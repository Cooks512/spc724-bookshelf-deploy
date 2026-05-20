-- Bookstore Online database schema

CREATE TABLE IF NOT EXISTS books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);

INSERT INTO books (title, author) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald'),
('To Kill a Mockingbird', 'Harper Lee'),
('1984', 'George Orwell');
