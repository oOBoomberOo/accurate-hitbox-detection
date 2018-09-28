execute as @s if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/bars[east=true] if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 0..70 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/bars[west=true] if score @s bb.bPosX matches 70..90 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 90..160 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/bars[south=true] if score @s bb.bPosX matches 90..160 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/bars[north=true] if score @s bb.bPosX matches 0..70 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 70..90 run tag @s add boomber.accurate_hitbox.hit
