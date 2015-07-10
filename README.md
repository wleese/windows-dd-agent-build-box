Windows build box for dd-agent
==============================

This repo contains a Vagrantfile along with it's Berksfile and chef recipe to
provision a stadalone machine or a Vagrant VM to be a suitable omnibus builder
for dd-agent. Running ``` vagrant up && vagrant ssh ``` and launching the build
should be enough. I'd love to turn down the GUI to increase performance but I
couldn't really find a way to do it (Windows...)


TODO
====

* Actually find a way to get Berkshelf source our chef cookbook to provision our
  vagrant VM.
* Move a lot of fake software definitions we just use for the omnibus build and
  don't want to ship with the Agent anymore from omnibus software DSL to actual
  recipes in this repo.
* Try to merge the OSX and Windows repos when we get this one working :)

Author: Etienne Lafarge @ Datadog
