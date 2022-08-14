\c docker

CREATE TABLE core.tasks (
  task_id uuid NOT NULL DEFAULT gen_random_uuid(),
  task_name varchar(30) NOT NULL CHECK (length(task_name) > 0),
  task_detail varchar(255) NOT NULL CHECK (length(task_detail) > 0),
  _created_at timestamptz NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY(task_id)
);

CREATE INDEX idx_tasks_created_at ON core.tasks USING btree (_created_at);

GRANT ALL PRIVILEGES ON core.tasks TO gopher;

INSERT INTO core.tasks (task_name, task_detail) VALUES (
  'study',
  'study about math'
), (
  'buy',
  'buy banana at grocery store'
);
