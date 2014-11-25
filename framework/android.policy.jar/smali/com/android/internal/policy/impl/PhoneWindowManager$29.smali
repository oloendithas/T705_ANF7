.class Lcom/android/internal/policy/impl/PhoneWindowManager$29;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 7514
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 7516
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7517
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.android.server.enterprise.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 7519
    :try_start_c
    const-string v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .line 7521
    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_28

    .line 7522
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$29;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-interface {v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v4

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2702(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;

    .line 7523
    const-string v3, "WindowManager"

    const-string v4, "Blocked hw keys cache is being refreshed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_28} :catch_29

    .line 7529
    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_28
    :goto_28
    return-void

    .line 7525
    :catch_29
    move-exception v1

    .line 7526
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
