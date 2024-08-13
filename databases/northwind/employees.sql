INSERT INTO employees (
  employee_id, first_name, last_name, title, title_of_courtesy, birth_date,
  hire_date, address, city, region, postal_code, country, phone, extension, reports_to
)
VALUES
  (1,"Nancy","Davolio","Sales Representative","Ms.","1968-12-08","2012-05-01","507 - 20th Ave. E.Apt. 2A","Seattle","North America","98122","USA","(206) 555-9857","5467",NULL),
  (2,"Andrew","Fuller","Vice President, Sales","Dr.","1972-02-19","2012-08-14","908 W. Capital Way","Tacoma","North America","98401","USA","(206) 555-9482","3457",NULL),
  (3,"Janet","Leverling","Sales Representative","Ms.","1983-08-30","2012-04-01","722 Moss Bay Blvd.","Kirkland","North America","98033","USA","(206) 555-3412","3355",NULL),
  (4,"Margaret","Peacock","Sales Representative","Mrs.","1957-09-19","2013-05-03","4110 Old Redmond Rd.","Redmond","North America","98052","USA","(206) 555-8122","5176",NULL),
  (5,"Steven","Buchanan","Sales Manager","Mr.","1975-03-04","2013-10-17","14 Garrett Hill","London","British Isles","SW1 8JR","UK","(71) 555-4848","3453",NULL),
  (6,"Michael","Suyama","Sales Representative","Mr.","1983-07-02","2013-10-17","Coventry House\\nMiner Rd.","London","British Isles","EC2 7JR","UK","(71) 555-7773","428",NULL),
  (7,"Robert","King","Sales Representative","Mr.","1980-05-29","2014-01-02","Edgeham Hollow\\nWinchester Way","London","British Isles","RG1 9SP","UK","(71) 555-5598","465",NULL),
  (8,"Laura","Callahan","Inside Sales Coordinator","Ms.","1978-01-09","2014-03-05","4726 - 11th Ave. N.E.","Seattle","North America","98105","USA","(206) 555-1189","2344",NULL),
  (9,"Anne","Dodsworth","Sales Representative","Ms.","1986-01-27","2014-11-15","7 Houndstooth Rd.","London","British Isles","WG2 7LT","UK","(71) 555-4444","452",NULL);


/*
  To set the reports_to value, we should to create the employees first to know their employee_ids
  Now we have created all employees, we update the reports_to column with the folowwing queries.
*/

UPDATE employees SET reports_to = 2 WHERE employee_id IN (1, 3,4, 5, 8);
UPDATE employees SET reports_to = 5 WHERE employee_id IN (6, 7, 9);
