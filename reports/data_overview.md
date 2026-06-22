# Dataset Overview

## Introduction

This project uses the Airbnb dataset for NewYork obtained from Inside Airbnb.

The dataset consists of three main files:

* listings.csv
* reviews.csv
* calendar.csv

## listings.csv

Purpose:
Contains information about Airbnb properties.

Important Columns:

* listing_id
* host_id
* room_type
* price
* neighbourhood

Observation:

Each row represents one Airbnb listing.

## reviews.csv

Purpose:
Contains guest reviews.

Important Columns:

* listing_id
* review_date
* comments

Observation:

A listing can have multiple reviews.

## calendar.csv

Purpose:
Contains daily availability and pricing information.

Important Columns:

* listing_id
* date
* available
* price

Observation:

A listing can have many calendar records.

## Relationships

One host can own multiple listings.

One listing can have multiple reviews.

One listing can have multiple calendar records.
