# Fraudulent Job Postings Classification  

## Introduction  
The goal of this project is to develop a robust classification machine learning model to accurately identify and distinguish between genuine and fraudulent job postings. By leveraging both numerical and textual data, we aim to create a highly effective model to detect and mitigate the risk of fraudulent postings on online platforms.  

This project involves:  
- Preprocessing and analyzing data to extract meaningful insights.  
- Exploring various binary classification models, including Neural Networks.  
- Deploying a model that emphasizes high precision to minimize false positives.  

## Dataset  
The dataset was obtained from Kaggle. It initially consisted of 18,000 rows, which was reduced to a balanced subset of 2,866 rows:  
- 2,000 non-fraudulent job postings.  
- 866 fraudulent job postings.  

The dataset was highly imbalanced, and extensive preprocessing was applied to ensure quality and reliability for modeling.  

## Data Exploration and Preprocessing  
- **Target Variable**: `Fraudulent`.  
- Handled missing data by replacing with empty strings.  
- Reduced and merged categorical columns (`location`, `required_education`, etc.) to simplify analysis.  
- Combined text-based columns (`title`, `company_profile`, `description`, etc.) into a single column, `text`, for ease of processing.  
- Cleaned the text data:  
  - Converted to lowercase.  
  - Removed numbers, stop words, punctuation, and extra white spaces.  
  - Applied stemming for feature reduction.  
- Created a Document Term Matrix (DTM) for feature extraction.  
- Visualized key terms using a word cloud with top 50 words.  
- Split the dataset into training (70%) and testing (30%) subsets.  

## Models and Benchmarks  
### 1. **Baseline Benchmark Model**  
- Simple probability prediction of fraud cases.  
- **Accuracy**: 71.86%.  

### 2. **Naive Bayes Model**  
- **Accuracy**: 84.30%  
- **Precision**: 94.31%  
- **Recall**: 83.17%  
- **F1-Score**: 88.39%  

### 3. **Decision Trees**  
- **Accuracy**: 85.46%  
- **Precision**: 73.88%  
- **Recall**: 74.79%  
- **F1-Score**: 74.33%  

### 4. **Artificial Neural Networks (ANN)**  
- **Accuracy**: 93.48%  
- **Precision**: 86.77%  
- **Recall**: 89.74%  
- **F1-Score**: 88.23%  

## Insights  
- The dataset was highly imbalanced, requiring careful preprocessing to improve model performance.  
- Combining text columns and cleaning textual data improved feature quality for modeling.  
- Naive Bayes and Decision Trees provided reasonable results, but Artificial Neural Networks (ANN) outperformed other models significantly.  

## Conclusion  
The Artificial Neural Network (ANN) model demonstrated the best performance:  
- **Accuracy**: 93.48%  
- **Precision**: 86.77%  
- **Recall**: 89.74%  
- **F1-Score**: 88.23%  

This project highlights the importance of thorough data preprocessing and exploration in creating effective classification models. The ANN model is a promising solution to mitigate the risks of fraudulent job postings on online platforms.  
