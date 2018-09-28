execute as @s if score @s bb.bPosX matches 60..100 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 60..100 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[east=true] if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 120..150 if score @s bb.bPosZ matches 0..90 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[east=true] if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 60..90 if score @s bb.bPosZ matches 0..90 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[west=true] if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 120..150 if score @s bb.bPosZ matches 70..160 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[west=true] if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 60..90 if score @s bb.bPosZ matches 70..160 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[south=true] if score @s bb.bPosX matches 70..160 if score @s bb.bPosY matches 120..150 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[south=true] if score @s bb.bPosX matches 70..160 if score @s bb.bPosY matches 60..90 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[north=true] if score @s bb.bPosX matches 0..90 if score @s bb.bPosY matches 120..150 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/fence[north=true] if score @s bb.bPosX matches 0..90 if score @s bb.bPosY matches 60..90 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit
