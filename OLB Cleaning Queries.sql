SELECT * FROM roas_dashboard.olb_trade
alter table olb_trade add medium varchar(255)
SELECT * FROM roas_dashboard.olb_trade
alter table olb_trade modify medium varchar(255) after page
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%src=google%'
SELECT * FROM roas_dashboard.olb_trade
update olb_trade clear medium
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = ''
WHERE
    page LIKE '%src=google%'
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%src=google_ads%'
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%src=bing_ads%'
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Email'
WHERE
    page LIKE '%source=email%'
SELECT * FROM roas_dashboard.olb_trade
SELECT * FROM roas_dashboard.olb_trade where medium = Email
SELECT * FROM roas_dashboard.olb_trade where medium = 'Email'
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Email'
WHERE
    page LIKE '%medium=email%'
SELECT * FROM roas_dashboard.olb_trade
SELECT * FROM roas_dashboard.olb_trade where medium = 'Null'
SELECT * FROM roas_dashboard.olb_trade where medium is null
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Email'
WHERE
    page LIKE '%source=sfmc%'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
SELECT * FROM roas_dashboard.olb_trade where page like "%sfmc%"
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Organic'
WHERE
    page LIKE '%/trades/%'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Display'
WHERE
    page LIKE '%display%' AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Web Direct'
WHERE
    page = 'https://www.aspect.co.uk/'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Web Direct'
WHERE
    page = 'https://www.aspect.co.uk/book-now/'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Web Direct'
WHERE
    page = 'https://www.aspect.co.uk/callback/'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
UPDATE olb_trade 
SET 
    medium = 'Organic'
WHERE
    page LIKE '%blog%' AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade
SELECT * FROM roas_dashboard.olb_trade where medium is null
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%ldg%' AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade where medium is null
SELECT * FROM roas_dashboard.olb_trade
SELECT * FROM roas_dashboard.olb_trade where medium is null
UPDATE olb_trade 
SET 
    medium = 'Web Direct'
WHERE
    page LIKE '%pricing%' AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade where medium is null
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%source=google%'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade where medium is null
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%r=google%'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade where medium is null
UPDATE olb_trade 
SET 
    medium = 'Paid Search'
WHERE
    page LIKE '%infinity%'
        AND medium IS NULL
SELECT * FROM roas_dashboard.olb_trade where medium is null
UPDATE olb_trade 
SET 
    medium = 'Unknown'
WHERE
    medium IS NULL
SELECT * FROM roas_dashboard.olb_trade where medium is null
SELECT * FROM roas_dashboard.olb_trade