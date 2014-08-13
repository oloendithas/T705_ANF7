.class Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->queryWfcState()I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v5, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_1

    :cond_0
    move v0, v2

    .line 73
    .local v0, "isTransitioning":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 83
    :goto_1
    return-void

    .end local v0    # "isTransitioning":Z
    :cond_1
    move v0, v1

    .line 72
    goto :goto_0

    .line 77
    .restart local v0    # "isTransitioning":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 78
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    .line 82
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    goto :goto_1

    .line 80
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 64
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcEnableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
