.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;
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
    .line 3921
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3924
    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->mShowWorldClock:Z

    if-eqz v6, :cond_3

    .line 3925
    const-string v6, "PhoneStatusBar"

    const-string v7, "onClick() : mClock clicked"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3928
    .local v1, "deviceType":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3929
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SHOW_DATE_TIME_DIALOG"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3930
    .local v2, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3961
    .end local v1    # "deviceType":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3933
    .restart local v1    # "deviceType":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v7, "com.sec.android.app.clockpackage"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3934
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SHOW_WORLDCLOCK_DIALOG"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3935
    .restart local v2    # "i":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v6, "com.sec.android.app.clockpackage"

    const-string v7, "com.sec.android.app.clockpackage.worldclock.ToWorldClockReceiver"

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3937
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3938
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 3939
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v7, "com.sec.android.app.samsungapps"

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPackageInstalled(Ljava/lang/String;)Z
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3940
    const-string v4, "com.sec.android.app.clockpackage"

    .line 3941
    .local v4, "packageName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3943
    .local v5, "uri":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3944
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3945
    const-string v6, "NOACCOUNT"

    const-string v7, "Y"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3946
    const v6, 0x14000020

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3949
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v6, v6, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3950
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 3952
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_2
    const-string v6, "STATUSBAR-PhoneStatusBar"

    const-string v7, "No Clock, No Samsung Apps"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3958
    .end local v1    # "deviceType":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.QUICK_CLOCK"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    goto/16 :goto_0
.end method
