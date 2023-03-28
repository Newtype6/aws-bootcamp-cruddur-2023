-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown' , 'test@test', 'MOCK'),
  ('John King', 'JK', 'newtype.jk@googlemail.com', 'ea990873-8101-4980-8ba6-50d7407d3e8e'),
  ('Andrew Bayko', 'bayko' , 'anothertest@test', 'MOCK');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )