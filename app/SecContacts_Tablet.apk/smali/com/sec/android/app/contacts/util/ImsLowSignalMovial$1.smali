.class Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsLowSignalMovial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    .local v3, "IMS_REGISTRATION":Ljava/lang/String;
    const/4 v4, 0x0

    .line 38
    .local v4, "IMS_REG_STATUS":Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, "IMS_LOWSIGNAL":Ljava/lang/String;
    const/4 v2, 0x0

    .line 41
    .local v2, "IMS_LOWSIGNAL_STATUS":Ljava/lang/String;
    :try_start_0
    const-string v7, "com.movial.ipphone.IPUtils"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "IMS_REGISTRATION"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 42
    const-string v7, "com.movial.ipphone.IPUtils"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "IMS_REG_STATUS"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 43
    const-string v7, "com.movial.ipphone.IPUtils"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "IMS_LOWSIGNAL"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 44
    const-string v7, "com.movial.ipphone.IPUtils"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "IMS_LOWSIGNAL_STATUS"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const-class v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "action":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 51
    iget-object v7, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    invoke-virtual {p2, v2, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->setLowSignal(Z)V

    .line 55
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->notifyLowSignalRegistraints()V

    .line 56
    return-void

    .line 45
    .end local v5    # "action":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 46
    .local v6, "e":Ljava/lang/Exception;
    # getter for: Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "action":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    iget-object v7, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$1;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->setImsOn(Z)V

    goto :goto_1
.end method
