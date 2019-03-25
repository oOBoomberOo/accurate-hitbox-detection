
execute as @e[tag=boomber.accurate_hitbox.target, distance=..0.1] store result score #bb.acc_hit.bound.x bb.calculation run data get entity @s Pos[0] 100
execute as @e[tag=boomber.accurate_hitbox.target, distance=..0.1] store result score #bb.acc_hit.bound.y bb.calculation run data get entity @s Pos[1] 100
execute as @e[tag=boomber.accurate_hitbox.target, distance=..0.1] store result score #bb.acc_hit.bound.z bb.calculation run data get entity @s Pos[2] 100

execute as @s store result score #bb.acc_hit.entity.x bb.calculation run data get entity @s Pos[0] 100
execute as @s store result score #bb.acc_hit.entity.y bb.calculation run data get entity @s Pos[1] 100
execute as @s store result score #bb.acc_hit.entity.z bb.calculation run data get entity @s Pos[2] 100

scoreboard players operation #bb.acc_hit.bound.x bb.calculation -= #bb.acc_hit.entity.x bb.calculation
scoreboard players operation #bb.acc_hit.bound.y bb.calculation -= #bb.acc_hit.entity.y bb.calculation
scoreboard players operation #bb.acc_hit.bound.z bb.calculation -= #bb.acc_hit.entity.z bb.calculation

scoreboard players set #bb.acc_hit.success bb.success 0

execute if score #bb.acc_hit.success bb.success matches 0 as @s[type=#boomber:accurate_hitbox/zombie_like] run function boomber:accurate_hitbox/entity/zombie_like
