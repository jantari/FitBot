# FitBot
I have been adding to open source repos to participate in Hacktoberfest and I thought it might be fun to add one of my own ideas.

This project was a little Slackbot I built at the beginning of quarantine to remind my fellow coworkers and me to be active throughout the day as we work from home.

I wrote a powershell script to randomize a set of exercises (e.g., 25 crunches) and post one at random every hour in our designated channel. 
I did this by running a scheduled task on my local machine, but certainly a good upgrade would be to put it on a server/virtual machine. 

The hardest part (not too much effort) was configuring the webhook to fire in our workspace.
