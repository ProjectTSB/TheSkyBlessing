#> asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage
#
# プレイヤーを殺す技
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

#> Private
# @private
    #declare tag Target

# 二回目を発動しないようにTagつけ
    tag @s add 6J.AlreadyElement

# タグ付け
    tag @r[gamemode=!spectator,distance=..40] add Target