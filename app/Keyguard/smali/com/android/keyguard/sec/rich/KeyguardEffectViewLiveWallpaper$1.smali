.class Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardEffectViewLiveWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 32
    # setter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->sIsBootCompleted:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$002(Z)Z

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mIsNotInitialized:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$102(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;Z)Z

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mConnection:Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/rich/KeyguardLiveWallpaperConnection;->setVisibility(Z)V

    .line 35
    return-void
.end method
