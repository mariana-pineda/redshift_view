
CREATE TABLE purgo_ai.events (
  event_id INT,
  event_start_time TIMESTAMP,
  event_end_time TIMESTAMP
) USING DELTA;
