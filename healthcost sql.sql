# Comparing the avg charges between smokers and non smokers - purpose to quantify how much extra smokers are costing the hospital

SELECT smoker, AVG(charges) AS average_charge
FROM insurance
GROUP BY smoker;

# How BMI affects average cost

SELECT 
  CASE 
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END AS bmi_category,
  AVG(charges) AS average_charge
FROM insurance
GROUP BY bmi_category;

# Avg charges by age groups - premium adjustments based on age brackets

SELECT 
  CASE 
    WHEN age < 30 THEN 'Under 30'
    WHEN age BETWEEN 30 AND 50 THEN '30-50'
    ELSE 'Over 50'
  END AS age_group,
  AVG(charges) AS average_charge
FROM insurance
GROUP BY age_group;

# Regional cost
SELECT region, AVG(charges) AS average_charge
FROM insurance
GROUP BY region;

# Does number of children impact charges - analyze if dependent coverage increases overall costs

SELECT children, AVG(charges) AS average_charge
FROM insurance
GROUP BY children
ORDER BY children;

# cost difference between smokers and non-smokers at different BMI categories

SELECT 
  smoker,
  CASE 
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END AS bmi_category,
  AVG(charges) AS average_charge
FROM insurance
GROUP BY smoker, bmi_category;
