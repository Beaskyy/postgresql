DROP TABLE IF EXISTS basics.app_events

CREATE TABLE basics.app_events (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
)