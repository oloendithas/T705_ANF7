.class public Lcom/samsung/android/airbutton/AirButtonSideButtonController;
.super Ljava/lang/Object;
.source "AirButtonSideButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;
    }
.end annotation


# static fields
.field private static sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private static sKeyguardManager:Landroid/app/KeyguardManager;


# instance fields
.field private final BTN_PRESS_TIME_LIMIT:I

.field private final TAG:Ljava/lang/String;

.field private mBlockLongPress:Z

.field private mIsHoverEnter:Z

.field private mOldSideBtnState:I

.field private mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

.field private mSideBtnPressedTime:J

.field private mWasTouchDowned:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 31
    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AirButtonSideButtonController"

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->BTN_PRESS_TIME_LIMIT:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .line 27
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "AirButtonSideButtonController"

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->TAG:Ljava/lang/String;

    .line 20
    const/16 v0, 0x320

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->BTN_PRESS_TIME_LIMIT:I

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .line 27
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 38
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 48
    if-eqz p1, :cond_3b

    .line 49
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_2d

    .line 50
    const-string/jumbo v0, "spengestureservice"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 51
    :cond_2d
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_3b

    .line 52
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 54
    :cond_3b
    return-void
.end method


# virtual methods
.method public isKeyguardVisible()Z
    .registers 3

    .prologue
    .line 205
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_15

    .line 206
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    const-string v0, "AirButtonSideButtonController"

    const-string v1, "isKeyguardSecure : true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x1

    .line 212
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 62
    const/4 v3, 0x0

    .line 64
    .local v3, "result":Z
    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_e

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 67
    :cond_e
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    if-eqz v4, :cond_85

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_85

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    .line 70
    .local v0, "currentSideBtnState":I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_45

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v4, v0, :cond_45

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 72
    const-string v4, "AirButtonSideButtonController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Btn pressed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_45
    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_83

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v4, v0, :cond_83

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 77
    .local v1, "currentTime":J
    const-string v4, "AirButtonSideButtonController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Time differences = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v6, v1, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-wide v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x320

    cmp-long v4, v4, v6

    if-gez v4, :cond_83

    .line 80
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v4, :cond_83

    .line 81
    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v4, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    .line 82
    const/4 v3, 0x1

    .line 87
    .end local v1    # "currentTime":J
    :cond_83
    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 90
    .end local v0    # "currentSideBtnState":I
    :cond_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_aa

    .line 106
    :cond_8c
    :goto_8c
    :pswitch_8c
    return v3

    .line 92
    :pswitch_8d
    invoke-virtual {p0, v9}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    goto :goto_8c

    .line 96
    :pswitch_97
    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    if-nez v4, :cond_8c

    .line 97
    invoke-virtual {p0, v9}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    goto :goto_8c

    .line 102
    :pswitch_a5
    invoke-virtual {p0, v8}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    goto :goto_8c

    .line 90
    nop

    :pswitch_data_aa
    .packed-switch 0x7
        :pswitch_97
        :pswitch_8c
        :pswitch_8d
        :pswitch_a5
    .end packed-switch
.end method

.method public onHoverForGA(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v11, 0x320

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 110
    const/4 v4, 0x0

    .line 112
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_12a

    .line 129
    :goto_c
    :pswitch_c
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_43

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    .line 132
    .local v1, "currentSideBtnState":I
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_7f

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v5, v1, :cond_7f

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 134
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 135
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Btn pressed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_41
    :goto_41
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 180
    .end local v1    # "currentSideBtnState":I
    :cond_43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_4d

    .line 181
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 183
    :cond_4d
    return v4

    .line 114
    :pswitch_4e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 115
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_5c

    .line 116
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 117
    :cond_5c
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 119
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hover entered = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 136
    .restart local v1    # "currentSideBtnState":I
    :cond_7f
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_41

    .line 137
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    if-eq v5, v1, :cond_c5

    .line 138
    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    if-eqz v5, :cond_92

    .line 139
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 152
    :cond_8f
    :goto_8f
    iput-boolean v9, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    goto :goto_41

    .line 141
    :cond_92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 142
    .local v2, "currentTime":J
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Click] Time differences = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v5, v2, v5

    cmp-long v5, v5, v11

    if-gez v5, :cond_8f

    .line 145
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v5, :cond_8f

    .line 146
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    .line 147
    const/4 v4, 0x1

    goto :goto_8f

    .line 154
    .end local v2    # "currentTime":J
    :cond_c5
    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    if-nez v5, :cond_41

    iget-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    if-nez v5, :cond_41

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .restart local v2    # "currentTime":J
    iget-wide v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v5, v2, v5

    cmp-long v5, v5, v11

    if-ltz v5, :cond_41

    .line 158
    const-string v5, "AirButtonSideButtonController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Long Press] Time differences = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    sub-long v7, v2, v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-boolean v10, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mBlockLongPress:Z

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "blockLaunchGAB":Z
    sget-object v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-eqz v5, :cond_116

    sget-object v5, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->sGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v9, v6, v7}, Lcom/samsung/android/smartclip/SpenGestureManager;->getAirButtonHitTest(III)I

    move-result v5

    if-ne v5, v10, :cond_116

    .line 163
    const-string v5, "AirButtonSideButtonController"

    const-string v6, "hit test"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    .line 167
    :cond_116
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->isKeyguardVisible()Z

    move-result v5

    if-nez v5, :cond_41

    if-nez v0, :cond_41

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    if-eqz v5, :cond_41

    .line 168
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;->onSideButtonClicked(Landroid/view/MotionEvent;)V

    .line 169
    const/4 v4, 0x1

    .line 170
    goto/16 :goto_41

    .line 112
    :pswitch_data_12a
    .packed-switch 0x7
        :pswitch_c
        :pswitch_c
        :pswitch_4e
    .end packed-switch
.end method

.method public onTouchDownForGA(I)V
    .registers 4
    .param p1, "buttonState"    # I

    .prologue
    .line 187
    const-string v0, "AirButtonSideButtonController"

    const-string/jumbo v1, "onTouchDownForGA"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_10

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    .line 192
    :goto_f
    return-void

    .line 191
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mWasTouchDowned:Z

    goto :goto_f
.end method

.method public onTouchUpForGA(I)V
    .registers 2
    .param p1, "buttonState"    # I

    .prologue
    .line 196
    return-void
.end method

.method public resetVariables(Z)V
    .registers 4
    .param p1, "isHoverEnter"    # Z

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mIsHoverEnter:Z

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mOldSideBtnState:I

    .line 201
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnPressedTime:J

    .line 202
    return-void
.end method

.method public setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->mSideBtnClickedListener:Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;

    .line 226
    return-void
.end method
