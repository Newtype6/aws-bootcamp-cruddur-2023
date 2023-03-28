-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown' , 'test@test', 'ea990873-8101-4980-8ba6-50d7407d3e8e'),
  ('John King', 'JK', 'newtype.jk@googlemail.com', 'ea990873-8101-4980-8ba6-50d7407d3e8e'),
  ('Andrew Bayko', 'bayko' , 'lwhite4@sky.com', 'cee56b8f-9b27-43e8-9670-4355e4245f58');

INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )