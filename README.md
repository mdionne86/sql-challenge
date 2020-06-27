# sql-challenge

## Database Creation
First, I designed the schema using www.quickdatabasediagrams.com. I've been using draw.io to design schemas at work, but this is far superior (though I guess it should be since it requires a subscription and draw.io is free!).
<div style="page-break-after: always;"></div>
Second, I created the SQL scripts to create the tables and define the primary keys (PK) and foreign keys (FK).
<div style="page-break-after: always;"></div>
Last was importing the data. The HW readme suggested loading data "in the order the tables were created", however I found that I needed to create the tables with PKs only first, then I created the tables with FKs second. This is likely due to me actually setting the FK relationships in the SQL