.class Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->makeSound()V
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
    .line 209
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 6
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->isLoadCompleted:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;->access$002(Lcom/android/keyguard/sec/KeyguardEffectViewBrilliantCut;Z)Z

    .line 213
    return-void
.end method
