.class public Lcom/sec/android/app/contacts/util/ContactsUtil$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContactsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/ContactsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserSwitchReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserSwitchReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1113
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1119
    if-eqz p2, :cond_1

    .line 1120
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    :cond_0
    const/4 v0, 0x0

    .line 1123
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "isKioskModeEnabled"

    invoke-static {p1, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1125
    const-string v1, "true"

    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1126
    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->access$002(Z)Z

    .line 1131
    :goto_0
    const-string v1, "UserSwitchReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->access$000()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 1128
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_2
    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/util/ContactsUtil;->mbIsContainerOnlyMode:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->access$002(Z)Z

    goto :goto_0
.end method
