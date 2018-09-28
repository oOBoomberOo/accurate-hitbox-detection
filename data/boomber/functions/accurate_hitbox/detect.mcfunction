execute as @s run tag @s remove boomber.accurate_hitbox.hit
execute as @s run tag @s add boomber.accurate_hitbox.target

execute as @s unless block ~ ~ ~ #boomber:accurate_hitbox/transparent unless block ~ ~ ~ #boomber:accurate_hitbox/partial_block run tag @s add boomber.accurate_hitbox.hit
execute as @s unless block ~ ~ ~ #boomber:accurate_hitbox/transparent if block ~ ~ ~ #boomber:accurate_hitbox/partial_block run function boomber:accurate_hitbox/block

execute as @s if entity @e[tag=!boomber.accurate_hitbox.ignore_hitbox,tag=!boomber.accurate_hitbox.target,distance=..1.8,type=!iron_golem,type=!ghast] as @e[tag=!boomber.accurate_hitbox.ignore_hitbox,tag=!boomber.accurate_hitbox.target,distance=..1.8,type=!iron_golem,type=!ghast] run function boomber:accurate_hitbox/distance
execute as @s if entity @e[tag=!boomber.accurate_hitbox.ignore_hitbox,tag=!boomber.accurate_hitbox.target,distance=..3,type=iron_golem] as @e[tag=!boomber.accurate_hitbox.ignore_hitbox,tag=!boomber.accurate_hitbox.target,distance=..3,type=iron_golem] run function boomber:accurate_hitbox/distance
execute as @s if entity @e[tag=!boomber.accurate_hitbox.ignore_hitbox,tag=!boomber.accurate_hitbox.target,distance=..3,type=ghast] as @e[tag=!boomber.accurate_hitbox.ignore_hitbox,tag=!boomber.accurate_hitbox.target,distance=..3,type=ghast] run function boomber:accurate_hitbox/distance

execute as @s run tag @s remove boomber.accurate_hitbox.target