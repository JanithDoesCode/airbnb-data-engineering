import sqlite3
import pandas as pd

# connecting to database
conn = sqlite3.connect("airbnb.db")

# load cleaned csv files
listings = pd.read_csv("../data/processed/listings_clean.csv")
reviews = pd.read_csv("../data/processed/reviews_clean.csv")
calendar = pd.read_csv("../data/processed/calendar_clean.csv")

listings.to_sql(
    "listings",
    conn,
    if_exists="replace",
    index=False
)

reviews.to_sql(
    "reviews",
    conn,
    if_exists="replace",
    index=False
)

calendar.to_sql(
    "calendar",
    conn,
    if_exists="replace",
    index=False
)

print("Database created successfully!")

conn.close()