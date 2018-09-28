execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor[open=false,half=bottom] if score @s bb.bPosX matches 0..160 if score @s bb.bPosY matches 0..30 if score @s bb.bPosZ matches 0..160 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor[open=false,half=top] if score @s bb.bPosX matches 0..160 if score @s bb.bPosY matches 130..160 if score @s bb.bPosZ matches 0..160 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor[open=true,facing=east] if score @s bb.bPosX matches 0..30 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 0..160 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor[open=true,facing=west] if score @s bb.bPosX matches 130..160 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 0..160 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor[open=true,facing=south] if score @s bb.bPosX matches 0..160 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 0..30 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/trapdoor[open=true,facing=north] if score @s bb.bPosX matches 0..160 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 130..160 run tag @s add boomber.accurate_hitbox.hit

