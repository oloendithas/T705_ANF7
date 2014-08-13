.class public Lcom/sec/android/app/dialertab/calllog/ClearLogsDatabaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClearLogsDatabaseReceiver.java"


# static fields
.field private static final PACKAGE_LOGS_PROVIDER:Ljava/lang/String; = "com.sec.android.provider.logsprovider"

.field private static final TAG:Ljava/lang/String; = "ClearLogsDatabaseReceiver"


# instance fields
.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, "action":Ljava/lang/String;
    const/4 v2, 0x0

    .line 21
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 25
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.sec.android.provider.logsprovider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.android.provider.logsprovider"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/ClearLogsDatabaseReceiver;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/ClearLogsDatabaseReceiver;->mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    .line 34
    const-string v3, "ClearLogsDatabaseReceiver"

    const-string v4, "@@ logsprovider db cleared. send broadcast msg to logsproivder to checking db "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.LOGS_DB_DATA_CLEARED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    :cond_1
    :goto_1
    return-void

    .line 30
    :catch_0
    move-exception v1

    .line 31
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 37
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v3, "ClearLogsDatabaseReceiver"

    const-string v4, "@@ logsprovider db cleared. no op "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
