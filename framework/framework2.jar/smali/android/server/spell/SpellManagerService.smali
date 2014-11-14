.class public Landroid/server/spell/SpellManagerService;
.super Landroid/app/ISpellManager$Stub;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/spell/SpellManagerService$MyPackageMonitor;,
        Landroid/server/spell/SpellManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAYED_SCAN_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "SpellManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mScanRunnable:Ljava/lang/Runnable;

.field private mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_7
    sput-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/app/ISpellManager$Stub;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Landroid/server/spell/SpellManagerService$1;

    invoke-direct {v0, p0}, Landroid/server/spell/SpellManagerService$1;-><init>(Landroid/server/spell/SpellManagerService;)V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    .line 93
    iput-object p1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/server/spell/SpellManagerService$BootCompletedReceiver;-><init>(Landroid/server/spell/SpellManagerService;Landroid/server/spell/SpellManagerService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/server/spell/SpellManagerService;)V
    .registers 1
    .param p0, "x0"    # Landroid/server/spell/SpellManagerService;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->updateSpellScrollInfo()V

    return-void
.end method

.method static synthetic access$300(Landroid/server/spell/SpellManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/server/spell/SpellManagerService;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/server/spell/SpellManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/server/spell/SpellManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/server/spell/SpellManagerService;->scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized ensureScanningCompleted()V
    .registers 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 112
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 116
    :cond_17
    monitor-exit p0

    return-void

    .line 111
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getScanner()Landroid/server/spell/SpellScrollScanner;
    .registers 5

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    if-nez v0, :cond_1a

    .line 100
    new-instance v0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Landroid/server/spell/SpellManagerService$MyPackageMonitor;-><init>(Landroid/server/spell/SpellManagerService;)V

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 102
    new-instance v0, Landroid/server/spell/SpellScrollScanner;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/server/spell/SpellScrollScanner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    .line 104
    :cond_1a
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-object v0

    .line 99
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleUpdateSpellScrollInfo(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    .line 148
    const-string v0, "SpellManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleUpdateSpellScrollInfo reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1d
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 152
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    sget-boolean v0, Landroid/server/spell/SpellManagerService;->DEBUG:Z

    if-eqz v0, :cond_39

    .line 155
    const-string v0, "SpellManagerService"

    const-string v1, "Pre-scheduled updates has been skipped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_39
    iget-object v0, p0, Landroid/server/spell/SpellManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/server/spell/SpellManagerService;->mScanRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    return-void
.end method

.method private updateSpellScrollInfo()V
    .registers 6

    .prologue
    .line 126
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v3

    int-to-long v1, v3

    .line 129
    .local v1, "prevHash":J
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    .line 131
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_2e

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.spell.action.SPELLSCROLL_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2e
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 314
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 315
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_42

    .line 317
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission Denial: can\'t dump SpellManagerService from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    :goto_41
    return-void

    .line 325
    :cond_42
    const-string v6, "SpellManagerService"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    const-string v6, "==========================================================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hashCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/server/spell/SpellManagerService;->getInformationHash()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    if-nez v6, :cond_70

    .line 330
    const-string v6, "No spell scrolls found."

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_41

    .line 334
    :cond_70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 336
    .local v2, "origId":J
    array-length v6, p3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_91

    .line 337
    const/4 v6, 0x0

    aget-object v6, p3, v6

    const-string v7, "-r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_91

    .line 338
    new-instance v6, Landroid/server/spell/SpellScrollScanner;

    iget-object v7, p0, Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/server/spell/SpellScrollScanner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    .line 339
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v6}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    .line 343
    :cond_91
    iget-object v6, p0, Landroid/server/spell/SpellManagerService;->mSpellScrollScanner:Landroid/server/spell/SpellScrollScanner;

    invoke-virtual {v6}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollList()Ljava/util/List;

    move-result-object v5

    .line 345
    .local v5, "scrolls":Ljava/util/List;, "Ljava/util/List<Landroid/app/SpellScroll;>;"
    if-eqz v5, :cond_c6

    .line 346
    const/4 v0, 0x1

    .line 348
    .local v0, "i":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SpellScroll;

    .line 349
    .local v4, "scroll":Landroid/app/SpellScroll;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SpellScroll #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v4, p2}, Landroid/app/SpellScroll;->dump(Ljava/io/PrintWriter;)V

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_9e

    .line 356
    .end local v0    # "i":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "scroll":Landroid/app/SpellScroll;
    :cond_c6
    const-string v6, "==========================================================================="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Total "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SpellScrolls"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 360
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_41
.end method

.method public getInformationHash()I
    .registers 2

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 300
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v0

    return v0
.end method

.method public getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 294
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .registers 4
    .param p1, "spellScrollName"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 211
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    .line 213
    .local v0, "orig":Landroid/app/SpellScroll;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getSpellById(J)Landroid/app/SpellScroll;
    .registers 6
    .param p1, "spellId"    # J

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 232
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    .line 234
    .local v0, "pair":Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v0, :cond_1a

    .line 235
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/server/spell/SpellManagerService;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 238
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;
    .registers 7
    .param p1, "spellScrollName"    # Ljava/lang/String;
    .param p2, "spellName"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 269
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .line 271
    .local v1, "orig":Landroid/app/SpellScroll;
    if-eqz v1, :cond_1b

    .line 272
    invoke-virtual {v1, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;

    move-result-object v2

    .line 274
    .local v2, "spell":Landroid/app/SpellScroll$Spell;
    if-eqz v2, :cond_1b

    .line 275
    invoke-virtual {v1}, Landroid/app/SpellScroll;->shallowCopy()Landroid/app/SpellScroll;

    move-result-object v0

    .line 276
    .local v0, "copied":Landroid/app/SpellScroll;
    invoke-virtual {v0, v2}, Landroid/app/SpellScroll;->addSpell(Landroid/app/SpellScroll$Spell;)V

    .line 282
    .end local v0    # "copied":Landroid/app/SpellScroll;
    .end local v2    # "spell":Landroid/app/SpellScroll$Spell;
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getSpellNameById(J)Ljava/lang/String;
    .registers 5
    .param p1, "spellId"    # J

    .prologue
    .line 249
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 250
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    .line 252
    .local v0, "pair":Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getSpellNames(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "spellScrollName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 225
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    .line 227
    .local v0, "orig":Landroid/app/SpellScroll;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/SpellScroll;->getSpellNames()Ljava/util/List;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .registers 3
    .param p1, "spellScrollName"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 220
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNameById(J)Ljava/lang/String;
    .registers 5
    .param p1, "spellId"    # J

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 243
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/server/spell/SpellScrollScanner;->getSpellIdInfo(J)Lorg/apache/http/message/BasicNameValuePair;

    move-result-object v0

    .line 245
    .local v0, "pair":Lorg/apache/http/message/BasicNameValuePair;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getSpellScrollNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 191
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNamesByPriority(I)Ljava/util/List;
    .registers 3
    .param p1, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 196
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNames(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpellScrollNamesWithIngredientName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "ingredientName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 306
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->getSpellScrollNamesWithIngredientName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "spellScrollName"    # Ljava/lang/String;
    .param p2, "spellName"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 206
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/server/spell/SpellScrollScanner;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidSpellScroll(Ljava/lang/String;)Z
    .registers 3
    .param p1, "spellScrollName"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->ensureScanningCompleted()V

    .line 201
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/server/spell/SpellScrollScanner;->isValidSpellScroll(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
