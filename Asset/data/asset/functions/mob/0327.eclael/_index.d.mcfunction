#> asset:mob/0327.eclael/_index.d
# @private

#> tag
# @within function asset:mob/0327.eclael/**
    ## API用
    #declare tag SpreadMarker
    #declare tag Attacker

    ## 処理用
    #declare tag 93.ModelRoot animated_javaモデルにつける処理簡略化用のタグ
    #declare tag 93.ModelRoot.Target animated_javaモデルにつける処理簡略化用のタグ(紐付け)
    #declare tag 93.ModelRoot.Death animated_javaモデルにつける処理簡略化用のタグ(死亡処理用)
    #declare tag 93.Marker.SpawnPoint 召喚中心点の記録用Marker
    #declare tag 93.Aec.AttackPos 攻撃処理の保存用AEC
    #declare tag 93.Aec.AttackPos.Init 攻撃処理の保存用AEC

    ## 処理用(一時)
    #declare tag 93.Temp.Me 汎用処理に使う一時的なタグ，自身に付与
    #declare tag 93.Temp.GeneralTarget 汎用処理に使う一時的なタグ，対象に付与
    #declare tag 93.Temp.NotArmor 非スーパーアーマー状態，この間に攻撃されると怯む
    #declare tag 93.Temp.Damage 怯み中判別用処理
    #declare tag 93.Temp.AttackTarget 攻撃対象取得用
    #declare tag 93.Temp.MoveToLeft 左移動
    #declare tag 93.Temp.MoveToRight 右移動

    ## スキル：前半
    #declare tag 93.Skill.Former.Idle 待機
    #declare tag 93.Skill.Former.Iai 居合斬り
    #declare tag 93.Skill.Former.Iai.Damage 居合斬り・怯み
    #declare tag 93.Skill.Former.Slash 連続斬り
    #declare tag 93.Skill.Former.Shot 射撃
    #declare tag 93.Skill.Former.UpperShot 曲射
    #declare tag 93.Skill.Former.UpperShot.Damage 曲射・怯み
    #declare tag 93.Skill.Former.Magic 魔法
    #declare tag 93.Skill.Former.ShortMagic 簡易魔法

    ## TODO:以下，実装完了時に削除する
    #declare tag 93.ChangeAnimation アニメーションを強制的に変更する

## メモ，実装完了時に削除する
# 赤白グラデ
# particle dust 100000000 1 1
# 緑白グラデ
# particle dust 1 100000000 1
# 青白グラデ
# particle dust 1 1 100000000
# 赤紫白グラデ
# particle dust 100000000 1 100000000
# 黄白グラデ
# particle dust 100000000 100000000 1
# 水白グラデ
# particle dust 1 100000000 100000000