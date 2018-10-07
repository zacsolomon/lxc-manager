#!/bin/bash

echo "LXC-manager, by zac solomon"
echo "What would you like to do?"
echo "start, stop, or destroy?"
read user_function

if [ $user_function == "start" ]
then
        echo "Which containers would you like to start?"
        read CONTAINERS
        for container in $CONTAINERS; do
                echo "Starting $container"
                lxc-start -n $container
        done
fi

if [ $user_function == "stop" ]
then
        echo "Which containers would you like to stop?"
        read CONTAINERS
        for container in $CONTAINERS; do
                echo "Stopping $container"
                lxc-stop -n $container
        done
fi

if [ $user_function == "destroy" ]
then
        echo "Which containers would you like to destroy?"
        read CONTAINERS
        for container in $CONTAINERS; do
                echo "Destroying $container"
                lxc-destroy -n $container
        done
fi
