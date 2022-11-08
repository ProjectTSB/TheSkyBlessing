#> asset:mob/0022.red_knight/tick/skills/1.dash_slash/addition_attack
#
# 露骨な初見殺し感あるキャンセルパリィ
#
# @within function asset:mob/0022.red_knight/tick/skills/1.dash_slash/1.tick

# タグのリセット
    tag @s remove M.SkillSlash
    tag @s remove M.FacingLock

# こっち向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ ~

# スコアのリセット
    scoreboard players set @s M.Tick -5
    scoreboard players reset @s M.AdditionCount

# 即座にパリィに移行
    tag @s add M.InAction
    tag @s add M.SkillParry