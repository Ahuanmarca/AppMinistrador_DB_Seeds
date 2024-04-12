include .env # Please define USER and DB on .env file

PEOPLE='${CURDIR}/data/people.csv'
BUILDINGS='${CURDIR}/data/buildings.csv'
PROPERTIES='${CURDIR}/data/properties.csv'
PROVIDERS='${CURDIR}/data/providers.csv'
INCIDENCES='${CURDIR}/data/incidences.csv'
ANNOUNCES='${CURDIR}/data/announces.csv'
BANK_ACCOUNTS='${CURDIR}/data/bank_accounts.csv'
BANKING_TRANSACTIONS_1='${CURDIR}/data/banking_transactions_building_1.csv'
BANKING_TRANSACTIONS_2='${CURDIR}/data/banking_transactions_building_2.csv'

SCRIPTS=${CURDIR}/scripts
DROP=$(SCRIPTS)/drop.sql
IMPORT=$(SCRIPTS)/import.sql
NORMALIZE=$(SCRIPTS)/normalize.sql
INSERT=$(SCRIPTS)/insert.sql
BUILD=${CURDIR}/build.sql

DUMP=${CURDIR}/dump

all: dump
	@psql $(DB) -f $(BUILD)

master:
	@cat $(DROP) > $(BUILD)

import: master
	@cat $(IMPORT) >> $(BUILD)

copy: import
	@echo "COPY import.master_people FROM $(PEOPLE) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_buildings FROM $(BUILDINGS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_properties FROM $(PROPERTIES) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_providers FROM $(PROVIDERS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_incidences FROM $(INCIDENCES) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_announces FROM $(ANNOUNCES) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_bank_accounts FROM $(BANK_ACCOUNTS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_banking_transactions FROM $(BANKING_TRANSACTIONS_1) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_banking_transactions FROM $(BANKING_TRANSACTIONS_2) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)

normalize: copy
	@cat $(NORMALIZE) >> $(BUILD)

insert: normalize
	@cat $(INSERT) >> $(BUILD)

dump: insert
	@pg_dump -U $(USER) -d $(DB) -t people -f $(DUMP)/01.sql
	@pg_dump -U $(USER) -d $(DB) -t providers -f $(DUMP)/02.sql 
	@pg_dump -U $(USER) -d $(DB) -t buildings -f $(DUMP)/03.sql
	@pg_dump -U $(USER) -d $(DB) -t users -f $(DUMP)/04.sql
	@pg_dump -U $(USER) -d $(DB) -t announces -f $(DUMP)/05.sql
	@pg_dump -U $(USER) -d $(DB) -t properties -f $(DUMP)/06.sql
	@pg_dump -U $(USER) -d $(DB) -t incidences -f $(DUMP)/07.sql
	@pg_dump -U $(USER) -d $(DB) -t owners_to_properties -f $(DUMP)/08.sql
	@pg_dump -U $(USER) -d $(DB) -t neighbors_to_properties -f $(DUMP)/09.sql
	@pg_dump -U $(USER) -d $(DB) -t bank_accounts -f $(DUMP)/10.sql
	@pg_dump -U $(USER) -d $(DB) -t banking_transactions -f $(DUMP)/11.sql
	@pg_dump -U $(USER) -d $(DB) -t community_fees -f $(DUMP)/12.sql

replicate:
	@psql $(NEON_DATABASE_OWNER) -f $(DUMP)/drop.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/01.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/02.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/03.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/04.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/05.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/06.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/07.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/08.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/09.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/10.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/11.sql
	@psql $(NEON_USERNAME) -f $(DUMP)/12.sql

clean:
	@rm -rf $(BUILD)
	@rm $(DUMP)/[0-9][0-9].sql
