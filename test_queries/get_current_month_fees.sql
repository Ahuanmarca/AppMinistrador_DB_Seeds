--app-ministrador=# \d community_fees
--                                  Table "public.community_fees"
--    Column    |     Type      | Collation | Nullable |                  Default                   
----------------+---------------+-----------+----------+--------------------------------------------
-- id           | integer       |           | not null | nextval('community_fees_id_seq'::regclass)
-- property_id  | integer       |           |          | 
-- description  | text          |           |          | 
-- building_id  | integer       |           |          | 
-- property_due | numeric(10,2) |           |          | 
-- due_date     | date          |           |          | 
--Indexes:
--    "community_fees_pkey" PRIMARY KEY, btree (id)
--Foreign-key constraints:
--    "fk_building_id" FOREIGN KEY (building_id) REFERENCES buildings(id)
--    "fk_property_id" FOREIGN KEY (property_id) REFERENCES properties(id)

SELECT sum(property_due) AS debt FROM community_fees
    WHERE EXTRACT(YEAR FROM due_date) = EXTRACT(YEAR FROM CURRENT_DATE)
    AND EXTRACT(MONTH FROM due_date) = EXTRACT(MONTH FROM CURRENT_DATE)
    AND building_id = 1;
