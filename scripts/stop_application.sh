#!/bin/bash
cd /home/ec2-user/nestjs-app
pm2 stop nestjs-app || true
