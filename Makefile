include .env # Please define USER and DB on .env file

PEOPLE='${CURDIR}/data/people.csv'
BUILDINGS='${CURDIR}/data/buildings.csv'
PROPERTIES='${CURDIR}/data/properties.csv'
PROVIDERS='${CURDIR}/data/providers.csv'
INCIDENCES='${CURDIR}/data/incidences.csv'
ANNOUNCES='${CURDIR}/data/announces.csv'
BANK_ACCOUNTS='${CURDIR}/data/bank_accounts.csv'
BANKING_TRANSACTIONS='${CURDIR}/data/banking_transactions.csv'

SCRIPTS=${CURDIR}/scripts
IMPORT=$(SCRIPTS)/import.sql
NORMALIZE=$(SCRIPTS)/normalize.sql
INSERT=$(SCRIPTS)/insert.sql
BUILD=${CURDIR}/build.sql

all: insert
	@psql $(DB) -f $(BUILD)

dropdb:
	@dropdb $(DB)

createdb: dropdb
	@createdb $(DB)

master: createdb
	@cat $(IMPORT) > $(BUILD)

import: master
	@echo "COPY import.master_people FROM $(PEOPLE) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_buildings FROM $(BUILDINGS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_properties FROM $(PROPERTIES) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_providers FROM $(PROVIDERS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_incidences FROM $(INCIDENCES) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_announces FROM $(ANNOUNCES) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_bank_accounts FROM $(BANK_ACCOUNTS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)
	@echo "COPY import.master_banking_transactions FROM $(BANKING_TRANSACTIONS) WITH DELIMITER ',' HEADER CSV;" >> $(BUILD)

normalize: import
	@cat $(NORMALIZE) >> $(BUILD)

insert: normalize
	@cat $(INSERT) >> $(BUILD)

clean:
	@rm -rf $(BUILD)
