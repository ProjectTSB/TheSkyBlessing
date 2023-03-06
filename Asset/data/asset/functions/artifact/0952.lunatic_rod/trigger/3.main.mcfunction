#> asset:artifact/0952.lunatic_rod/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0952.lunatic_rod/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 音
    playsound block.portal.travel player @a ~ ~ ~ 0.05 2
    playsound item.trident.return player @a ~ ~ ~ 0.6 0.8
    playsound item.trident.return player @a ~ ~ ~ 0.6 2
    playsound entity.blaze.shoot player @a ~ ~ ~ 0.5 2
    playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.4 2
    playsound minecraft:block.respawn_anchor.set_spawn player @a ~ ~ ~ 1 1.4

# 発射
    execute anchored eyes positioned ^ ^ ^ run function asset:artifact/0952.lunatic_rod/trigger/4.recursive

# ヒットした対象にダメージ distance=..40なのは広めに判定をとっているため
    data modify storage lib: Argument.Damage set value 2000.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Hit,distance=..40] run function lib:damage/
    function lib:damage/reset

# ヒットしたら魔法攻撃バフ
    execute if entity @s[tag=Landing] run function asset:artifact/0952.lunatic_rod/trigger/5.buff

# 再帰処理のリセット
    tag @e[type=#lib:living,tag=Hit,distance=..40] remove Hit
    tag @s remove Landing
    scoreboard players reset $Interval Temporary