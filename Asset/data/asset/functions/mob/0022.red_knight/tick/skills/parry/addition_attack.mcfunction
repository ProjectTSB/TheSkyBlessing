#> asset:mob/0022.red_knight/tick/skills/parry/addition_attack
#
# パリィ後に即座にコンボ斬撃
#
# @within function asset:mob/0022.red_knight/tick/skills/parry/1.tick

# タグのリセット
    tag @s remove M.SkillParry
    tag @s remove M.FacingLock

# スコアのリセット
    scoreboard players set @s M.Tick -5
    scoreboard players reset @s M.AdditionCount

# 即座にダッシュ斬りに移行
    tag @s add M.InAction
    tag @s add M.SkillCombo