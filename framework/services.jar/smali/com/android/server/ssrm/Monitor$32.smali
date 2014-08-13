.class Lcom/android/server/ssrm/Monitor$32;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/server/ssrm/Monitor$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->registerCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;

.field final synthetic val$DROP_CACHES_SYSFS_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2215
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$32;->this$0:Lcom/android/server/ssrm/Monitor;

    iput-object p2, p0, Lcom/android/server/ssrm/Monitor$32;->val$DROP_CACHES_SYSFS_PATH:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2219
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "REQ_DROP_CACHE"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$32;->val$DROP_CACHES_SYSFS_PATH:Ljava/lang/String;

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    return-void
.end method
