+++
date = '2025-10-31T00:06:02Z'
draft = false
title = 'An Excruciatingly Detailed Guide To SSH (But Only The Things I Actually Find Useful)'
+++

# Welcome
We’ve all seen [these great diagrams](https://iximiuz.com/ssh-tunnels/ssh-tunnels.png) of how SSH port forwarding works but if your brain is anything like mine, these diagrams leave you with a lot of unanswered questions. If you’re on a red team, understanding how to traverse a network better than the people who designed it gives you immense power to do evil things. SSH is such a powerful tool but sometimes the syntax and other concepts can get in the way of us accomplishing our goals. In an effort to do more evil things in a timely fashion I’ve put together a massive list of SSH `things` that I find useful. You can read it too, but if I’m being honest, this is mostly for me. I’ve learned that I really don’t grasp concepts unless I have hands on keyboard time doing them. This post is essentially just everything I learned while doing so. Also I should point out that in all of these examples I am using a websever to demonstrate port forwarding but this can be done with almost any service including RDP, SQL, etc.

# Local Port Forwarding (-L)

Like the name implies, local port forwarding allows you to create a local port that is forwarded to a remote port. Let’s assume that the server `internal-web.int` is hosting a webpage that is only accessible on the loopback interface. This means that in order for us to access that webpage, we must be on `internal-web.int`. One way that we can get around this is by using an SSH local port forward. Assuming we SSH access to `internal-web.int`, on the host machine `campfire.int`, we can create a local forward that will allow us to access the remote webserver via a local port.

The command to do this is: `ssh -N -f -L 1337:127.0.0.1:80 root@internal-web.int`. This command is ran on campfire.int. That’s a complicated command, as always, breaking it down by flag will allow us to figure out what exactly is happening.

* `-N`: This lets SSH know that we’re not going to be sending any commands after the server. Without this we’d get a shell on root@internal-web.int

* `-f`: This sends SSH to the background. If we didn’t do this, our terminal would hang and we wouldn’t be able to use it.

* -L Tells SSH to forward a local port

* 1337:127.0.0.1:80: This tells SSH to bind the local port 1337 to the remote port of 80 (the port our webserver is on).









