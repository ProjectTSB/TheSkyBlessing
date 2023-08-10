#> asset:mob/0314.blazing_bomb/tick/event/fireball/explosion
#
#
#
# @within function asset:mob/0314.blazing_bomb/tick/event/fireball/

#> 地雷の起爆チェック用タグ
# @private
#declare tag 8S.Ready

# パーティクル
    particle minecraft:explosion ~ ~ ~ 3 1 3 0 20 force @a[distance=..10]

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.8

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える。
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/

# リセット
    function lib:damage/reset

# 付近の地雷を起爆
    execute as @e[type=item_display,tag=!8S.Ready,scores={MobID=316},distance=..12] run function asset:mob/0316.blazing_mine/tick/event/bomb/start

# Tickをリセットし、残存モードに移行
    tag @s add 8Q.AOE
    scoreboard players reset @s 8Q.Tick

# 眼の前にブロックなかったら消える
    execute if block ^ ^ ^1 #lib:no_collision run kill @s
