execute as @s run tp @s ~ ~ ~
execute as @s run scoreboard players add @s bb.dist_travel 1
execute as @s at @s run function boomber:accurate_hitbox/detect
execute as @s[tag=boomber.accurate_hitbox.hit] at @s run particle flame ^ ^ ^-0.1 0 0 0 0 5 normal @a
execute as @s[tag=!boomber.accurate_hitbox.hit, scores={bb.dist_travel=..1000}] anchored feet positioned ^ ^ ^0.1 run function boomber:accurate_hitbox/test_projectile/raycast