1. select * from regions;
2. select * from regions;
3. select state_name, population from states;
4. select state_name, population from states order by population desc;
5. select state_name from states where region_id=7
6. select state_name, population_density from states where population_density>50 order by population_density
7. select state_name from states where population between 1000000 and 1500000
8. select state_name, region_id from states order by region_id asc
9. select region_name from regions where region_name like "%central%"
10. select region_name, state_name from regions, states order by region_id asc;


What are databases for?
	They provide a relatively easy way to store complex and large collections of data, and make it easy for us to connect those stores of data in ways that allow cross-referencing. That means we can more accurately represent how these types of information interact with each other. 
What is a one-to-many relationship?
	In a one to many relationship, a single entity possesses several attributes. A person only has one age, for instance, but they may have recieved several items on their birthday. A one to many relationship accurately reflects that one item in one table may be linked to several items in another.
What is a primary key? What is a foreign key? How can you determine which is which?
	A primary is a singular idenitfier for an item in a table. A primary key is never duplicated, so accessing that key ensures you will access all of the associated information, some of which may be duplicated across different items on the table. 
	Foreign keys reference primary keys, and as a result can be duplicated across a table. 
How can you select information out of a SQL database? What are some general guidelines for that?
	The syntax for selecting information from a SQL database is consistent, and is a simple chain of commands starting with "select" from there, you simply add more and more criteria until the command is complete. 

	[My clueless database](https://github.com/bobdorff/phase-0/blob/master/8-week/database-intro/Screenshot%202015-12-10%2012.55.01.png)