.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;
.super Landroid/database/ContentObserver;
.source "SmartPauseQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartPauseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)V
    .locals 1

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 168
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    const-string v0, "STATUSBAR-SmartPause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartPauseObserverObserver.onChange() - DB_SMART_PAUSE_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v0, "STATUSBAR-SmartPause"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartPauseObserverObserver.onChange() - DB_SMART_PAUSE_ON = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 178
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "smart_pause"

    invoke-static {v0, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;Z)Z

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$SmartPauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 184
    return-void

    .line 178
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    .line 180
    goto :goto_1
.end method
