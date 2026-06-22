# Data Quality Report

## Dataset Summary

The Airbnb listings dataset was profiled to identify data quality issues before further analysis and modeling.

The primary issues identified were:

* Missing values
* Incomplete host information
* Missing review metrics
* Missing pricing information
* Minor missing values in property attributes

No critical identifier fields were found to be substantially missing.

---

## Missing Value Analysis

### High Missingness Columns (>30%)

The following columns contained a very large number of missing values:

| Column Group              | Missing Count |
| ------------------------- | ------------: |
| host_since                |        35,036 |
| host_thumbnail_url        |        35,036 |
| host_neighbourhood        |        35,036 |
| host_verifications        |        35,036 |
| host_total_listings_count |        35,036 |
| host_acceptance_rate      |        35,036 |
| host_response_time        |        35,036 |
| host_response_rate        |        35,036 |
| neighbourhood             |        35,036 |
| calendar_updated          |        35,036 |
| instant_bookable          |        35,036 |

### Assessment

These fields appear to originate from host-profile metadata and platform-generated attributes. Due to the extremely high proportion of missing values, these fields require careful evaluation before being used in downstream analysis.

---

### Property Attribute Missingness

Several property-related fields contained substantial missing values:

| Column    | Missing Count |
| --------- | ------------: |
| beds      |        31,275 |
| bathrooms |        31,239 |
| license   |        29,974 |
| bedrooms  |        12,064 |

### Assessment

These attributes are potentially useful for pricing and accommodation analysis. Missing values will be handled using appropriate imputation strategies or excluded from analyses requiring these variables.

---

### Pricing Data Missingness

The following pricing-related fields contained missing values:

| Column                      | Missing Count |
| --------------------------- | ------------: |
| price                       |        14,343 |
| price_quote_price_per_night |        14,343 |
| price_quote_total_price     |        14,343 |
| estimated_revenue_l365d     |        14,343 |

### Assessment

Since price is a key business metric, records with missing pricing information require additional investigation before analysis.

---

### Review Metrics Missingness

Review-related fields contained approximately 10,500 missing values each:

* review_scores_rating
* review_scores_accuracy
* review_scores_cleanliness
* review_scores_communication
* review_scores_checkin
* review_scores_location
* review_scores_value
* reviews_per_month
* first_review
* last_review

### Assessment

These missing values likely correspond to listings that have not yet received reviews. This is expected business behavior rather than a data quality failure.

---

### Host Information Missingness

Several host profile fields contained moderate missingness:

* host_location
* host_about
* host_profile_url
* host_picture_url
* host_name
* host_is_superhost
* host_identity_verified

### Assessment

These fields are useful for host-level analysis but are not critical for constructing the core listing dataset.

---

### Low Missingness Columns

The following columns contain only a very small number of missing values:

* bathrooms_text
* minimum_nights
* maximum_nights
* minimum_minimum_nights
* maximum_minimum_nights
* minimum_maximum_nights
* maximum_maximum_nights
* name

### Assessment

These records can be handled individually with minimal impact on overall dataset quality.

---

## Data Cleaning Strategy

The following actions will be performed during the transformation phase:

1. Convert pricing fields to numeric format.
2. Convert date fields to datetime format.
3. Investigate and handle missing pricing records.
4. Treat missing review scores as "no reviews" where appropriate.
5. Evaluate whether high-missingness host fields should be retained or removed.
6. Validate property attributes such as beds, bathrooms, and bedrooms.
7. Remove duplicate records if identified.

---

## Overall Assessment

The dataset is suitable for analysis and modeling. Most missing values occur in optional host metadata, review-related attributes, and property characteristics. The core listing information remains sufficiently complete for exploratory analysis, data modeling, and downstream engineering tasks.
