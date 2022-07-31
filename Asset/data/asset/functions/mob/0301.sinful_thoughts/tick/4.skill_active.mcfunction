#> asset:mob/0301.sinful_thoughts/tick/4.skill_active
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/2.tick

# めっちゃ斬る
    execute if entity @s[tag=8D.SkillSlash] run function asset:mob/0301.sinful_thoughts/tick/1.slash/1.slash
# 発泡
    execute if entity @s[tag=8D.SkillGun] run function asset:mob/0301.sinful_thoughts/tick/2.summon/1.summon
# 飛びかかり
    execute if entity @s[tag=8D.SkillJump] run function asset:mob/0301.sinful_thoughts/tick/3.slash/1.slash
# 衝撃波
    execute if entity @s[tag=8D.SkillImpact] run function asset:mob/0301.sinful_thoughts/tick/3.slash/1.slash


# メモ程度
# 鎌攻撃は全てにおいて-100%の回復の低下を起こす（私のモブは回復前提にしてないからこれくらい許して！！）
# SkillSlash、鎌を三回振るう。確率でそのまま飛びかかりを繰り出すこともある
# SkillGun、銃を撃つけどプレイヤーの向いた前方を狙う。動くと当たるタイプ
# SkillJump、飛びかかり、地面につくまでTPし、斬りつける。斬りつけに成功した場合、銃で追撃する
# SkillImpact、鎌を地面に突き刺し、引き抜いた時に衝撃波を放つ