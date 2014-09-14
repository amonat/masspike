psql -d masspike <<EOF
create table if not exists speeds (pairid text, lastupdated timestamp, stale boolean, traveltime double precision, speed double precision, freeflow double precision);
set datestyle to postgres, ymd;
copy speeds from '`pwd`/i90_itf_data.csv' csv header;
EOF
