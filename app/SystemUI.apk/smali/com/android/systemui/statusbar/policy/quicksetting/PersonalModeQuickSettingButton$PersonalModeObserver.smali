.class Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;
.super Landroid/database/ContentObserver;
.source "PersonalModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 147
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 151
    const-string v0, "STATUSBAR-PersonalModeQuickSettingButton"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton$PersonalModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PersonalModeQuickSettingButton;)V

    .line 154
    return-void
.end method
