.class Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 3
    .param p1, "args"    # [Ljava/lang/Boolean;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->isWfcProvisioned()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)Z

    move-result v2

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Z)Z

    .line 50
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->mIsWfcProvisioned:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->updateWfcState(Z)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;Z)V

    .line 60
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 54
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton$WfcProvisionedTask;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VoWiFiQuickSettingButton;

    const-string v2, "com.oem.smartwifisupport.WIFI_CALLING"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->callActivity(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "STATUSBAR-VoWiFiQuickSettingButton"

    const-string v2, "Cannot find WfcStartupActivity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
