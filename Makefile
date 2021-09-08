cps.csv : cps_00003.csv.gz
	gunzip -c $< > $@

cps.db : cps.csv
	csvs-to-sqlite $< $@

states.csv : cps.db
	sqlite3 -header -csv $< < scripts/state.sql > $@

state_industry.csv : cps.db
	sqlite3 -header -csv $< < scripts/state_industry.sql > $@
