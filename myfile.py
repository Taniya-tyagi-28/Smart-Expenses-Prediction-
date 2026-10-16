import streamlit as st
import pickle 

model = pickle.load(open("expense_model.pkl","rb"))
vectorizer = pickle.load(open("vectorizer.pkl","rb"))

def predict_category(description):
    desc_tfidf = vectorizer.transform([description.lower()])
    category = model.predict(desc_tfidf)[0]
    return category


# ui 
st.title(" Smart Expense Categorizer")

desc = st.text_input("Enter your expense description:")

if st.button("Predict Category"):
    if desc.strip() != "":
        category = predict_category(desc)
        st.success(f"Predicted Category: {category}")
    else:
        st.warning("Please enter a description first.")