#> asset:mob/0220.vena_cana/attack/2.attack
#
# Mobの攻撃時の処理 実行者はプレイヤー
#
# @within function asset:mob/0220.vena_cana/attack/1.trigger

# 演出
    playsound minecraft:block.conduit.ambient hostile @a ~ ~ ~ 0.7 0.8 0
    particle dust 0.149 0.682 0.741 1 ~ ~1.2 ~ 0.6 0.3 0.6 0 30 normal @a

# 第一に攻撃対象の全effectをclear
    effect clear @s

# 次にデバフ
    effect give @s slowness 5 1 true
    effect give @s mining_fatigue 5 1 true

# ダメージ
    data modify storage lib: Argument.Damage set value 37f
    data modify storage lib: Argument.AttackType set value "Physical"
# 補正functionを実行
    execute as @e[type=zombie,tag=this,distance=..6,sort=nearest,limit=1] run function lib:damage/modifier
# 対象
    function lib:damage/
# リセット
    function lib:damage/reset

# 最後に属性攻撃力半減
    # 引数の設定
    # UUID
        data modify storage api: Argument.UUID set value [I;1,2,220,0]
    # 補正値
        data modify storage api: Argument.Amount set value -0.5
    # 補正方法
        data modify storage api: Argument.Operation set value "multiply"
# 補正の追加
    function api:modifier/attack/base/add

# タグを付与
    tag @s[tag=!64.ElementReduct] add 64.ElementReduct

# 効果時間を設定
    scoreboard players set @s 64.DebuffTime 100

# スケジュールループ開始
    schedule function asset:mob/0220.vena_cana/attack/03.schedule_loop 1t replace