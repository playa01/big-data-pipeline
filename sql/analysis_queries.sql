-- Example Hive analysis queries used by the coursework dashboard.

-- Companies by province
SELECT
    province,
    COUNT(*) AS company_count
FROM enterprise_risk
GROUP BY province
ORDER BY company_count DESC;

-- State-owned vs private companies
SELECT
    CASE WHEN is_state_owned = 1 THEN 'state_owned' ELSE 'private_or_other' END AS ownership_type,
    COUNT(*) AS company_count
FROM enterprise_risk
GROUP BY CASE WHEN is_state_owned = 1 THEN 'state_owned' ELSE 'private_or_other' END;

-- Regional risk indicator
SELECT
    province,
    AVG(target) AS risk_rate
FROM enterprise_risk
GROUP BY province
ORDER BY risk_rate DESC;

-- Companies by top-level industry
SELECT
    industry_l1_name,
    COUNT(*) AS company_count
FROM enterprise_risk
GROUP BY industry_l1_name
ORDER BY company_count DESC;

