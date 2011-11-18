# CherCher

Very simple app using MySQL's full-text search function.

## Installation

1. clone the repo
2. change your mysql table engine to myisam

    ``` ALTER TABLE <tbl_name> ENGINE = MyISAM; ```

3. add indices

    ``` ALTER TABLE ADD FULLTEXT(col1 [, col2...]); ```
4. run 

    ``` $ rake db:populate ``` for sample data

5. you should be good to go!
