create database Library;
use Library;
create table Book(Book_id int,Title varchar(50),Author varchar(50),Publisher varchar(50),Publication_year year,ISBN int,Genre varchar(30),Available varchar(1));
INSERT INTO Book VALUES (1, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', 1960, 97800, 'Fiction', 'Y');
INSERT INTO Book VALUES (2, '1984', 'George Orwell', 'Secker & Warburg', 1949, 97804, 'Dystopian Fiction', 'Y');
INSERT INTO Book VALUES (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Charles Scribner''s Sons', 1925, 97807, 'Fiction', 'Y');
INSERT INTO Book VALUES (4, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, 97803, 'Fiction', 'Y');
INSERT INTO Book VALUES (5, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', 1913, 439518, 'Romance, Fiction', 'Y');
select * from Book;
ALTER TABLE Book ADD PRIMARY KEY (Book_id);
CREATE TABLE Borrower (
  id INT,
  name VARCHAR(50),
  address VARCHAR(100),
  phone_number VARCHAR(20),
  email VARCHAR(50)
);
INSERT INTO Borrower VALUES (1, 'John Doe', '123 Main Street, City, Country', '123-456-7890', 'johndoe@example.com');
INSERT INTO Borrower VALUES (2, 'Jane Smith', '456 Elm Street, City, Country', '987-654-3210', 'janesmith@example.com');
INSERT INTO Borrower VALUES (3, 'Alice Johnson', '789 Oak Avenue, City, Country', '555-123-4567', 'alicejohnson@example.com');
INSERT INTO Borrower VALUES (4, 'Bob Williams', '321 Pine Road, City, Country', '444-555-6666', 'bobwilliams@example.com');
INSERT INTO Borrower VALUES (5, 'Sarah Davis', '567 Maple Lane, City, Country', '777-888-9999', 'sarahdavis@example.com');
ALTER TABLE Borrower ADD PRIMARY KEY (id);
CREATE TABLE Loans (
  loan_id INT,
  Book_id INT,
  id INT,
  date_borrowed DATE,
  due_date DATE,
  date_returned DATE
);
INSERT INTO Loans VALUES (1, 1, 1, '2023-06-15', '2023-07-15', '2023-07-03');
INSERT INTO Loans VALUES (2, 2, 2, '2023-06-20', '2023-07-20', NULL);
INSERT INTO Loans VALUES (3, 3, 2, '2023-06-25', '2023-07-25', '2023-07-05');
INSERT INTO Loans VALUES (4, 4, 3, '2023-06-30', '2023-07-30', NULL);
INSERT INTO Loans VALUES (5, 1, 2, '2023-07-05', '2023-08-05', NULL);
ALTER TABLE Loans
ADD CONSTRAINT FK_Book FOREIGN KEY (book_id) REFERENCES Book (Book_id),
ADD CONSTRAINT FK_Borrower FOREIGN KEY (id) REFERENCES Borrower (id);
CREATE TABLE Reservation (
  reservation_id INT,
  book_id INT,
  Id INT,
  date_reserved DATE,
  date_needed DATE,
  status VARCHAR(10)
);
INSERT INTO Reservation VALUES (1, 1, 1, '2023-06-15', '2023-06-30', 'Active');
INSERT INTO Reservation VALUES (2, 2, 2, '2023-06-20', '2023-07-05', 'Canceled');
INSERT INTO Reservation VALUES (3, 3, 3, '2023-06-25', '2023-07-10', 'Expired');
INSERT INTO Reservation VALUES (4, 2, 4, '2023-06-30', '2023-07-15', 'Active');
INSERT INTO Reservation VALUES (5, 3, 2, '2023-07-05', '2023-07-20', 'Active');
ALTER TABLE Reservation 
ADD CONSTRAINT FK1_Book FOREIGN KEY (book_id) REFERENCES Book (Book_id),
ADD CONSTRAINT FK1_Borrower FOREIGN KEY (id) REFERENCES Borrower (id);
-- get all available books
select * from Books Where Availability='Y';
-- get all borrowed books
SELECT Book.Title, Book.Author, Borrower.Name, Loans.Date_Borrowed, Loans.Due_Date

FROM Book

INNER JOIN Loans ON Book.Book_ID = Loans.Book_ID

INNER JOIN Borrower ON Loans.ID = Borrower.ID;

-- Get all reserved books:

SELECT Book.Title, Book.Author, Reservation.Date_Reserved,Reservation.Date_Needed

FROM Book

INNER JOIN Reservation ON Book.Book_ID = Reservation.Book_ID;


