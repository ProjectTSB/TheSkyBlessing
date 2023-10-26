# 各攻撃のダメージ処理をまとめたもの（バランス調整用）
# 実装完了後に削除する．

########################################################
## 前半

# 居合斬り：2回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.1.attack_iai_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.2.attack_iai_1

# 連続斬り：2回→1回，合計3回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.2.attack_slash_1
# 3
    function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.3.attack_slash_2

# 射撃：1回→2回，合計3回攻撃
# ダメージ処理は矢で行うため割愛

# 曲射：プレイヤーのやる気次第でヒット数が大きく変わる
# 1：曲射のため，ヒット数推測不能
    function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.4.attack_falling_arrow

# 魔法：広範囲1回攻撃
# 雷の色を変えるため処理は3つに分割
    function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.3.2.attack_0_magic
    function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.4.2.attack_1_magic
    function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/4.5.2.attack_2_magic

# 簡易魔法：1回→1回，合計2回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.1.attack_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1

########################################################
## 後半
# 体力がある程度減った段階で開始する．

# 袈裟斬り・前半戦：1回→1回，合計2回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/4.2.attack_slash_1

# 居合斬り・前半戦：2回→1回，合計3回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/4.2.attack_slash_1
# 3
    function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/4.3.attack_slash_2

# 射撃：1回→?回，合計?回攻撃
# 1：ダメージ処理は矢で行うため割愛
# 2：曲射のため，ヒット数推測不能
    function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.4.attack_falling_arrow

# 突き：1回攻撃
    function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/4.1.attack_slash

# 追撃：2回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/4.2.attack_slash_1

# 大技・長剣：2回→3回→1回→落雷，合計7回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.2.attack_slash_1
# 3
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.3.attack_slash_2
# 4
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.1.attack_slash_0
# 5
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.2.attack_slash_1
# 6
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.4.attack_slash_3
# 7（雷による広範囲攻撃）
# 雷の色を変えるため処理は3つに分割
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.1.attack_thunder_0
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.2.attack_thunder_1
    function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.3.attack_thunder_2

# 大技：七連斬り：1回→1回→1回→1回→2回→1回，合計7回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.2.attack_slash_1
# 3
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.1.attack_slash_0 
# 4
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.3.attack_slash_2
# 5
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.1.attack_slash_0
# 6
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.2.attack_slash_1
# 7
    function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.4.attack_slash_3

# 大技・移動射撃：1or2回→1回，合計最大3回攻撃
# 1-2：
# 3：ほぼ見せ技のため当たらない
    function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/4.2.attack_slash

# 大技・宙船：合計9回攻撃
# 1-8
    function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
# 9
    function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.2.attack_slash_1

# 大技・紅葉舞：1回→1回→1回，合計3回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.2.attack_slash_1
# 3
    function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.3.attack_slash_2

# 大技・回転斬り：1回→1回→1回，合計3回攻撃
# 1：ほぼ意味のないおまけ判定
    function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.2.attack_slash_1
# 3：ダメージ処理は飛ぶ斬撃(0329)で行うため割愛

########################################################
## 後半・本気モード
# ハードにおいて体力が半分切ったタイミングで開始する．

# 袈裟斬り・後半戦：2回→1回→落雷，合計4回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/4.2.attack_slash_1
# 3
    function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/4.3.attack_slash_2
# 4（雷）
    function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack

# 居合斬り・後半戦：2回→落雷，合計3回攻撃
# 1
    function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/4.1.attack_slash_0
# 2
    function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/4.2.attack_slash_1
# 3（雷）
    function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack

# 射撃・連射：3回→1回，合計4回攻撃
# 1-4：ダメージ処理は矢で行うため割愛

# 大技・移動射撃：特に変わらないため割愛

# 大技・宙船：特に変わらないため割愛

# 大技・紅葉舞：特に変わらないため割愛

# 大技・回転斬り：特に変わらないため割愛
