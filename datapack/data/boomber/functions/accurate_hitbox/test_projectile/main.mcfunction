execute as @s at @s anchored eyes positioned ^ ^ ^0.1 run summon area_effect_cloud ~ ~ ~ {Tags:["boomber.accurate_hitbox.test_projectile"], Age: 0, Duration: 1}
execute as @s at @s run data modify entity @e[type=area_effect_cloud, tag=boomber.accurate_hitbox.test_projectile, limit=1] Rotation set from entity @s Rotation
execute as @e[type=area_effect_cloud, tag=boomber.accurate_hitbox.test_projectile, limit=1] at @s positioned ^ ^ ^0.1 run function boomber:accurate_hitbox/test_projectile/raycast
