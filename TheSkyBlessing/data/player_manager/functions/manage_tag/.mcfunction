#> player_manager:manage_tag/
#
# プレイヤーのタグ管理を行う
#
# @within function core:tick/player/pre

# PlayerShouldInvulnerable
    tag @s[tag=PlayerShouldInvulnerable] remove PlayerShouldInvulnerable
    tag @s[gamemode=!adventure,gamemode=!survival] add PlayerShouldInvulnerable