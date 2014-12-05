.class Lcom/android/keyguard/KeyguardViewManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewManager;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewUtil;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    .line 111
    .local v0, "isLiveWallpaper":Z
    if-eqz v0, :cond_35

    .line 112
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mKeyguardViewFrame:Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$100(Lcom/android/keyguard/KeyguardViewManager;)Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;

    move-result-object v4

    if-eqz p1, :cond_31

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_25
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardViewManager$ViewManagerHost;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    iget-object v4, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    if-nez p1, :cond_33

    move v1, v2

    :goto_2d
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    .line 144
    :cond_30
    :goto_30
    return-void

    .line 112
    :cond_31
    const/4 v1, 0x0

    goto :goto_25

    :cond_33
    move v1, v3

    .line 113
    goto :goto_2d

    .line 117
    :cond_35
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onSetBackground()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isGgsmTablet()Z

    move-result v1

    if-nez v1, :cond_30

    .line 121
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 122
    if-nez p1, :cond_77

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$300(Lcom/android/keyguard/KeyguardViewManager;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 123
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bmp == null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # setter for: Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z
    invoke-static {v1, v3}, Lcom/android/keyguard/KeyguardViewManager;->access$302(Lcom/android/keyguard/KeyguardViewManager;Z)Z

    .line 125
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->update()V

    .line 143
    :cond_6f
    :goto_6f
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    if-nez p1, :cond_df

    :goto_73
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardViewManager;->updateShowWallpaper(Z)V

    goto :goto_30

    .line 126
    :cond_77
    if-eqz p1, :cond_6f

    .line 127
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bmp != null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # setter for: Lcom/android/keyguard/KeyguardViewManager;->mTransportBitmapEnabled:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardViewManager;->access$302(Lcom/android/keyguard/KeyguardViewManager;Z)Z

    .line 129
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V

    goto :goto_6f

    .line 132
    :cond_95
    if-nez p1, :cond_bb

    .line 133
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bmp == null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->update()V

    .line 135
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    goto :goto_6f

    .line 137
    :cond_bb
    # getter for: Lcom/android/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardViewManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v4, "bmp != null"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->handleUpdateKeyguardMusicBackground(Landroid/graphics/Bitmap;)V

    .line 139
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewManager$1;->this$0:Lcom/android/keyguard/KeyguardViewManager;

    # getter for: Lcom/android/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardViewManager;->access$000(Lcom/android/keyguard/KeyguardViewManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardEffectViewMain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/sec/KeyguardEffectViewMain;->setLayerAndBitmapForParticleEffect()V

    goto :goto_6f

    :cond_df
    move v2, v3

    .line 143
    goto :goto_73
.end method
