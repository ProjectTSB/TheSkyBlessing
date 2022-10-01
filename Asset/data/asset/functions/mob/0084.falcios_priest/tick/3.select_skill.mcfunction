#> asset:mob/0084.falcios_priest/tick/3.select_skill
#
# スキルを選択する
#
# @within function asset:mob/0084.falcios_priest/tick/2.tick

# まずスキル一つ目を選択
    scoreboard players set @s 2C.Skill 0

# プレイヤーが視点先にいる場合高確率で二つ目のスキル
    execute positioned ^ ^ ^16 if entity @a[gamemode=!spectator,distance=..16] if predicate lib:random_pass_per/80 run scoreboard players set @s 2C.Skill 1