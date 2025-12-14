#!/bin/bash


# setup ssh

eval "$(ssh-agent -s)"

cd ~/.ssh
ssh-keygen -t ed25519