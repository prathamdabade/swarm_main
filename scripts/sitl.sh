#!/bin/bash
gnome-terminal -- sim_vehicle.py --add-param-file=$(rospack find swarm_main)/cfg/apm_params/default_params.parm -v ArduCopter -f gazebo-iris --mavproxy-args="--streamrate=-1"