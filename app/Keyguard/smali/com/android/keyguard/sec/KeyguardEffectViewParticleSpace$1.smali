.class Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewParticleSpace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 95
    const-string v0, "VisualEffectParticleEffect"

    const-string v1, "releaseSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    # getter for: Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->access$000(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;)Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 99
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->releaseSoundRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;->access$102(Lcom/android/keyguard/sec/KeyguardEffectViewParticleSpace;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 100
    return-void
.end method
