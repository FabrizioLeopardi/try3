(define (problem problemExp)
(:domain domainExp)
(:objects 
    wp0 wp1 wp2 wp3 wp4 - waypoint
    r - robot
    m11 m12 m13 m15 - marker
)

(:init 
    (robot_at r wp0)
    (not (robot_at r wp1))
    (not (robot_at r wp2))
    (not (robot_at r wp3))
    (not (robot_at r wp4))
    (marker_visible m11 wp1)
    (marker_visible m12 wp2)
    (marker_visible m13 wp3)
    (marker_visible m15 wp4)
    (not (visited wp0))
    (not (visited wp1))
    (not (visited wp2))
    (not (visited wp3))
    (not (visited wp4))
    (not (found m11))
    (not (found m12))
    (not (found m13))
    (not (found m15))
    (is_next_waypoint wp0 wp1)
    (is_next_waypoint wp1 wp2)
    (is_next_waypoint wp2 wp3)
    (is_next_waypoint wp3 wp4)
    (is_next_waypoint wp4 wp0)
)

(:goal (and 
    (found m11)
    (found m12)
    (found m13)
    (found m15)
    (visited wp0)
))



)