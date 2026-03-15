# -*- coding: utf-8 -*-
"""
Created on Fri Mar 13 22:48:50 2026

@author: dell
"""
#Import libraries

import pandas as pd
import numpy as np

#Load dataset

df = pd.read_csv("C:/Users/Dell/Downloads/netflix_titles.csv")

#Check missing values

df.isnull().sum()

#Fill missing values

df['director'].fillna('Unknown', inplace=True)
df['cast'].fillna('Unknown', inplace=True)
df['country'].fillna('Unknown', inplace=True)
df['date_added'].fillna(df['date_added'].mode()[0], inplace=True)

#Convert date column

df['date_added'] = pd.to_datetime(df['date_added'], errors='coerce')

#Create new columns

df['year_added'] = df['date_added'].dt.year
df['month_added'] = df['date_added'].dt.month

#Save cleaned dataset

df.to_csv("C:/Users/Dell/Downloads/netflix_titles2.csv", index=False)