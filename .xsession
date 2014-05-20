#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

ssh-agent /bin/bash --login -i ~/.xinitrc

