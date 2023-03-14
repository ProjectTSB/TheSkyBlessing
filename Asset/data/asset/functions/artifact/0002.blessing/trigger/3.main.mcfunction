#> asset:artifact/0002.blessing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0002.blessing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
# 固定加算量  : HP  +2, MP  +4
# 50島攻略時  : HP+100, MP+200
# 追加選択    : HP  +1, MP  +2, Atk +1%, Def +1%
# 50島極振り時: HP +50, MP+100, Atk+40%, Def+40%

# 固定加算
    scoreboard players add $MaxHealth Global 20000
    execute as @a run function player_manager:bonus/update_health_bonus
    scoreboard players add $MaxMP Global 4
    execute as @a run function player_manager:bonus/update_mp_bonus
# 選択トリガー
    scoreboard players enable @s 02.Trigger
# チャット
    function asset:artifact/0002.blessing/trigger/show_trigger_chat
# リスナー
    schedule function asset:artifact/0002.blessing/trigger/listener 1t