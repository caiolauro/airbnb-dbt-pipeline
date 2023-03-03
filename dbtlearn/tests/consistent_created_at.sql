select fct.listing_id, review_date 
from {{ref('fct_reviews')}} fct
join {{ref('dim_listings_cleansed')}} ls on fct.listing_id = ls.listing_id
where created_at > review_date