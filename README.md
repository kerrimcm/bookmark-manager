# Bookmark Manager

Instructions
-------
Follow the steps below to setup the project's databases:

1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
5. To add the title column run the query saved in `02_add_title_to_bookmarks.sql`

* To set up the testing database:
1. Connect to `psql`
2. Create the database using the `psql` command `CREATE DATABASE bookmark_manager_test;`
3. Connect to the database using the `pqsl` command `\c bookmark_manager_test;`
4. Run the same query we have saved in the file `01_create_bookmarks_table.sql` replicating the same table above, but the test version
5. To add the title column run the query saved in `02_add_title_to_bookmarks.sql`

To get started:
1. `git clone` this repository 
2. `cd` into the relevant directory 
3. Run `bundle install`
4. Set up the databases, instructions above
5. Run `rackup` and naviagte to http://localhost:9292/
6. To run the tests, run `rspec`

User story part 1
----
```
As a user 
So I can catch up on my reading 
I would like to see a list of my bookmarks
```

![Domain model user story 1](https://github.com/kerrimcm/bookmark-manager/blob/master/Images/Screenshot%202021-04-19%20at%2014.28.03.png)

User story part 2
----
```
As a user
So that I can keep my list up to date
I can add new bookmarks to my bookmark manager
```

![Domain model user story 2](https://github.com/kerrimcm/bookmark-manager/blob/master/Images/Screenshot%202021-04-20%20at%2017.50.55.png)

User story part 3
----
``` 
As a user
So that I can remove bookmarks I no longer need
I can delete existing bookmarks
```
![Domain model user story 3](https://github.com/kerrimcm/bookmark-manager/blob/master/Images/Screenshot%202021-04-22%20at%2016.18.57.png)

User story part 4
----
```
As a user
So I can change a bookmark in Bookmark Manager
I want to update a bookmark
```
![Domain model user story 4](https://github.com/kerrimcm/bookmark-manager/blob/master/Images/Screenshot%202021-04-23%20at%2016.00.41.png)
