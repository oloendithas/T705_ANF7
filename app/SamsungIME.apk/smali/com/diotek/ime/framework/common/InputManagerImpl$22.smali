.class Lcom/diotek/ime/framework/common/InputManagerImpl$22;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 9195
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9198
    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_0

    .line 9199
    const-string v2, "SamsungIME"

    const-string v3, "mBootCompleteReceiver onReceive()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9201
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 9202
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9203
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_boot_complete"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 9204
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9205
    return-void
.end method
