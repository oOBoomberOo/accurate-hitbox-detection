execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/end_portal_frame if score @s bb.bPosX matches 0..160 if score @s bb.bPosY matches 0..130 if score @s bb.bPosZ matches 0..160 run tag @s add boomber.accurate_hitbox.hit

execute as @s if block ~ ~ ~ #boomber:accurate_hitbox/partial_block/end_portal_frame[eye=true] if score @s bb.bPosX matches 40..120 if score @s bb.bPosY matches 130..160 if score @s bb.bPosZ matches 40..120 run tag @s add boomber.accurate_hitbox.hit
