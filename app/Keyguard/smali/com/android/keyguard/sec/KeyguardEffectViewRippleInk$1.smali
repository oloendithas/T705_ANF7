.class Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewRippleInk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 290
    const-string v0, "RippleInk_KeyguardEffect"

    const-string v1, "WaterColor sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 294
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewRippleInk;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 295
    return-void
.end method
