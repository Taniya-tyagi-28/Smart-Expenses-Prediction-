### Smart Expense Categorizer – Machine Learning Web App:-

This project is a Streamlit-based machine learning web application that automatically categorizes user-entered expense descriptions into appropriate categories (e.g., Food, Travel, Shopping, Bills, etc.).

It uses a text classification model trained on TF-IDF features to understand and classify expenses.

---

### Features

* Simple and interactive Streamlit UI
* Classifies expenses based on short text descriptions(e.g., "Bought groceries" → Food)
* Uses a vectorizer (TF-IDF) to convert text into numerical features
* Predicts category using a pre-trained ML model
* Instant prediction with clean UI

---

### Technologies Used

| Component            | Technology        |
|---------------------|-------------------|
| Programming Language | Python            |
| Web App Framework    | Streamlit         |
| Model Storage        | Pickle            |
| Text Vectorization   | TF-IDF (Scikit-learn) |
| Classification Model | expense_model.pkl |

---

### Project Structure

| File / Folder Name              | Description                               |
|---------------------------------|-------------------------------------------|
| myfile.py                       | Main Streamlit application file           |
| expense_model.pkl               | Trained ML model for expense prediction   |
| vectorizer.pkl                  | TF-IDF vectorizer for text processing     |
| synthetic_expenses_500.csv      | Training dataset (optional)               |
| smart_expenses_dashboard.pbix   | Power BI dashboard for visual insights    |
| README.md                       | Project documentation                     |

---

### How to Run the Application
1. Install required libraries
```
pip install streamlit scikit-learn pandas numpy pickle-mixin
```

3. Run the Streamlit app
```
streamlit run myfile.py
```

After running, your default browser will open the app automatically.

---

### How It Works

* User enters an expense description
* Description is converted to TF-IDF features using vectorizer.pkl
* Trained ML model (expense_model.pkl) predicts category
* Output is displayed as a clean success message

---

###   User Interface Overview
Input:
* Text field: "Enter your expense description"

Output:
* Predicted category (e.g., Food, Travel, Shopping)

---

### Example Usage

| User Input Example           | Predicted Category |
|------------------------------|---------------------|
| "Zomato order"               | Food                |
| "Uber ride to airport"       | Travel              |
| "Paid electricity bill"      | Utilities           |
| "Bought shirt from mall"     | Shopping            |

---


