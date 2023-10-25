#> asset:mob/0327.eclael/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0327.eclael/tick/1.trigger

# 対象のanimated javaモデルを紐づけ
    tag @e[type=item_display,tag=93.ModelRoot,sort=nearest,limit=1] add 93.ModelRoot.Target

# 天候を取得
    execute if predicate lib:weather/is_thundering run tag @s add 93.Temp.IsThunder

# タイマー計算
    scoreboard players add @s 93.AnimationTimer 1
    execute if score @s 93.DamageIntervalTimer matches 1.. run scoreboard players remove @s 93.DamageIntervalTimer 1

# スキル選択
    execute if score @s 93.AnimationTimer matches 0 run function asset:mob/0327.eclael/tick/app.1_1.select_skill

# スキルのイベントハンドラ
    execute if score @s 93.AnimationTimer matches 1.. run function asset:mob/0327.eclael/tick/app.2.skill_event

# 怯み中の場合，タイマーを増加する
    execute if entity @s[tag=93.Temp.Damage] run scoreboard players add @s 93.DamageTimer 1

# animated javaモデルを自分の位置に移動
    execute at @s rotated ~ 0 run tp @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] ~ ~ ~ ~ ~
# 一時タグ消去
    tag @s remove 93.Temp.Me
    tag @s remove 93.Temp.IsThunder

# 紐づけ終了
    tag @e[type=item_display,tag=93.ModelRoot.Target] remove 93.ModelRoot.Target
