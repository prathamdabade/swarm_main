#!/bin/bash
gnome-terminal --tab -- bash -c "sim_vehicle.py -v ArduCopter -f gazebo-drone1 -I0 --console --out=tcpin:0.0.0.0:8000 --mavproxy-args=--streamrate=-1"
gnome-terminal --tab -- bash -c "sim_vehicle.py -v ArduCopter -f gazebo-drone2 -I1 --console --out=tcpin:0.0.0.0:8100 --mavproxy-args=--streamrate=-1"
gnome-terminal --tab -- bash -c "sim_vehicle.py -v ArduCopter -f gazebo-drone3 -I2 --console --out=tcpin:0.0.0.0:8200 --mavproxy-args=--streamrate=-1"