# SQL_case study
create a data base **Health** with following tables:
->Patient table{
      name varcgar;
      address varchar;
      date of birth date;
      contact_info int;
      }
  ->Medical History table{
      dignosis varchar;
      treatments varchar;
      surgeries varchar;
      medication varchar;
      }
  ->Lab results table{
      bloodtest varchar;
      urinetest varchar;
      }
  ->prescription table{
      medicationmane vrachar;
      dosage int;
      frequency int;
      }
  ->Outcome table{
      readmission varchar(1);
      medication varchar;
      }
These are the tables that are included in **Health** data base.
***************************************************************************************************************
Now create  a data base **Library**
Tables in Library:-
->Book{
      Book_id int,
      Title varchar,
      Author varchar,
      Publisher varchar,
      publicationyear YEAR,
      ISBN int,
      Genre varchar,
      Availability;
      }
->Borrower{
      Borrower_id int,
      Name varchar,
      Address varchar,
      Phonenum int,
      Email varchar
      }
->Loans{
      Loan_id int,
      Book_id int,
      Borrower_id int,
      date_borrowed date,
      Duedtae date,
      Date_returned date
      }
->Reservation{
      reservation_id int,
      book_id int,
      Borrower_id int,
      date_reserved date,
      Date_needed date,
      status varchar
      }
These are the tables that are included in the **Library** database.

      
      











  
