# Week 2 — Distributed Tracing

## Required Homework

### Videos / To-do list

All videos watched and followed along with, including the subsegments solution provided later in the week.  I was actually getting a different error than the one in the videos, a "name not defined" error for the xray_recorder.  It took me a while to see what was happening and after comparing code I realised it's because I was missing the line "from aws_xray_sdk.core import xray_recorder" in user_activities.py

Once I'd resolved this, I managed to follow the rest of the video and saw the trace results in xray, including the 'mock-data' we had set.

The other issue I ran into was when creating xray groups - I couldn't seem to see the group in my AWS console.  I decided I'd try to resolve this before continuing with the xray video.  
With help from a fellow bootcamper pointing me to the right screen I did find the group, though it said it was disabled.  I wondered if it was because the app wasn't running, so I did Docker Compose Up but the backend wasn't running.  I read that someone else had experienced a similar problem and decided to just carry on watching the video.  Turns out, Andrew had the same issue with the backend in this video and solved it.  Watching this and then the CloudWatch Logs video and following along solved both problems - I was able to properly see my group / sample 
