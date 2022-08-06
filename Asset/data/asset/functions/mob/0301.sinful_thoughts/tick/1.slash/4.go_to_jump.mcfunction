#> asset:mob/0301.sinful_thoughts/tick/1.slash/4.go_to_jump
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/1.slash/1.slash

# タグをつけてテレポートしないようにする
    tag @s add RejectTeleport
# とりあえずリセット
    function asset:mob/0301.sinful_thoughts/tick/reset
# タグつけて
    tag @s add 8D.SkillJump
    tag @s add RejectTeleport
# スコアをつける
    scoreboard players set @s 8D.Tick 0

# firsttickが飛ばされるのでここでfirst_tickの代わりをする
    function asset:mob/0301.sinful_thoughts/tick/3.jump/2.first_tick