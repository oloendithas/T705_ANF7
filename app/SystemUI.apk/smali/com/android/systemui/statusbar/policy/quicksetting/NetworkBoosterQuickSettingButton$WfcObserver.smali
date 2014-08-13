.class Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;
.super Landroid/database/ContentObserver;
.source "NetworkBoosterQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->onChange(Z)V

    .line 115
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x2

    .line 117
    const-string v1, "STATUSBAR-NetworkBoosterQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfcObserver() onChange - mIsWfcRegistered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsWfcRegistered:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsWfcRegistered:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;Z)Z

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsWfcRegistered:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->setActivateStatus(I)V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mIsAirpalneOn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
