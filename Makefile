state_industry.csv : cps.db
	sqlite3 -header -csv $< < scripts/state_industry.sql > $@

states.csv : cps.db
	sqlite3 -header -csv $< < scripts/state.sql > $@

cps.db : cps.csv raw/state_codes.csv raw/industry_codes.csv
	csvs-to-sqlite $^ $@ 

cps.csv : cps_00004.csv.gz
	gunzip -c $< > $@



