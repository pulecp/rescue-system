#!/bin/bash

#nastaveni profilu - delka historie - aliasy
echo "shopt -s histappend" >> /etc/profile
echo "HISTFILESIZE=20000" >> /etc/profile
echo "HISTSIZE=5000" >> /etc/profile
echo "HISTCONTROL=ignoreboth" >> /etc/profile
echo "export HISTFILESIZE HISTSIZE HISTCONTROL" >> /etc/profile
echo "alias ll='ls -lAXh --color=always '" >> /etc/profile

