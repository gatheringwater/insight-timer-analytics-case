Purpose: 
- standardize column names
- enforce types
- clean up nulls
- ensure consistent grain: one row per raw event. this layer is where atomic grain is enforced and protected.

SQL Pattern:
select
    event_date,
    user_id,
    parse_timestamp(event_time) as event_time,
    event_name,
    session_id,
    content_id,
    content_type,
    duration_sec,
    is_paid,
    platform
from {{ source('raw', 'events') }}

Clean up nulls:
- event_date: 
- user_id: fill with -1
- event_time: fill with current timestamp
- event_name: fill with 'unknown'
- session_id: fill with -1
- content_id: fill with -1
- content_type: fill with 'unknown'
- duration_sec: fill with 0
- is_paid: fill with false
- platform: fill with 'unknown'

