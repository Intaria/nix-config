#!/bin/bash

sudo pacman -S --needed docker docker-compose

sudo systemctl enable --now docker