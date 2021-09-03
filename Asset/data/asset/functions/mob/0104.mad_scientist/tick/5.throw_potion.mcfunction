#> asset:mob/0104.mad_scientist/tick/5.throw_potion
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/4.till_throw_potion

# ポーション投げ
    data modify storage api: Argument.ID set value 105
    function api:mob/summon
    execute facing entity @p[gamemode=!creative,gamemode=!spectator] feet run tp @e[type=armor_stand,scores={MobID=105},distance=..0.01] ~ ~1.5 ~ ~ ~
# ポーションに属性別タグを付与
    tag @e[type=armor_stand,scores={MobID=105},distance=..0.01]

# スコアリセット
    scoreboard players reset @s 2W.Tick

# ポーションも消しちゃえ
    item replace entity @s weapon.mainhand with air
