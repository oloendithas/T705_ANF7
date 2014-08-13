.class Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;
.super Ljava/lang/Thread;
.source "CallLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private volatile mDone:Z

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)V
    .locals 1

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    .line 1179
    const-string v0, "CallLogAdapter.QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->mDone:Z

    .line 1180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1188
    const/4 v1, 0x0

    .line 1191
    .local v1, "needRedraw":Z
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->mDone:Z

    if-eqz v3, :cond_1

    return-void

    .line 1193
    :cond_1
    sget v3, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    if-eqz v3, :cond_2

    sget v3, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 1195
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mMessage:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1196
    const-string v3, "CallLogAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***************** updating contact ContactsDB_Status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/contacts/activities/DialtactsActivity;->mContactsDB_Status:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ******************"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mMessage:Z
    invoke-static {v3, v7}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Z)Z

    goto :goto_0

    .line 1201
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    const/4 v4, 0x0

    # setter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mMessage:Z
    invoke-static {v3, v4}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Z)Z

    .line 1205
    const/4 v2, 0x0

    .line 1206
    .local v2, "req":Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 1207
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1208
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;

    move-object v2, v0

    .line 1210
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    if-eqz v2, :cond_4

    .line 1215
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    iget-object v4, v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;->number:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;->countryIso:Ljava/lang/String;

    iget-object v6, v2, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$ContactInfoRequest;->callLogInfo:Lcom/sec/android/app/dialertab/calllog/ContactInfo;

    # invokes: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z
    invoke-static {v3, v4, v5, v6}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/dialertab/calllog/ContactInfo;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    .line 1210
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1219
    :cond_4
    if-eqz v1, :cond_5

    .line 1220
    const/4 v1, 0x0

    .line 1221
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1228
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1229
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;

    # getter for: Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogAdapter;)Ljava/util/LinkedList;

    move-result-object v3

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 1230
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1231
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public stopProcessing()V
    .locals 1

    .prologue
    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogAdapter$QueryThread;->mDone:Z

    .line 1184
    return-void
.end method
