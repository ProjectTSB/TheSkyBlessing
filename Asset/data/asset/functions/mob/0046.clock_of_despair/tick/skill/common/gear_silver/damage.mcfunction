#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/gear_silver/tick

#> Val
# @private
#declare tag Target

# 対象にタグ付与
    execute positioned ~ ~0 ~ run tag @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ~ ~3 ~ run tag @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ~ ~5 ~ run tag @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..3.5] add Target
# パラメータ設定
    data modify storage lib: Argument.Damage set value 18
    data modify storage lib: Argument.AttackType set value "Magic"
# 補正
    function lib:damage/modifier
# 与
    execute as @e[type=#lib:living,tag=Friend,tag=Target,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @e[type=#lib:living,tag=Friend,tag=Target] remove Target