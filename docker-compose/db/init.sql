CREATE TABLE resale_flats_data (
    month VARCHAR(10) NOT NULL,
    town VARCHAR(50) NOT NULL,
    flat_type VARCHAR(20) NOT NULL,
    block VARCHAR(10) NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    storey_range VARCHAR(20) NOT NULL,
    floor_area_sqm FLOAT NOT NULL,
    flat_model VARCHAR(100) NOT NULL,
    lease_commence_date INT NOT NULL,
    remaining_lease VARCHAR(100) NOT NULL,
    resale_price FLOAT NOT NULL
);

COPY resale_flats_data FROM '/var/lib/postgresql/datagovsg/resale-flat-prices-based-on-registration-date-from-jan-2017-onwards.csv' DELIMITER ',' CSV HEADER;