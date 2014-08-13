.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 3789
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v9, 0x10000000

    const/4 v8, -0x2

    .line 3793
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3866
    :goto_0
    return-void

    .line 3796
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3801
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "DismissClipboardDialogFromPhoneStatusBar"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3802
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3803
    const-string v5, "ClipboardServiceEx"

    const-string v6, "Send intent for dismiss clipboard dialog inside phonestatusbar() !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3804
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3810
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z

    if-eqz v5, :cond_2

    .line 3811
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3812
    .local v0, "eaIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.Settings$SettingsEmergencyActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3813
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3845
    .end local v0    # "eaIntent":Landroid/content/Intent;
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 3814
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEasyModeActivated:Z

    if-eqz v5, :cond_3

    .line 3815
    const-string v3, "com.sec.android.easysettings"

    .line 3816
    .local v3, "easySettingsPackage":Ljava/lang/String;
    const-string v2, "com.sec.android.easysettings.EasySettingsHomeActivity"

    .line 3817
    .local v2, "easySettingsClass":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3818
    .local v1, "easySettingIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3819
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3820
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 3823
    .end local v1    # "easySettingIntent":Landroid/content/Intent;
    .end local v2    # "easySettingsClass":Ljava/lang/String;
    .end local v3    # "easySettingsPackage":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.SETTINGS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v6

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 3797
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v5

    goto/16 :goto_1
.end method
