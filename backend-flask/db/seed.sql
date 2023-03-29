-- this file was manually created
INSERT INTO public.users (display_name, handle, email, cognito_user_id)
VALUES
  ('Andrew Brown', 'andrewbrown' , 'test@test', 'ea990873-8101-4980-8ba6-50d7407d1ab1'),
  ('Andrew Bayko', 'bayko' , 'anothertest@test', 'ea990873-8101-4980-8ba6-50d7407d2ab2'),
  ('John King', 'JK', 'newxxxx@xxxxxxxxxx.com', 'ea990873-8101-4980-8ba6-50d7407d3e8e'),
  ('Fiona Parsnip', 'FP', 'lwxxxxx@xxx.com', 'e0744cb6-5242-4ed1-b84e-639df6cc8a8f');


INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'andrewbrown' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )
