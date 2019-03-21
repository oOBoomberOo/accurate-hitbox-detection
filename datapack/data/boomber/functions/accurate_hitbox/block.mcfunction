execute as @s run scoreboard players set @s bb.success 0

execute store result score #bb.acc_hit.bound.x bb.calculation run data get entity @s Pos[0] 160
execute store result score #bb.acc_hit.bound.y bb.calculation run data get entity @s Pos[1] 160
execute store result score #bb.acc_hit.bound.z bb.calculation run data get entity @s Pos[2] 160

execute store result score #bb.acc_hit.block.x bb.calculation run data get entity @s Pos[0] 1
execute store result score #bb.acc_hit.block.y bb.calculation run data get entity @s Pos[1] 1
execute store result score #bb.acc_hit.block.z bb.calculation run data get entity @s Pos[2] 1

scoreboard players operation #bb.acc_hit.block.x bb.calculation *= #160 bb.variable
scoreboard players operation #bb.acc_hit.block.y bb.calculation *= #160 bb.variable
scoreboard players operation #bb.acc_hit.block.z bb.calculation *= #160 bb.variable

scoreboard players operation #bb.acc_hit.bound.x bb.calculation -= #bb.acc_hit.block.x bb.calculation
scoreboard players operation #bb.acc_hit.bound.y bb.calculation -= #bb.acc_hit.block.y bb.calculation
scoreboard players operation #bb.acc_hit.bound.z bb.calculation -= #bb.acc_hit.block.z bb.calculation

execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/stairs[shape=straight] run function boomber:accurate_hitbox/block/stairs/straight
execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/stairs[shape=inner_right] run function boomber:accurate_hitbox/block/stairs/inner_right
execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/stairs[shape=inner_left] run function boomber:accurate_hitbox/block/stairs/inner_left
execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/stairs[shape=outer_right] run function boomber:accurate_hitbox/block/stairs/outer_right
execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/stairs[shape=outer_left] run function boomber:accurate_hitbox/block/stairs/outer_left
execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/slabs run function boomber:accurate_hitbox/block/slabs/slab
execute as @s[scores={bb.success=0}] if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/anvil run function boomber:accurate_hitbox/block/anvil/anvil

execute as @s[scores={bb.success=1}] run tag @s add boomber.accurate_hitbox.hit