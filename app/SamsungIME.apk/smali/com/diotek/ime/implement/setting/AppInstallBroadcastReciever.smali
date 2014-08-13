.class public Lcom/diotek/ime/implement/setting/AppInstallBroadcastReciever;
.super Landroid/content/BroadcastReceiver;
.source "AppInstallBroadcastReciever.java"


# static fields
.field public static final SAMSUNG_FB_ACCOUNT_TYPE:Ljava/lang/String; = "com.sec.android.app.sns3.facebook"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "added_package":Ljava/lang/String;
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 25
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "siso added package name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    .local v2, "xt9Version":I
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    if-nez v3, :cond_2

    .line 30
    const-string v3, "SamsungIME"

    const-string v4, "InputManagerImpl.getInstance() == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "added_package":Ljava/lang/String;
    .end local v2    # "xt9Version":I
    :cond_1
    :goto_0
    return-void

    .line 34
    .restart local v0    # "added_package":Ljava/lang/String;
    .restart local v2    # "xt9Version":I
    :cond_2
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->getXt9Version()I

    move-result v2

    .line 36
    const-string v3, "XT9"

    const-string v4, "SWIFTKEY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 37
    .local v1, "xt9Mode":Z
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 38
    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 39
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AppInstallBroadcastReciever] xt9Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not support about facebook functions!!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
