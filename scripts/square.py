#! /usr/bin/env python
import rospy
from swarm_utils.utils_api import utils_api

rospy.init_node('takeoff')

def square():
    drone = utils_api()
    drone.set_mode('GUIDED')
    drone.takeoff(3)
    rospy.sleep(10)
    drone.set_waypoint(0,0,3,0)
    rospy.sleep(15)
    drone.land()

if __name__ == '__main__':
    try:
        square()
    except rospy.ROSInterruptException:
        pass
