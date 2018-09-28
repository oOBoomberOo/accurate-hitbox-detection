execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/wall[up=true] if score @s bb.bPosX matches 40..120 if score @s bb.bPosY matches 0..160 if score @s bb.bPosZ matches 40..120 run tag @s add boomber.accurate_hitbox.hit
              
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/wall[east=true] if score @s bb.bPosX matches 50..110 if score @s bb.bPosY matches 0..140 if score @s bb.bPosZ matches 0..80 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/wall[west=true] if score @s bb.bPosX matches 50..110 if score @s bb.bPosY matches 0..140 if score @s bb.bPosZ matches 80..160 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/wall[south=true] if score @s bb.bPosX matches 80..160 if score @s bb.bPosY matches 0..140 if score @s bb.bPosZ matches 50..110 run tag @s add boomber.accurate_hitbox.hit
execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/wall[north=true] if score @s bb.bPosX matches 0..80 if score @s bb.bPosY matches 0..140 if score @s bb.bPosZ matches 50..110 run tag @s add boomber.accurate_hitbox.hit
