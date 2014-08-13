.class final Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;
.super Ljava/lang/Object;
.source "ACLanguageDownloadService.java"

# interfaces
.implements Lcom/nuance/connect/api/LanguageService$DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LanguageDownloadCallbackAdapter"
.end annotation


# instance fields
.field private callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

.field private notifiedStart:Z

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

.field private version:I

.field private xt9LanguageId:I


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;IILcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;)V
    .locals 1
    .param p2, "xt9LanguageId"    # I
    .param p3, "version"    # I
    .param p4, "callback"    # Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    .line 130
    iput p2, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    .line 131
    iput p3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->version:I

    .line 132
    iput-object p4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    .line 133
    return-void
.end method


# virtual methods
.method public downloadComplete(Ljava/io/File;)Z
    .locals 5
    .param p1, "zipFile"    # Ljava/io/File;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v1, v1, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v1, :cond_2

    .line 171
    iget-boolean v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->downloadStarted()V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v1, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadComplete(Ljava/io/File;)Z

    move-result v0

    .line 175
    .local v0, "status":Z
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 176
    if-eqz v0, :cond_1

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # getter for: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->downloaded:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$000(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)Ljava/util/HashMap;

    move-result-object v1

    iget v3, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->xt9LanguageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->version:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    # invokes: Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->save()V
    invoke-static {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->access$100(Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;)V

    .line 180
    :cond_1
    monitor-exit v2

    .line 183
    .end local v0    # "status":Z
    :goto_0
    return v0

    .line 181
    .restart local v0    # "status":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 183
    .end local v0    # "status":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public downloadFailed(I)V
    .locals 1
    .param p1, "reasonCode"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadFailed(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public downloadPercentage(I)V
    .locals 1
    .param p1, "percent"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_1

    .line 154
    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->downloadStarted()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadPercentage(I)V

    .line 159
    :cond_1
    return-void
.end method

.method public downloadStarted()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->notifiedStart:Z

    .line 147
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadStarted()V

    .line 149
    :cond_0
    return-void
.end method

.method public downloadStopped(I)V
    .locals 1
    .param p1, "reasonCode"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->this$0:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    iget-boolean v0, v0, Lcom/nuance/swypeconnect/ac/ACService;->isShutdown:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$LanguageDownloadCallbackAdapter;->callback:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadFileCallback;->downloadStopped(I)V

    .line 141
    :cond_0
    return-void
.end method
