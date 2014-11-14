.class public Lcom/absolute/android/persistservice/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/String; = "APS"

.field private static final c:Z


# instance fields
.field private d:Lcom/absolute/android/persistservice/aa;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Hashtable;

.field private g:Ljava/util/Hashtable;

.field private h:Lcom/absolute/android/persistservice/ag;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Lcom/absolute/android/persistservice/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/absolute/android/persistservice/ad;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;)V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ad;->c()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ah;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->b(Lcom/absolute/android/persistservice/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_3f

    :cond_1d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No longer have access to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    return-void

    :catch_40
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore access to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Persisted directory has been removed."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    :cond_1d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    if-eqz p2, :cond_4a

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v1

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/ai;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed / modified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_66

    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    :cond_66
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_27

    :catch_71
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore persisted file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/af;Z)V
    .registers 6

    .prologue
    .line 244
    monitor-enter p0

    if-eqz p2, :cond_1d

    .line 245
    :try_start_3
    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 246
    new-instance v0, Lcom/absolute/android/persistservice/af;

    invoke-static {p1}, Lcom/absolute/android/persistservice/af;->a(Lcom/absolute/android/persistservice/af;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/af;-><init>(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/absolute/android/persistservice/af;->a(Lcom/absolute/android/persistservice/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 253
    :goto_1b
    monitor-exit p0

    return-void

    .line 251
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1b

    .line 244
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/ah;)V
    .registers 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/absolute/android/persistservice/ai;)V
    .registers 6

    .prologue
    .line 153
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    new-instance v2, Lcom/absolute/android/persistservice/ah;

    invoke-direct {v2, p0, p1}, Lcom/absolute/android/persistservice/ah;-><init>(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ai;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_71

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 164
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    new-instance v3, Lcom/absolute/android/persistservice/af;

    invoke-direct {v3, p0, v1}, Lcom/absolute/android/persistservice/af;-><init>(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_71

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    .line 173
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    new-instance v2, Lcom/absolute/android/persistservice/af;

    invoke-direct {v2, p0, v0}, Lcom/absolute/android/persistservice/af;-><init>(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_71
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 459
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_1d

    .line 460
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Persisted directory has been removed."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 463
    :cond_1d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 487
    :cond_27
    :goto_27
    return-void

    .line 466
    :cond_28
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 467
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    .line 468
    if-eqz p2, :cond_4a

    .line 469
    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v1

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/ai;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 476
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed / modified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_66

    .line 478
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 480
    :cond_66
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_70} :catch_71

    goto :goto_27

    .line 482
    :catch_71
    move-exception v0

    .line 483
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_27

    .line 484
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore persisted file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_27
.end method

.method private declared-synchronized a(Z)V
    .registers 4

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 227
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 228
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/af;

    invoke-direct {p0, v0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/af;Z)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 226
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b()V
    .registers 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 201
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ah;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 199
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_1a
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/absolute/android/persistservice/ah;)V
    .registers 3

    .prologue
    .line 496
    monitor-enter p0

    if-eqz p1, :cond_a

    .line 500
    :try_start_3
    invoke-static {p1}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ai;->e()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 502
    :cond_a
    monitor-exit p0

    return-void

    .line 496
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 514
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 516
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 520
    monitor-exit p0

    return-void

    .line 514
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 527
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 528
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 529
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    .line 530
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->b(Lcom/absolute/android/persistservice/ah;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 527
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_1a
    const/4 v0, 0x1

    :try_start_1b
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->a(Z)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_17

    .line 535
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 551
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 554
    :cond_1d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_35

    .line 555
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No longer have access to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 557
    :cond_35
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3f} :catch_40

    .line 564
    :cond_3f
    :goto_3f
    return-void

    .line 559
    :catch_40
    move-exception v0

    .line 560
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_3f

    .line 561
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore access to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 573
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 575
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v0, "750"
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_14} :catch_a8
    .catchall {:try_start_1 .. :try_end_14} :catchall_c8

    .line 581
    :goto_14
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chown system:system "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_46} :catch_ed
    .catchall {:try_start_14 .. :try_end_46} :catchall_c8

    .line 590
    :goto_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_83

    .line 592
    :cond_5e
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_63} :catch_a8
    .catchall {:try_start_46 .. :try_end_63} :catchall_c8

    move-result v0

    if-eqz v0, :cond_cb

    .line 599
    :try_start_66
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Absolute Persistence Service unable to access "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_83} :catch_88
    .catchall {:try_start_66 .. :try_end_83} :catchall_c8

    .line 622
    :cond_83
    :goto_83
    monitor-exit p0

    return-void

    .line 575
    :cond_85
    :try_start_85
    const-string v0, "600"

    goto :goto_14

    .line 601
    :catch_88
    move-exception v0

    .line 602
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_83

    .line 603
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to reboot to reset access to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a7
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_a7} :catch_a8
    .catchall {:try_start_85 .. :try_end_a7} :catchall_c8

    goto :goto_83

    .line 617
    :catch_a8
    move-exception v0

    .line 618
    :try_start_a9
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_83

    .line 619
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doResetPermissions for : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c7
    .catchall {:try_start_a9 .. :try_end_c7} :catchall_c8

    goto :goto_83

    .line 573
    :catchall_c8
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_cb
    :try_start_cb
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_e9

    .line 611
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set permission of persisted file / folder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Deleting file ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 613
    :cond_e9
    invoke-static {v1}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_cb .. :try_end_ec} :catch_a8
    .catchall {:try_start_cb .. :try_end_ec} :catchall_c8

    goto :goto_83

    :catch_ed
    move-exception v0

    goto/16 :goto_46
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .registers 3

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    if-nez v0, :cond_1a

    .line 186
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABT_PersistedStorageManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    new-instance v1, Lcom/absolute/android/persistservice/ag;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/ag;-><init>(Lcom/absolute/android/persistservice/ad;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    .line 191
    :cond_1a
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ad;->b()V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->a(Z)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 193
    monitor-exit p0

    return-void

    .line 185
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/absolute/android/persistservice/aa;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    .line 55
    return-void
.end method

.method protected final declared-synchronized a(Lcom/absolute/android/persistservice/ai;Z)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 71
    monitor-enter p0

    .line 74
    if-eqz p2, :cond_11

    .line 77
    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 78
    invoke-virtual {p1, p0}, Lcom/absolute/android/persistservice/ai;->a(Lcom/absolute/android/persistservice/ad;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_71

    .line 84
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->f()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_14} :catch_1b
    .catchall {:try_start_11 .. :try_end_14} :catchall_111

    .line 85
    if-eqz p2, :cond_19

    .line 139
    :try_start_16
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_71

    .line 143
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 89
    :catch_1b
    move-exception v0

    .line 90
    :try_start_1c
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_74

    .line 92
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_117

    .line 93
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Persisted storage file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist. 1st boot?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_111

    move v2, v1

    .line 124
    :cond_41
    :goto_41
    if-nez v2, :cond_67

    .line 128
    :try_start_43
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->c()V

    .line 129
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->e()Z

    move-result v1

    .line 130
    if-nez v1, :cond_67

    .line 131
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_67

    .line 132
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to save initialized storage file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_67
    .catchall {:try_start_43 .. :try_end_67} :catchall_e7

    .line 138
    :cond_67
    if-nez v2, :cond_6b

    if-eqz v1, :cond_19

    :cond_6b
    if-eqz p2, :cond_19

    .line 139
    :try_start_6d
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_71

    goto :goto_19

    .line 71
    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_74
    :try_start_74
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_9c

    .line 98
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got exception reading persisted data file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_74 .. :try_end_9c} :catchall_111

    .line 103
    :cond_9c
    :try_start_9c
    iget-object v0, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/absolute/android/persistservice/ai;->j(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_a1} :catch_114
    .catchall {:try_start_9c .. :try_end_a1} :catchall_111

    .line 104
    const/4 v2, 0x1

    .line 105
    :try_start_a2
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->e()Z

    move-result v1

    .line 106
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_41

    .line 107
    if-eqz v1, :cond_f2

    .line 108
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully migrated pre-3118 format data file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_c2} :catch_c4
    .catchall {:try_start_a2 .. :try_end_c2} :catchall_e7

    goto/16 :goto_41

    .line 115
    :catch_c4
    move-exception v0

    .line 116
    :goto_c5
    :try_start_c5
    iget-object v3, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v3, :cond_41

    .line 117
    iget-object v3, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to read persisted data file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in pre-3118 format."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_c5 .. :try_end_e5} :catchall_e7

    goto/16 :goto_41

    .line 138
    :catchall_e7
    move-exception v0

    :goto_e8
    if-nez v2, :cond_ec

    if-eqz v1, :cond_f1

    :cond_ec
    if-eqz p2, :cond_f1

    .line 139
    :try_start_ee
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;)V

    :cond_f1
    throw v0
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_71

    .line 111
    :cond_f2
    :try_start_f2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loaded data from pre-3118 format data file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but failed to save in new format."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10f
    .catch Ljava/lang/Throwable; {:try_start_f2 .. :try_end_10f} :catch_c4
    .catchall {:try_start_f2 .. :try_end_10f} :catchall_e7

    goto/16 :goto_41

    .line 138
    :catchall_111
    move-exception v0

    move v2, v1

    goto :goto_e8

    .line 115
    :catch_114
    move-exception v0

    move v2, v1

    goto :goto_c5

    :cond_117
    move v2, v1

    goto/16 :goto_41
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 263
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 266
    if-nez v0, :cond_d

    .line 285
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 270
    :cond_d
    :try_start_d
    sget-boolean v1, Lcom/absolute/android/persistservice/ad;->a:Z

    if-nez v1, :cond_20

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    if-eqz v1, :cond_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1d

    .line 263
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_20
    :try_start_20
    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 274
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;Z)Z

    .line 278
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_1d

    goto :goto_b
.end method

.method protected final declared-synchronized a(Ljava/lang/String;ZZ)V
    .registers 7

    .prologue
    .line 297
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1e

    .line 300
    if-nez v0, :cond_d

    .line 351
    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    .line 304
    :cond_d
    :try_start_d
    sget-boolean v1, Lcom/absolute/android/persistservice/ad;->a:Z

    if-nez v1, :cond_21

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1e
    .catchall {:try_start_d .. :try_end_1e} :catchall_1e

    .line 297
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_21
    :try_start_21
    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 312
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;Z)Z

    .line 316
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    if-eqz v1, :cond_b

    .line 320
    if-eqz p2, :cond_52

    .line 325
    if-eqz p3, :cond_4e

    .line 331
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 334
    new-instance v1, Lcom/absolute/android/persistservice/ah;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/absolute/android/persistservice/ah;-><init>(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ai;)V

    .line 335
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_b

    .line 342
    :cond_4e
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_b

    .line 347
    :cond_52
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_b

    .line 348
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PersistedFileObserver.onSelfUpdateEnd(), failed to save to path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_21 .. :try_end_6b} :catchall_1e

    goto :goto_b
.end method
