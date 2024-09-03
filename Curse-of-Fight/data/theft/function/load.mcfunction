# load scoreboards and data
scoreboard objectives add theft.global dummy
scoreboard objectives add theft.uuid0 dummy
scoreboard objectives add theft.uuid1 dummy
scoreboard objectives add theft.uuid2 dummy
scoreboard objectives add theft.uuid3 dummy

scoreboard objectives add theft.motion_x1 dummy
scoreboard objectives add theft.motion_y1 dummy
scoreboard objectives add theft.motion_z1 dummy

scoreboard objectives add theft.motion_x2 dummy
scoreboard objectives add theft.motion_y2 dummy
scoreboard objectives add theft.motion_z2 dummy

data merge storage theft:data {temp:{bobber:[I;0,0,0,0]}}