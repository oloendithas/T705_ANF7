.class Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;
.super Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;
.source "CategoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;)V
    .locals 0

    .prologue
    .line 867
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/service/manager/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/service/manager/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/nuance/connect/service/comm/Response;)V
    .locals 1
    .param p1, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction$1;->this$1:Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->subscribeResponse(Lcom/nuance/connect/service/comm/Response;)V
    invoke-static {v0, p1}, Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;->access$400(Lcom/nuance/connect/service/manager/CategoryManager$DownloadDatabaseTransaction;Lcom/nuance/connect/service/comm/Response;)V

    .line 871
    return-void
.end method
