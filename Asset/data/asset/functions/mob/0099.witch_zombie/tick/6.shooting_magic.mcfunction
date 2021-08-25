#> asset:mob/0099.witch_zombie/tick/6.shooting_magic
#
#
#
# @within function asset:mob/0099.witch_zombie/tick/3.magic

# 魔法弾を召喚
    data modify storage api: Argument.ID set value 100
    function api:mob/summon

# 魔法弾の向きを最寄りのプレイヤーに向ける
    execute facing entity @p[gamemode=!creative,gamemode=!spectator] eyes run tp @e[type=marker,scores={MobID=100},distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ ~

# 2R.Elementがあれば水属性にする(2S.ElementTagがあれば魔法弾は水属性になる)
    execute if entity @s[tag=2R.Element] run tag @e[type=marker,scores={MobID=100},distance=..0.01,sort=nearest,limit=1] add 2S.Element

# スコアとTagをリセット
    scoreboard players reset @s 2R.Shooting
    scoreboard players reset @s 2R.Tick
    execute if entity @s[tag=2R.Element] run tag @s remove 2R.Element