.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;
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
    .line 4857
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4863
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4864
    const-string v2, "PhoneStatusBar"

    const-string v3, "mSFinderButtonListener: Kiosk mode is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    :goto_0
    return-void

    .line 4869
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V

    .line 4872
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4873
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.galaxyfinder"

    const-string v4, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4875
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4878
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4879
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 4880
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot launch activity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
