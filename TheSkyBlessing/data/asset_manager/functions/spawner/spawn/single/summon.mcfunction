#> asset_manager:spawner/spawn/single/summon
#
#
#
# @within function asset_manager:spawner/spawn/single/

# スポナーに重なっているのであれば 1 マス上で召喚を試みる
    execute if entity @s[distance=..0.51] positioned ~ ~1 ~ if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    execute if entity @s[distance=..0.51] positioned ~ ~1 ~ if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run function api:mob/summon
# そうじゃないならふつーに召喚を試みる
    execute unless entity @s[distance=..0.51] if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run particle poof ~ ~ ~ 0.3 0.3 0.3 0 10 normal
    execute unless entity @s[distance=..0.51] if block ~ ~ ~ #lib:no_collision if block ~ ~0.9 ~ #lib:no_collision if block ~ ~1.8 ~ #lib:no_collision run function api:mob/summon
