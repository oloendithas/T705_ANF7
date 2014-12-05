.class Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;
.super Ljava/lang/Thread;
.source "MassRippleUnlockTwin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/MassRippleUnlockTwin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolThread"
.end annotation


# instance fields
.field private streamID:I

.field final synthetic this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/MassRippleUnlockTwin;I)V
    .registers 3
    .param p2, "tStreamID"    # I

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 545
    iput p2, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->streamID:I

    .line 546
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 550
    const/high16 v2, 0x3f800000

    .line 551
    .local v2, "leftVolume":F
    const/high16 v3, 0x3f800000

    .line 552
    .local v3, "rightVolume":F
    const/high16 v4, 0x3f800000

    iget-object v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I
    invoke-static {v5}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$000(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 554
    .local v0, "decreaseUnit":F
    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->isSystemSoundChecked:Z
    invoke-static {v4}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$100(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 581
    :cond_17
    return-void

    .line 557
    :cond_18
    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$200(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Landroid/media/SoundPool;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundNum:I
    invoke-static {v4}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$000(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I

    move-result v4

    if-ge v1, v4, :cond_17

    .line 562
    const/high16 v4, 0x3fc00000

    mul-float/2addr v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_52

    .line 564
    const/4 v2, 0x0

    .line 565
    const/4 v3, 0x0

    .line 574
    :goto_32
    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$200(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Landroid/media/SoundPool;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 577
    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$200(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)Landroid/media/SoundPool;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->streamID:I

    invoke-virtual {v4, v5, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 578
    iget-object v4, p0, Lcom/android/keyguard/sec/MassRippleUnlockTwin$SoundPoolThread;->this$0:Lcom/android/keyguard/sec/MassRippleUnlockTwin;

    # getter for: Lcom/android/keyguard/sec/MassRippleUnlockTwin;->soundTime:I
    invoke-static {v4}, Lcom/android/keyguard/sec/MassRippleUnlockTwin;->access$300(Lcom/android/keyguard/sec/MassRippleUnlockTwin;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 569
    :cond_52
    sub-float/2addr v2, v0

    .line 570
    sub-float/2addr v3, v0

    goto :goto_32
.end method
