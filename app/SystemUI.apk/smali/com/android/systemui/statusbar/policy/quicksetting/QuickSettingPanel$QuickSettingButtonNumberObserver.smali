.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;
.super Landroid/database/ContentObserver;
.source "QuickSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSettingButtonNumberObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 184
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 185
    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getButtonNumberFromDB()I
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I

    .line 186
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getButtonNumberFromDB()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)I

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mVisibleButtonNum:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;I)I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel$QuickSettingButtonNumberObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->mSingleLine:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setSingleLine(Z)V

    .line 192
    return-void
.end method
