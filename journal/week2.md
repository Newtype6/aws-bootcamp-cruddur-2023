# Week 2 — Distributed Tracing

## Required Homework

### Videos / To-do list

All videos watched and followed along with, including the subsegments solution provided later in the week.  I was actually getting a different error than the one in the videos, a "name not defined" error for the xray_recorder.  It took me a while to see what was happening and after comparing code I realised it's because I was missing the line "from aws_xray_sdk.core import xray_recorder" in user_activities.py

Once I'd resolved this, I managed to follow the rest of the video and saw the trace results in xray on the AWS console, including the 'mock-data' we had set.

The other issue I ran into was when creating xray groups - I couldn't seem to see the group in my AWS console.  I decided I'd try to resolve this before continuing with the xray video.  
With help from a fellow bootcamper pointing me to the right screen I did find the group, though it said it was disabled.  I wondered if it was because the app wasn't running, so I did Docker Compose Up but the backend wasn't running.  I read that someone else had experienced a similar problem and decided to just carry on watching the video.  Turns out, Andrew had the same issue with the backend in this video and solved it.  Watching this and then the CloudWatch Logs video and following along solved both problems - I was able to properly see my Group / Sampling Rule and the backend fired up fine.

In retrospect, I should have just stuck with the video, but I wanted to try and solve it by myself.

## Homework Challenges

This week has been difficult for me to keep up, less owing to the content and more owing to "life."  I've had an incredibly busy week both at work and at home.  Also my wife, my son and myself have all been ill.

I really wanted to be able to submit this homework in time, as I want to try and focus on keeping up and finishing the bootcamp.  (I am away for a week in April, which will push me back by a week, so it's important to me that I stay on track as much as I can).

I will revisit the challenges in my own time, so that I can have a deeper play with the concepts introduced this week.
The other thing I need to research further is tagging in Github - I understand it's something that can help Andrew and the TAs, so I'd like to try and understand how to implement this.  I've read a couple of articles and I plan to try and use this as soon as I am able.

/ edit: short moments later, I've got it!  Within Gitpod I deleted a tag created at an irrelevant point and created a new one named "week_2_complete"
I learnt how to push it to my repo and will continue to add tags as I progress through the bootcamp.

## Side note

Even though we're only at week two, I have learnt a lot about the billing and cost management side of things on the AWS console, which has been very helpful.  I'm trying to keep spend as low as possible and was happy to see that my February AWS bill was just $0.08 !


