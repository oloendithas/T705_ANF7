.class Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
.super Ljava/util/ArrayList;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequestList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .locals 0

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;Lcom/android/server/ssrm/CustomFrequencyManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;
    .param p2, "x1"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$1;

    .prologue
    .line 1260
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V

    return-void
.end method


# virtual methods
.method addRequest(Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;)V
    .locals 4
    .param p1, "req"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .prologue
    .line 1264
    iget-object v1, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget v2, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1265
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 1266
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1267
    const-string v1, "CustomFrequencyManagerService"

    const-string v2, "FrequencyrequestList.addReqest:: insert new request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1271
    :cond_1
    return-void
.end method

.method dumpFrequencyList()V
    .locals 6

    .prologue
    .line 1545
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    # getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v3

    monitor-enter v3

    .line 1546
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1547
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 1548
    monitor-exit v3

    .line 1587
    :goto_0
    return-void

    .line 1550
    :cond_0
    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "############################ Start : LCD BUS GPU ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_7

    .line 1553
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0x9

    if-ne v2, v4, :cond_2

    .line 1555
    :cond_1
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPU     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v4, 0xb

    if-ne v2, v4, :cond_4

    .line 1563
    :cond_3
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUS     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    .line 1570
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CPU CORE "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    .line 1577
    const-string v4, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LCD     "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " : tag : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  Frequency = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Binder = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " UID "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1584
    :cond_7
    const-string v2, "CustomFrequencyManagerService"

    const-string v4, "############################ End :  LCD BUS GPU ###############################"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    monitor-exit v3

    goto/16 :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getAllCPUCoreLocks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1302
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v2, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1304
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1305
    .local v3, "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    if-eqz v3, :cond_1

    .line 1306
    iget-object v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 1308
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1303
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1312
    .end local v3    # "tempLock":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_2
    return-object v2
.end method

.method getIndex(Landroid/os/IBinder;ILjava/lang/String;)I
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "reqType"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1286
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1287
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1288
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    if-ne v2, p2, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget-object v2, v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    sget-boolean v2, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1291
    const-string v2, "CustomFrequencyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrequencyrequestList.getIndex:: i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v0

    .line 1287
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1296
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method getNextMaxCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1511
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1512
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1513
    .local v2, "indexMaxCPUCoreRequest":I
    const/4 v4, -0x1

    .line 1517
    .local v4, "maxFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1518
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 1519
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1521
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1522
    move v4, v0

    .line 1523
    move v2, v1

    .line 1517
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    .restart local v0    # "frequency":I
    :cond_1
    if-le v0, v4, :cond_0

    .line 1526
    move v4, v0

    .line 1527
    move v2, v1

    goto :goto_1

    .line 1533
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_3

    .line 1534
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1541
    .local v3, "maxCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v3

    .line 1538
    .end local v3    # "maxCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "maxCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxFpsRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1447
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1448
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1449
    .local v2, "indexMinMaxFpsRequest":I
    const/4 v3, -0x1

    .line 1452
    .local v3, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1453
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 1454
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1455
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1456
    move v3, v0

    .line 1457
    move v2, v1

    .line 1452
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1459
    .restart local v0    # "frequency":I
    :cond_1
    if-ge v0, v3, :cond_0

    .line 1460
    move v3, v0

    .line 1461
    move v2, v1

    goto :goto_1

    .line 1466
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_3

    .line 1467
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxFpsRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1473
    .local v4, "minMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1471
    .end local v4    # "minMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "minMaxFpsRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1316
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1317
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1318
    .local v2, "indexMaxGPURequest":I
    const/4 v3, -0x1

    .line 1322
    .local v3, "maxFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1323
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 1324
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1326
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1327
    move v3, v0

    .line 1328
    move v2, v1

    .line 1322
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1330
    .restart local v0    # "frequency":I
    :cond_1
    if-le v0, v3, :cond_0

    .line 1331
    move v3, v0

    .line 1332
    move v2, v1

    goto :goto_1

    .line 1338
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_4

    .line 1339
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1340
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1348
    .local v4, "maxGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1345
    .end local v4    # "maxGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "maxGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMaxSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1382
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1383
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1384
    .local v2, "indexMaxSysBusRequest":I
    const/4 v3, -0x1

    .line 1388
    .local v3, "maxFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1389
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_0

    .line 1390
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1392
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1393
    move v3, v0

    .line 1394
    move v2, v1

    .line 1388
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1396
    .restart local v0    # "frequency":I
    :cond_1
    if-le v0, v3, :cond_0

    .line 1397
    move v3, v0

    .line 1398
    move v2, v1

    goto :goto_1

    .line 1404
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_4

    .line 1405
    sget-boolean v6, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 1406
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMaxSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1413
    .local v4, "maxSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1411
    .end local v4    # "maxSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "maxSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMinCPUCoreRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1477
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1478
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1479
    .local v2, "indexMinCPUCoreRequest":I
    const/4 v4, -0x1

    .line 1483
    .local v4, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1484
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    .line 1485
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1487
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1488
    move v4, v0

    .line 1489
    move v2, v1

    .line 1483
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1491
    .restart local v0    # "frequency":I
    :cond_1
    if-ge v0, v4, :cond_0

    .line 1492
    move v4, v0

    .line 1493
    move v2, v1

    goto :goto_1

    .line 1499
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_3

    .line 1500
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinCPUCoreRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1507
    .local v3, "minCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v3

    .line 1504
    .end local v3    # "minCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "minCPUCoreRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMinGPURequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1352
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1353
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1354
    .local v2, "indexMinGPURequest":I
    const/4 v3, -0x1

    .line 1357
    .local v3, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1358
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    .line 1359
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1360
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1361
    move v3, v0

    .line 1362
    move v2, v1

    .line 1357
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1364
    .restart local v0    # "frequency":I
    :cond_1
    if-ge v0, v3, :cond_0

    .line 1365
    move v3, v0

    .line 1366
    move v2, v1

    goto :goto_1

    .line 1371
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_3

    .line 1372
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinGPURequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1378
    .local v4, "minGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1376
    .end local v4    # "minGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "minGPURequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method getNextMinSysBusRequest()Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 9

    .prologue
    .line 1417
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1418
    .local v5, "size":I
    const/4 v2, -0x1

    .line 1419
    .local v2, "indexMinSysBusRequest":I
    const/4 v3, -0x1

    .line 1422
    .local v3, "minFrequency":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 1423
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v6, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v7, 0xb

    if-ne v6, v7, :cond_0

    .line 1424
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    iget v0, v6, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1425
    .local v0, "frequency":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1426
    move v3, v0

    .line 1427
    move v2, v1

    .line 1422
    .end local v0    # "frequency":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    .restart local v0    # "frequency":I
    :cond_1
    if-ge v0, v3, :cond_0

    .line 1430
    move v3, v0

    .line 1431
    move v2, v1

    goto :goto_1

    .line 1436
    .end local v0    # "frequency":I
    :cond_2
    if-ltz v2, :cond_3

    .line 1437
    const-string v6, "CustomFrequencyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FrequencyrequestList.getNextMinSysBusRequest, index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1443
    .local v4, "minSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :goto_2
    return-object v4

    .line 1441
    .end local v4    # "minSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "minSysBusRequest":Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    goto :goto_2
.end method

.method removeRequest(Landroid/os/IBinder;ILjava/lang/String;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;->getIndex(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    .line 1275
    .local v0, "index":I
    if-ltz v0, :cond_1

    .line 1276
    sget-boolean v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1277
    const-string v1, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrequencyrequestList.removeRequest:: index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;

    .line 1281
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
