Grain: 
one row per session

Columns: 
 - session_id (primary key)
 - user_id
 - session_start_time
 - session_end_time
 - num_starts
 - num_completions
 - total_meditation_minutes
 - platform

 DBT Tests:
 - unique: session_id
 - not null: session_id
 - not null: user_id
 - relationships:
    - to: ref('stg_events')
    - field: user_id

