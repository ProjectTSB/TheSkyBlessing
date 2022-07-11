#> asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/damage
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/skill/common/gear_gold/tick

#> Val
# @private
#declare tag Target

# 対象にタグ付与
    execute positioned ~ ~0 ~ run tag @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ~ ~3 ~ run tag @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..3.5] add Target
    execute positioned ~ ~5 ~ run tag @e[type=#lib:living,tag=Friend,tag=!PlayerShouldInvulnerable,tag=!Uninterferable,distance=..3.5] add Target
# パラメータ設定
    data modify storage lib: Argument.Damage set value 12
    data modify storage lib: Argument.AttackType set value "Magic"
    # 死亡ログ
        data modify storage lib: Argument.DeathMessage set value '[{"translate": "%1$sは%2$sの黄金の歯車により時空の狭間へ送られた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}]'
# 補正 (厳密な紐付けではない)
    execute as @e[type=zombie,scores={MobID=46},distance=..14,limit=1] run function lib:damage/modifier
# 与
    execute as @e[type=#lib:living,tag=Friend,tag=Target,distance=..10] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @e[type=#lib:living,tag=Friend,tag=Target] remove Target