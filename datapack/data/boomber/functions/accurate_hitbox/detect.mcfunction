execute as @s run tag @s remove boomber.accurate_hitbox.hit
execute as @s run tag @s add boomber.accurate_hitbox.target
function boomber:accurate_hitbox/ignore_hitbox

execute as @s[tag=!boomber.accurate_hitbox.hit] unless block ~ ~ ~ #boomber:accurate_hitbox/transparent unless block ~ ~ ~ #boomber:accurate_hitbox/partial_block run tag @s add boomber.accurate_hitbox.hit
execute as @s[tag=!boomber.accurate_hitbox.hit] unless block ~ ~ ~ #boomber:accurate_hitbox/transparent if block ~ ~ ~ #boomber:accurate_hitbox/partial_block run function boomber:accurate_hitbox/block

execute as @s[tag=!boomber.accurate_hitbox.hit] as @e[tag=!boomber.accurate_hitbox.ignore_hitbox, tag=!boomber.accurate_hitbox.target, distance=..1.8, type=!#boomber:accurate_hitbox/small] run function boomber:accurate_hitbox/entity
execute as @s[tag=!boomber.accurate_hitbox.hit] as @e[tag=!boomber.accurate_hitbox.ignore_hitbox, tag=!boomber.accurate_hitbox.target, distance=..4, type=#boomber:accurate_hitbox/big] run function boomber:accurate_hitbox/entity

tag @s remove boomber.accurate_hitbox.target