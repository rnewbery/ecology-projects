DROP TABLE IF EXISTS butterfly_surveys;

CREATE TABLE butterfly_surveys (
date DATE,
site TEXT,
method TEXT,
species_common TEXT,
species_scientific TEXT,
count_min INTEGER,
weather TEXT,
beaufort_scale TEXT,
habitat_type TEXT,
habitat_number INTEGER
);

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'butterfly_surveys'
ORDER BY ordinal_position;

SELECT COUNT(*) FROM butterfly_surveys;

SELECT date, COUNT(*)
FROM butterfly_surveys
GROUP BY date
ORDER BY date;

SELECT species_common, COUNT(*) AS n
FROM butterfly_surveys
GROUP BY species_common
ORDER BY species_common;

SELECT habitat_type, habitat_number, COUNT(*) AS n
FROM butterfly_surveys
GROUP BY habitat_type, habitat_number
ORDER BY habitat_type, habitat_number

SELECT *
FROM butterfly_surveys
WHERE count_min <= 0 OR count_min IS NULL;

SELECT habitat_type,
       SUM(count_min) AS total_abundance
FROM butterfly_surveys
GROUP BY habitat_type
ORDER BY total_abundance DESC;

SELECT habitat_type,
       COUNT(DISTINCT species_common) AS species_richness
FROM butterfly_surveys
GROUP BY habitat_type
ORDER BY species_richness DESC;

SELECT habitat_type,
       species_common,
       SUM(count_min) AS total_count
FROM butterfly_surveys
GROUP BY habitat_type, species_common
ORDER BY habitat_type, total_count DESC;

SELECT date,
       SUM(count_min) AS total_abundance
FROM butterfly_surveys
GROUP BY date
ORDER BY date;

SELECT weather,
       SUM(count_min) AS total_abundance
FROM butterfly_surveys
GROUP BY weather;

SELECT species_common,
       COUNT(*) AS records,
       SUM(count_min) AS total_count
FROM butterfly_surveys
GROUP BY species_common
ORDER BY total_count DESC;

SELECT habitat_type,
       SUM(count_min) AS habitat_total,
       ROUND(
         100.0 * SUM(count_min) / SUM(SUM(count_min)) OVER (),
         1
        ) AS percent_of_total
FROM butterfly_surveys
GROUP BY habitat_type
ORDER BY percent_of_total DESC;

SELECT habitat_type,
       species_common,
       SUM(count_min) AS total_count
FROM butterfly_surveys
GROUP BY habitat_type, species_common
ORDER BY habitat_type, total_count DESC;

SELECT
  habitat_type,
  COUNT(*) AS records,
  SUM(count_min) AS total_abundance,
  COUNT(DISTINCT species_common) AS richness
FROM butterfly_surveys
GROUP BY habitat_type
ORDER BY total_abundance DESC;