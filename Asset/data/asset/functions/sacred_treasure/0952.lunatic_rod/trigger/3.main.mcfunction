#> asset:sacred_treasure/0952.lunatic_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0952.lunatic_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 音
    playsound block.portal.travel hostile @a ~ ~ ~ 0.05 2
    playsound item.trident.return hostile @a ~ ~ ~ 0.6 0.8
    playsound item.trident.return hostile @a ~ ~ ~ 0.6 2
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 0.5 2
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 0.4 2
    playsound minecraft:block.respawn_anchor.set_spawn hostile @a ~ ~ ~ 1 1.4

# 発射
    execute anchored eyes run function asset:sacred_treasure/0952.lunatic_rod/trigger/4.recursive

# ヒットした対象にダメージ distance=..40なのは広めに判定をとっているため
    data modify storage lib: Argument.Damage set value 2000.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Hit,distance=..40] run function lib:damage/
    function lib:damage/reset

# 再帰処理のリセット
    tag @e[type=#lib:living,tag=Hit,distance=..40] remove Hit
    scoreboard players reset $Temp Temporary

# 魔法20%のバフ
    data modify storage api: Argument.UUID set value [I;1,1,952,0]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/magic/add

# 効果時間設定
    scoreboard players set @s QG.EffectTime 200

# スケジュールループ開始
    schedule function asset:sacred_treasure/0952.lunatic_rod/trigger/effect/loop 1t replace