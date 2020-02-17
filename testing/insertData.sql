select author_fname, author_lname from books;

select author_fname as first, author_lname as last, concat(author_fname, " ", author_lname) as fullname from books;

select SUBSTRING('HELLO WORLD', 1, 5);
select SUBSTRING('HELLO WORLD', 7);
select SUBSTRING('HELLO WORLD', -3);
select SUBSTRING("Hello I'AM feeling proud", 1, 10);
select SUBSTRING(title, 1, 10) from books;
select SUBSTR(title, 1, 10) from books;

SELECT UPPER(REVERSE("Why does my cat look at me with such hatred?"));

SELECT replace(concat('I', ' ', 'like', ' ', 'cats'), ' ', '--');

SELECT replace(title, ' ', '->') from books;

SELECT author_lname as forwards, reverse(author_lname) as backwards from books;
SELECT upper(concat_ws(' ', author_fname, author_lname)) as 'full name in caps' from books;

select title, char_length(title) as 'character count' from books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
 
 
SELECT * FROM books;

Select distinct author_lname from books;

Select title, pages from books order by pages DESC limit 1;

Select concat_ws(' - ', title, released_year) from books order by released_year DESC LIMIT 3;

SELECT * FROM books;
SELECT * FROM books WHERE title like '%\%%';

SELECT title FROM books WHERE title like '%Stories%';

select * from books where author_lname like '% %';

select title, released_year, stock_quantity from books order by stock_quantity, title limit 3;

select upper(concat('MY FAVORITE AUTHOR IS ', author_fname,  ' ', author_lname, '!')) as yell from books;

select count(title) as occurance from books where title like '%the%';

select count(*) as records, title, author_lname from books group by author_lname;

select * from books;

select count(*) as total_books from books;
select count(*) as total_books, released_year from books group by released_year;
select sum(stock_quantity) as total_stocked_books from books;
select sum(stock_quantity) as total_stocked_books, released_year from books group by released_year;
select avg(released_year) as AverageReleaseYear from books group by author_lname, author_fname;
select concat(author_fname, ' ', author_lname) as FullName from books where pages = (select max(pages) from books);

select current_time() as current;
select current_date();
select dayofweek(now());
select date_format(now(), '%W');
select dayofweek(now()) - 1;


select released_year as year, count(*) as '\# books', avg(pages) as 'avg pages' from books group by released_year order by released_year;

SELECT 99 < 1;

select * from books;
select title, stock_quantity,
	case
		when released_year > 2000 then 'Moder era'
        else '20th century' 
	end as Era
from books;