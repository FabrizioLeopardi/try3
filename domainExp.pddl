(define (domain domainExp)

(:requirements :strips :typing :fluents :disjunctive-preconditions)

(:types
    marker
    robot
    waypoint
)

(:predicates 
    (robot_at ?r - robot ?wp - waypoint)
    (visited ?wp - waypoint)
    (found ?m - marker)
    (marker_visible ?m - marker ?wp - waypoint)
    (is_next_waypoint ?from - waypoint ?to - waypoint)
)

(:action goto_waypoint
    :parameters (?r - robot ?from ?to - waypoint)
    :precondition (and (robot_at ?r ?from) (is_next_waypoint ?from ?to))
    :effect (and 
                (not (robot_at ?r ?from)) 
                (robot_at ?r ?to) 
                (visited ?to)
        )
)

(:action searchfor_marker
    :parameters (?r -robot ?m - marker ?wp - waypoint)
    :precondition (and (marker_visible ?m ?wp) (robot_at ?r ?wp))
    :effect (and
        (found ?m)
    )
)


)