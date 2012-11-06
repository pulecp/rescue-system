#!/bin/bash

#nastaveni onanie se sipkou nahoru
echo "\"\e[B\": history-search-forward" >> /etc/inputrc
echo "\"\e[A\": history-search-backward" >> /etc/inputrc
