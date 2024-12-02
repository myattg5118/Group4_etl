
SELECT
    EXTRACT(HOUR FROM TIMESTAMP(created_date)) AS hour_of_day
    COUNT(*) AS total_noise_complaints
FROM
    `team4project-4400.Noise_complaints_311` -- Your cleaned data table
GROUP BY
    hour_of_data
ORDER BY
    total_noise_complaints DESC;
