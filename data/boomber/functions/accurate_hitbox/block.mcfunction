execute as @s store result score @s bb.aPosX run data get entity @s Pos[0] 160
execute as @s store result score @s bb.aPosY run data get entity @s Pos[1] 160
execute as @s store result score @s bb.aPosZ run data get entity @s Pos[2] 160

execute as @s store result score @s bb.bPosX run data get entity @s Pos[0] 1
execute as @s store result score @s bb.bPosY run data get entity @s Pos[1] 1
execute as @s store result score @s bb.bPosZ run data get entity @s Pos[2] 1

execute as @s store result score @s bb.bPosX run scoreboard players operation @s bb.bPosX *= #160 bb.variable
execute as @s store result score @s bb.bPosY run scoreboard players operation @s bb.bPosY *= #160 bb.variable
execute as @s store result score @s bb.bPosZ run scoreboard players operation @s bb.bPosZ *= #160 bb.variable

execute as @s store result score @s bb.bPosX run scoreboard players operation @s bb.aPosX -= @s bb.bPosX
execute as @s store result score @s bb.bPosY run scoreboard players operation @s bb.aPosY -= @s bb.bPosY
execute as @s store result score @s bb.bPosZ run scoreboard players operation @s bb.aPosZ -= @s bb.bPosZ

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/flower_pot run function boomber:accurate_hitbox/block/flower_pot
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/slabs run function boomber:accurate_hitbox/block/slabs
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/doors run function boomber:accurate_hitbox/block/door
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence run function boomber:accurate_hitbox/block/fence
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/anvil run function boomber:accurate_hitbox/block/anvil
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/wall run function boomber:accurate_hitbox/block/wall
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/bars run function boomber:accurate_hitbox/block/bars
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/stairs run function boomber:accurate_hitbox/block/stairs
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor run function boomber:accurate_hitbox/block/trapdoor

