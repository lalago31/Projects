# Lending Club - Loan Default Prediction

### Objective
It is important to understand what type of loans have potential risks of default in order to help investors make informed decision to purchase Lending Club loans and to give the LC platform more confidence in loan underwriting. The key to finding out the loan default pattern is to understand the characteristics of the loan borrowers.

### Data 
The data source for this project consists of 2 datasets - 
- lc_data_tape.csv contains all the information about the issued loan and borrowers' demographic and credit information.
- lc_payment_file.csv contains a snapshot of the historical loan payment.

### Work Flow
The ipython notebook contains the following parts:
 1. Feature exploration, transformation and selection through extensive EDA to understand the key factors for loan default rate and interest rate.
 2. Build classification models that learns the patterns in the historical bad loan and make prediction on the current and newly issued loans.
 3. Evaluate the model performances and feature importances to uncover what attributes contribute the most to the loan default.
