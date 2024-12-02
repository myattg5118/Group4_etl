{{ config(materialized='table') }}

SELECT
    incident_zip,
    COUNT(*) AS total_noise_complaints
FROM
    `team4project-4400.Noise_complaints_311` -- Your cleaned data table
GROUP BY
    incident_zip
ORDER BY
    total_noise_complaints DESC;