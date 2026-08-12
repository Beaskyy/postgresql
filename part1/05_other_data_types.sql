DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  event_name TEXT NOT NULL,
  metadata JSONB DEFAULT '{}':: jsonb,
  created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_events (event_name, metadata)
VALUES
  ('register', '{"email": "beasky@gmail.com"}'),
  ('login', '{"email": "beasky@gmail.com"}');

  SELECT * FROM basics.app_events;

  SELECT event_name, metadata ->> 'email' as email
  FROM basics.app_events
  WHERE metadata ? 'email';