.class Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$ToolboxSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ToolboxQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolboxSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$ToolboxSettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$ToolboxSettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$ToolboxSettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;->getToolboxEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$ToolboxSettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 53
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
