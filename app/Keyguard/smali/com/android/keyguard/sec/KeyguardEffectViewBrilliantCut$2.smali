.class Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)V
    .registers 2

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 225
    const-string v0, "BrilliantCutEffect_KeyguardEffectView"

    const-string v1, "BrilliantRing sound : release SoundPool"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$100(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Z)Z

    .line 230
    :cond_24
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$2;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$202(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 231
    return-void
.end method
