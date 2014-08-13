.class Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;
.super Ljava/lang/Object;
.source "ImsLowSignalMovial.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->showErrorDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    iput-object p2, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 130
    iget-object v5, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;->this$0:Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/util/ImsLowSignalBase;->dismissDialog()V

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "ACTION_UPDATE_NOTIFICATION":Ljava/lang/String;
    const/4 v2, 0x0

    .line 134
    .local v2, "EXTRA_UPDATE_INFO":Ljava/lang/String;
    :try_start_0
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "ACTION_UPDATE_NOTIFICATION"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 136
    const-string v5, "com.movial.ipphone.IPUtils"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "EXTRA_UPDATE_INFO"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v5, p0, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    return-void

    .line 137
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Ljava/lang/Exception;
    # getter for: Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/util/ImsLowSignalMovial;->access$000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
