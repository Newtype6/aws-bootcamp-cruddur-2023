# Week 4 — Postgres and RDS

## Required videos / tasks

I honestly don't know where to start writing about this week!  Like a lot of bootcampers, there were various things here I struggled with.
It's taken me a long time to catch up and it's been very difficult around "normal life" (not an excuse, I know we're all the same - just saying!)

Anyway after watching the videos multiple times / comparing code / looking for solutions online / debugging through errors the logs were throwing at me / chatting to others on the discord, I have FINALLY completed all of the required tasks and I believe I am at the same state as Andrew was at the end of the week 4 videos.  Even down to the point where my SQL printing is delayed too, and only seems to appear if I move a piece of code or a space etc., then move it back, and the printing then appears in the logs.

I do have one strange issue I'm left with, as described below.

When creating a user, all of the details are passed into the users table and posting cruds works fine, including the user_handle showing my name and not "Andrew Brown."  But the details don't persist in the database between sessions, even though the user is in the cognito pool and the lambda has done it's job.  The next time I run the db and give the command "select * from users;" my created users details don't show.  I have to create a new user when I've spun up a new workspace, for it to work.  Those details then appear in the table and the new user can post cruds.  Previously created users can still sign in to cruddur but can not post (NotNullViolation error) and don't show up in the db anymore.  I wonder if this is because we're working with the db in prod mode?  It doesn't seem right to me, so I will look into this further.

However for now, it's something I can work around and I'm keen to push on and proceed with week 5.

### EDIT

The problem described above seems to have resolved and the most recent user I created has persisted in the database.  It's possible though that it's because there wasn't a lot of time between deleting the open workspace and starting a new one.  Further testing required.
