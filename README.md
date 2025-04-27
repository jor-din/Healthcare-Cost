# Healthcare Cost Analysis
Medical insurance costs are rising rapidly.  We need to understand what personal factors (like smoking, age, BMI) are causing higher charges.  Our goal is to design better insurance premiums and wellness programs to control future medical costs.

This project analyzes how personal factors such as age, BMI, smoking habits, and region impact individual medical insurance costs.
Using SQL for data exploration and Tableau for visualization, I uncovered key trends and patterns that influence healthcare expenses.

## Tool
- MySQL (data storage, querying, analysis)

- Tableau (dashboard development and visualization)

- Kaggle Medical Cost Personal Dataset ([Link](https://www.kaggle.com/datasets/prasad22/healthcare-dataset))

## Dataset Description
The dataset includes 1,300+ entries with the following fields:


| Column	| Description |
| --- | --- |
| `age`	| Age of the insurance policyholder |
| `sex`	| Gender (male/female) |
| `bmi`	| Body Mass Index |
| `children` |	Number of dependents |
| `smoker`	| Smoking status (yes/no) |
| `region`	| Residential region (northeast, southeast, southwest, northwest)|
|`charges`|	Medical insurance charges (USD) |

## Project Workflow
1. Data Preparation
- Created a new MySQL database (healthcare_costs) and table (MedicalCosts).

- Imported the Kaggle CSV file into MySQL using Table Data Import Wizard.

- Cleaned and verified data types for accurate querying.

2. SQL Data Analysis
<p>Key business questions addressed:</p>

- What is the average medical charge for smokers vs non-smokers?

- How does BMI category (Underweight, Normal, Overweight, Obese) affect charges?

- Are there regional differences in medical costs?

- How does the number of dependents impact insurance charges?

- What trends exist between age and healthcare costs?

Sample SQL query example:
```sql
SELECT smoker, AVG(charges) AS avg_charge
FROM insurance
GROUP BY smoker;
```
3. Data Visualization (Tableau)
Developed an interactive dashboard showing:

![](healthcare_cost_dashboard)
- Average charges based on smoking status

- Medical charges across different BMI groups

- Regional differences in healthcare costs

- Scatter plot of age vs. charges


## Key Findings
- Smoking significantly increases average medical charges by more than double.

- Obese individuals (BMI > 30) have considerably higher charges compared to those with normal BMI.

- The southeast region has the highest average medical costs.

- Age positively correlates with medical expenses, especially among smokers.
