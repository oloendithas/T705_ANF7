.class Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;
.super Landroid/database/ContentObserver;
.source "NetworkBoosterQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkBoosterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    .line 132
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->onChange(Z)V

    .line 134
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    const-string v0, "STATUSBAR-NetworkBoosterQuickSettingButton"

    const-string v4, "NetworkBoosterObserver onChange()"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mState:Z
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;Z)Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsWfcRegistered:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 147
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 148
    return-void

    :cond_0
    move v0, v2

    .line 137
    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsAirpalneOn:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$NetworkBoosterObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mState:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method
