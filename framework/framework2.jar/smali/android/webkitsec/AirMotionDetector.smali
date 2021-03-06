.class public Landroid/webkitsec/AirMotionDetector;
.super Ljava/lang/Object;
.source "AirMotionDetector.java"

# interfaces
.implements Lcom/samsung/android/service/gesture/GestureListener;
.implements Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/AirMotionDetector$AirMotionSettings;,
        Landroid/webkitsec/AirMotionDetector$AirMotionListener;,
        Landroid/webkitsec/AirMotionDetector$IAirMotionListener;
    }
.end annotation


# static fields
.field public static final AIR_MOTION_AIRPIN:I = 0x1

.field public static final AIR_MOTION_AIRSCROLL:I = 0x0

.field public static final AIR_MOTION_NONE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirMotionDetector"


# instance fields
.field private final AIR_MOTION_PROVIDER:Ljava/lang/String;

.field private mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

.field private mAirMotionSettings:Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

.field private mMotionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "motionType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "ir_provider"

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->AIR_MOTION_PROVIDER:Ljava/lang/String;

    .line 24
    iput-object v2, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    .line 25
    iput-boolean v1, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    .line 26
    iput-object v2, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    .line 27
    iput v1, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    .line 50
    iput-object p1, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

    iget-object v1, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;-><init>(Landroid/webkitsec/AirMotionDetector;Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionSettings:Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

    .line 52
    return-void
.end method


# virtual methods
.method public destoryAirMotionDetector()V
    .registers 3

    .prologue
    .line 85
    const-string v0, "AirMotionDetector"

    const-string v1, "Destory AirMotionDetector."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_c

    .line 90
    :goto_b
    return-void

    .line 89
    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/webkitsec/AirMotionDetector;->setAirMotionLintener(Landroid/webkitsec/AirMotionDetector$AirMotionListener;I)V

    goto :goto_b
.end method

.method public onGestureEvent(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/samsung/android/service/gesture/GestureEvent;

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/samsung/android/service/gesture/GestureEvent;->getEvent()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 151
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 121
    :pswitch_8
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_LEFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onLeft()V

    goto :goto_7

    .line 127
    :pswitch_19
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_7

    .line 129
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onRight()V

    goto :goto_7

    .line 133
    :pswitch_2a
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_7

    .line 135
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onUp()V

    goto :goto_7

    .line 139
    :pswitch_3b
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_SWEEP_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_7

    .line 141
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionListener;->onDown()V

    goto :goto_7

    .line 145
    :pswitch_4c
    const-string v0, "AirMotionDetector"

    const-string v1, " GESTURE_EVENT_HOVER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 119
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_19
        :pswitch_8
        :pswitch_7
        :pswitch_2a
        :pswitch_3b
        :pswitch_4c
    .end packed-switch
.end method

.method public onServiceConnected()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 94
    const-string v0, "AirMotionDetector"

    const-string v1, " Service is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iput-boolean v2, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    .line 96
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    if-eqz v0, :cond_1b

    .line 97
    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    if-nez v0, :cond_1c

    .line 98
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_scroll"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1b
    :goto_1b
    return-void

    .line 99
    :cond_1c
    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    if-ne v0, v2, :cond_2a

    .line 100
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_clip"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 102
    :cond_2a
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public onServiceDisconnected()V
    .registers 3

    .prologue
    .line 110
    const-string v0, "AirMotionDetector"

    const-string v1, " Service is disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    .line 115
    return-void
.end method

.method public setAirMotionLintener(Landroid/webkitsec/AirMotionDetector$AirMotionListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/webkitsec/AirMotionDetector$AirMotionListener;
    .param p2, "motionType"    # I

    .prologue
    .line 56
    const-string v0, "AirMotionDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAirMotionLintener. listner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",motionType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez p1, :cond_33

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    .line 59
    iget-boolean v0, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    if-eqz v0, :cond_32

    .line 60
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    .line 82
    :cond_32
    :goto_32
    return-void

    .line 62
    :cond_33
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionSettings:Landroid/webkitsec/AirMotionDetector$AirMotionSettings;

    invoke-virtual {v0}, Landroid/webkitsec/AirMotionDetector$AirMotionSettings;->checkAirMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 63
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    if-nez v0, :cond_4c

    .line 64
    new-instance v0, Lcom/samsung/android/service/gesture/GestureManager;

    iget-object v1, p0, Landroid/webkitsec/AirMotionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/service/gesture/GestureManager;-><init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V

    iput-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    .line 66
    :cond_4c
    iput-object p1, p0, Landroid/webkitsec/AirMotionDetector;->mAirMotionListener:Landroid/webkitsec/AirMotionDetector$AirMotionListener;

    .line 67
    iput p2, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    .line 69
    iget-boolean v0, p0, Landroid/webkitsec/AirMotionDetector;->mConnected:Z

    if-eqz v0, :cond_32

    .line 70
    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    if-nez v0, :cond_62

    .line 71
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_scroll"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 72
    :cond_62
    iget v0, p0, Landroid/webkitsec/AirMotionDetector;->mMotionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_71

    .line 73
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    const-string v2, "air_motion_clip"

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 75
    :cond_71
    iget-object v0, p0, Landroid/webkitsec/AirMotionDetector;->mGestureManager:Lcom/samsung/android/service/gesture/GestureManager;

    const-string v1, "ir_provider"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/service/gesture/GestureManager;->registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    goto :goto_32

    .line 79
    :cond_79
    invoke-virtual {p0}, Landroid/webkitsec/AirMotionDetector;->destoryAirMotionDetector()V

    goto :goto_32
.end method
