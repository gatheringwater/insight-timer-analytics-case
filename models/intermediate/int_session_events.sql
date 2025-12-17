/* Purpose: 
- prep events for session-level modeling
- normalize incomplete rows
- attach metadata
- define beginnings/ends of sessions

Grain: 
one row per event involved in a session

Logic: 
Group events by session_id, derive session_start_time and session_end_time */

