.class Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;
.super Landroid/database/ContentObserver;
.source "DormantModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DormantModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)V
    .locals 1

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    .line 351
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 352
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 356
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 357
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->getMode()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$402(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;Z)Z

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->mState:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton$DormantModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DormantModeQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 362
    return-void

    :cond_0
    move v0, v2

    .line 357
    goto :goto_0

    .line 358
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
