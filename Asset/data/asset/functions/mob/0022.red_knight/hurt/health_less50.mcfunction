#> asset:mob/0022.red_knight/hurt/health_less50
#
# 50切ったときに色々リセットする処理
#
# @within function asset:mob/0022.red_knight/hurt/3.check_health

# Tickリセット
    scoreboard players set @s M.Tick 0

# タグのリセット
    # スキル関連
        tag @s remove M.SkillSlash
        tag @s remove M.SkillCombo
        tag @s remove M.SkillParry
    # ダッシュ関連
        tag @s remove M.DashTriple
        tag @s remove M.DashStraight
        tag @s remove M.DashStab
    # 行動関連
        tag @s remove M.Move
        tag @s remove M.ActiveInertia


# タグ付与、全基本動作停止
    tag @s add M.InAction

# 向き固定ON
    tag @s add M.FacingLock

# フェイズ2移行動作をスタート
    tag @s add M.HPless50per

# マーカーも消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]

# 無敵になる
    data modify entity @s Invulnerable set value 1b