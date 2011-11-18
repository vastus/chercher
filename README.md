# CherCher

Very simple app using MySQL's full-text search function.

## Installation

* clone the repo
* change your mysql table engine to myisam
    @alter table <tbl_name> engine = myisam;@
* add indices
    @alter table add fulltext(col1 [, col2...]);@
* run rake db:populate for sample data
* you should be good to go!
