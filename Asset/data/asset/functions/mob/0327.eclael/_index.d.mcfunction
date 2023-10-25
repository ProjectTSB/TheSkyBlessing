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
    #declare tag 93.Phase.Latter 後半戦
    #declare tag 93.Phase.HardLatter ハード後半戦

    ## 処理用(一時)
    #declare tag 93.Temp.Me 汎用処理に使う一時的なタグ，自身に付与
    #declare tag 93.Temp.GeneralTarget 汎用処理に使う一時的なタグ，対象に付与
    #declare tag 93.Temp.NotArmor 非スーパーアーマー状態，この間に攻撃されると怯む
    #declare tag 93.Temp.Damage 怯み中判別用処理
    #declare tag 93.Temp.SleepDamage 眠り中に攻撃された
    #declare tag 93.Temp.AttackTarget 攻撃対象取得用
    #declare tag 93.Temp.MoveToLeft 左移動
    #declare tag 93.Temp.MoveToRight 右移動
    #declare tag 93.Temp.Near 近距離判定用
    #declare tag 93.Temp.ScheduleTargetPlayer scheduleのターゲットとなるプレイヤー
    #declare tag 93.Temp.AttackHit 攻撃の命中確認
    #declare tag 93.Temp.PrepareGuard ガード可能状態，この間に攻撃されるとガードに移行する
    #declare tag 93.Temp.Guard ガード中判別用
    #declare tag 93.Temp.IsThunder 天候が雷雨である

    ## スキル：前半
    #declare tag 93.Skill.Former.Idle 待機
    #declare tag 93.Skill.Former.Idle.Sleep 居眠り
    #declare tag 93.Skill.Former.Iai 居合斬り
    #declare tag 93.Skill.Former.Iai.Damage 居合斬り・怯み
    #declare tag 93.Skill.Former.Slash 連続斬り
    #declare tag 93.Skill.Former.Shot 射撃
    #declare tag 93.Skill.Former.UpperShot 曲射
    #declare tag 93.Skill.Former.UpperShot.Damage 曲射・怯み
    #declare tag 93.Skill.Former.Magic 魔法
    #declare tag 93.Skill.Former.ShortMagic 簡易魔法

    ## スキル：後半
    #declare tag 93.Skill.Latter.Start 後半戦開始
    #declare tag 93.Skill.Latter.Idle 待機
    #declare tag 93.Skill.Latter.Damage 怯み
    #declare tag 93.Skill.Latter.Damage.Move 怯み・バク転
    #declare tag 93.Skill.Latter.Guard.0 ガード
    #declare tag 93.Skill.Latter.Guard.1 ガード
    #declare tag 93.Skill.Latter.Guard.2 ガード
    #declare tag 93.Skill.Latter.MoveSlash 袈裟斬り
    #declare tag 93.Skill.Latter.Iai 居合斬り
    #declare tag 93.Skill.Latter.Iai.Damage 居合斬り・怯み
    #declare tag 93.Skill.Latter.Shot 射撃
    #declare tag 93.Skill.Latter.Magic 魔法
    #declare tag 93.Skill.Latter.Pursuit 追撃
    #declare tag 93.Skill.Latter.Move 電光石火
    #declare tag 93.Skill.Latter.Move.Back 電光石火・帰還
    #declare tag 93.Skill.Latter.Spear 突き
    #declare tag 93.Skill.Latter.Spear.Damage 突き・怯み
    #declare tag 93.Skill.Latter.Whip 長剣
    #declare tag 93.Skill.Latter.Quick 七連斬り
    #declare tag 93.Skill.Latter.MoveShot 移動射撃
    #declare tag 93.Skill.Latter.MoveShot.Single 移動射撃・単発
    #declare tag 93.Skill.Latter.Sorafune 宙船
    #declare tag 93.Skill.Latter.Momiji 紅葉舞
    #declare tag 93.Skill.Latter.SpinSlash 回転斬り
    #declare tag 93.Skill.Latter.Thunderstorm 雷雨