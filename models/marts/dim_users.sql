Grain: one row per user 

Derived fields:
    - first_seen_date
    - first_session_date
    - days_active_first_7
    - total_sessions_completed
    - ever_subscribed
    - days_to_subscribe

DBT Tests:
- unique: user_id
- not null: user_id