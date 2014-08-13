.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;
.super Landroid/os/Handler;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)V
    .locals 0

    .prologue
    .line 13474
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x9

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000

    .line 13481
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_4

    .line 13482
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHoverHandler, ACTION_HOVER_ENTER  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 13483
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ltz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 13484
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v7, :cond_6

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->fingerMasterStatus:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9000()Z

    move-result v0

    if-eqz v0, :cond_6

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->fingerSettingSpeedDial:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9100()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13485
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->settingSoundNHaptic:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13487
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 13489
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->settingSoundEffects:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13490
    const-string v0, "feature_dialer_keytone_tuning"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13491
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundTone:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVolumeFloat:F
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVolumeFloat:F
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)F

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 13516
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->isUsingTwoPanel:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$2300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13517
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_8

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 13518
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0205e3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 13525
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mHoverEnter:[Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10100(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)[Z

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    aput-boolean v7, v0, v1

    .line 13528
    :cond_4
    return-void

    .line 13493
    :cond_5
    const-string v0, "feature_dialer_keytone_dtmf"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13494
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundTone:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v1

    move v2, v6

    move v3, v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 13499
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->penMasterStatus:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9700()Z

    move-result v0

    if-eqz v0, :cond_2

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->penSettingSpeedDial:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9800()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13500
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->settingPenHoveringSound:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9900()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13502
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 13504
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_2

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->settingSoundEffects:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13505
    const-string v0, "feature_dialer_keytone_tuning"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13506
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundTone:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVolumeFloat:F
    invoke-static {v2}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mVolumeFloat:F
    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9600(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)F

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_0

    .line 13508
    :cond_7
    const-string v0, "feature_dialer_keytone_dtmf"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13509
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9300(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$45;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mSoundTone:I
    invoke-static {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$9500(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;)I

    move-result v1

    move v2, v6

    move v3, v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_0

    .line 13519
    :cond_8
    # getter for: Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->mOneHandOnOff:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$10000()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "feature_one_hand_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13520
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0204a9

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 13522
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0204a8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method
