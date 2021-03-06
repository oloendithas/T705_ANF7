.class public final Landroid/os/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Debug$1;,
        Landroid/os/Debug$DebugProperty;,
        Landroid/os/Debug$InstructionCount;,
        Landroid/os/Debug$MemoryInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_TRACE_BODY:Ljava/lang/String; = "dmtrace"

.field private static final DEFAULT_TRACE_EXTENSION:Ljava/lang/String; = ".trace"

.field private static final DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

.field private static final DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

.field public static final MEMINFO_BUFFERS:I = 0x2

.field public static final MEMINFO_CACHED:I = 0x3

.field public static final MEMINFO_COUNT:I = 0x9

.field public static final MEMINFO_FREE:I = 0x1

.field public static final MEMINFO_SHMEM:I = 0x4

.field public static final MEMINFO_SLAB:I = 0x5

.field public static final MEMINFO_SWAP_FREE:I = 0x7

.field public static final MEMINFO_SWAP_TOTAL:I = 0x6

.field public static final MEMINFO_TOTAL:I = 0x0

.field public static final MEMINFO_ZRAM_TOTAL:I = 0x8

.field private static final MIN_DEBUGGER_IDLE:I = 0x514

.field public static final SHOW_CLASSLOADER:I = 0x2

.field public static final SHOW_FULL_DETAIL:I = 0x1

.field public static final SHOW_INITIALIZED:I = 0x4

.field private static final SPIN_DELAY:I = 0xc8

.field private static final SYSFS_QEMU_TRACE_STATE:Ljava/lang/String; = "/sys/qemu_trace/state"

.field private static final TAG:Ljava/lang/String; = "Debug"

.field public static final TRACE_COUNT_ALLOCS:I = 0x1

.field private static final debugProperties:Lcom/android/internal/util/TypedProperties;

.field private static volatile mWaiting:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/Debug;->mWaiting:Z

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dmtrace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    .line 1380
    const/4 v0, 0x0

    sput-object v0, Landroid/os/Debug;->debugProperties:Lcom/android/internal/util/TypedProperties;

    .line 1382
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final cacheRegisterMap(Ljava/lang/String;)Z
    .registers 2
    .param p0, "classAndMethodDesc"    # Ljava/lang/String;

    .prologue
    .line 1241
    invoke-static {p0}, Ldalvik/system/VMDebug;->cacheRegisterMap(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static changeDebugPort(I)V
    .registers 1
    .param p0, "port"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 478
    return-void
.end method

.method public static countInstancesOfClass(Ljava/lang/Class;)J
    .registers 3
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 1192
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .registers 1
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {p0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;)V

    .line 1152
    return-void
.end method

.method public static dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 2
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1165
    invoke-static {p0, p1}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 1166
    return-void
.end method

.method public static dumpHprofDataDdms()V
    .registers 0

    .prologue
    .line 1176
    invoke-static {}, Ldalvik/system/VMDebug;->dumpHprofDataDdms()V

    .line 1177
    return-void
.end method

.method public static native dumpNativeBacktraceToFile(ILjava/lang/String;)V
.end method

.method public static native dumpNativeHeap(Ljava/io/FileDescriptor;)V
.end method

.method public static final dumpReferenceTables()V
    .registers 0

    .prologue
    .line 1251
    invoke-static {}, Ldalvik/system/VMDebug;->dumpReferenceTables()V

    .line 1252
    return-void
.end method

.method public static native dumpResetReason(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1579
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1580
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_20

    .line 1581
    const-string v3, "Debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find service to dump: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    :goto_1f
    return v2

    .line 1586
    :cond_20
    :try_start_20
    invoke-interface {v1, p1, p2}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_25

    .line 1587
    const/4 v2, 0x1

    goto :goto_1f

    .line 1588
    :catch_25
    move-exception v0

    .line 1589
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Debug"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t dump service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public static enableEmulatorTraceOutput()V
    .registers 0

    .prologue
    .line 571
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 572
    return-void
.end method

.method private static fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z
    .registers 8
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1392
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 1393
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p1, :cond_a

    move v5, v4

    .line 1409
    :goto_9
    return v5

    .line 1402
    :cond_a
    :try_start_a
    const-string v3, "TYPE"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_f} :catch_1c

    move-result-object v2

    .line 1407
    .local v2, "primitiveTypeField":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_17} :catch_20

    if-ne v1, v3, :cond_1e

    move v3, v4

    :goto_1a
    move v5, v3

    goto :goto_9

    .line 1403
    .end local v2    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :catch_1c
    move-exception v0

    .line 1404
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    goto :goto_9

    .end local v0    # "ex":Ljava/lang/NoSuchFieldException;
    .restart local v2    # "primitiveTypeField":Ljava/lang/reflect/Field;
    :cond_1e
    move v3, v5

    .line 1407
    goto :goto_1a

    .line 1408
    :catch_20
    move-exception v0

    .line 1409
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    goto :goto_9
.end method

.method public static final native getBinderDeathObjectCount()I
.end method

.method public static final native getBinderLocalObjectCount()I
.end method

.method public static final native getBinderProxyObjectCount()I
.end method

.method public static native getBinderReceivedTransactions()I
.end method

.method public static native getBinderSentTransactions()I
.end method

.method public static getCaller()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1669
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;
    .registers 5
    .param p0, "callStack"    # [Ljava/lang/StackTraceElement;
    .param p1, "depth"    # I

    .prologue
    .line 1609
    add-int/lit8 v1, p1, 0x4

    array-length v2, p0

    if-lt v1, v2, :cond_8

    .line 1610
    const-string v1, "<bottom of call stack>"

    .line 1613
    :goto_7
    return-object v1

    .line 1612
    :cond_8
    add-int/lit8 v1, p1, 0x4

    aget-object v0, p0, v1

    .line 1613
    .local v0, "caller":Ljava/lang/StackTraceElement;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static getCallers(I)Ljava/lang/String;
    .registers 6
    .param p0, "depth"    # I

    .prologue
    .line 1623
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1624
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1625
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p0, :cond_20

    .line 1626
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1625
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1628
    :cond_20
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(II)Ljava/lang/String;
    .registers 7
    .param p0, "start"    # I
    .param p1, "depth"    # I

    .prologue
    .line 1638
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1639
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1640
    .local v2, "sb":Ljava/lang/StringBuffer;
    add-int/2addr p1, p0

    .line 1641
    move v1, p0

    .local v1, "i":I
    :goto_f
    if-ge v1, p1, :cond_21

    .line 1642
    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1641
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1644
    :cond_21
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getCallers(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "depth"    # I
    .param p1, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 1656
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 1657
    .local v0, "callStack":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1658
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p0, :cond_24

    .line 1659
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCaller([Ljava/lang/StackTraceElement;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1658
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1661
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGlobalAllocCount()I
    .registers 1

    .prologue
    .line 745
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalAllocSize()I
    .registers 1

    .prologue
    .line 761
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitCount()I
    .registers 1

    .prologue
    .line 826
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalClassInitTime()I
    .registers 1

    .prologue
    .line 843
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 883
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 892
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalExternalFreedSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 908
    const/4 v0, 0x0

    return v0
.end method

.method public static getGlobalFreedCount()I
    .registers 1

    .prologue
    .line 777
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalFreedSize()I
    .registers 1

    .prologue
    .line 793
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getGlobalGcInvocationCount()I
    .registers 1

    .prologue
    .line 809
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getLoadedClassCount()I
    .registers 1

    .prologue
    .line 1139
    invoke-static {}, Ldalvik/system/VMDebug;->getLoadedClassCount()I

    move-result v0

    return v0
.end method

.method public static native getMemInfo([J)V
.end method

.method public static native getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V
.end method

.method public static native getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
.end method

.method public static getMethodTracingMode()I
    .registers 1

    .prologue
    .line 685
    invoke-static {}, Ldalvik/system/VMDebug;->getMethodTracingMode()I

    move-result v0

    return v0
.end method

.method public static native getNativeHeapAllocatedSize()J
.end method

.method public static native getNativeHeapFreeSize()J
.end method

.method public static native getNativeHeapSize()J
.end method

.method public static native getPss()J
.end method

.method public static native getPss(I[J)J
.end method

.method public static getThreadAllocCount()I
    .registers 1

    .prologue
    .line 923
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadAllocSize()I
    .registers 1

    .prologue
    .line 940
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getThreadExternalAllocCount()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 957
    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadExternalAllocSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 973
    const/4 v0, 0x0

    return v0
.end method

.method public static getThreadGcInvocationCount()I
    .registers 1

    .prologue
    .line 988
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->getAllocCount(I)I

    move-result v0

    return v0
.end method

.method public static getVmFeatureList()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 469
    invoke-static {}, Ldalvik/system/VMDebug;->getVmFeatureList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isDebuggerConnected()Z
    .registers 1

    .prologue
    .line 458
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static native isProductShip()I
.end method

.method private static modifyFieldIfSet(Ljava/lang/reflect/Field;Lcom/android/internal/util/TypedProperties;Ljava/lang/String;)V
    .registers 9
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "properties"    # Lcom/android/internal/util/TypedProperties;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 1420
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_85

    .line 1421
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->getStringInfo(Ljava/lang/String;)I

    move-result v1

    .line 1422
    .local v1, "stringInfo":I
    packed-switch v1, :pswitch_data_f6

    .line 1441
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected getStringInfo("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1428
    :pswitch_32
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_34
    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_37} :catch_38

    .line 1460
    .end local v1    # "stringInfo":I
    :cond_37
    :goto_37
    :pswitch_37
    return-void

    .line 1429
    .restart local v1    # "stringInfo":I
    :catch_38
    move-exception v0

    .line 1430
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1437
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :pswitch_52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match field type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1446
    .end local v1    # "stringInfo":I
    :cond_85
    :pswitch_85
    invoke-virtual {p1, p2}, Lcom/android/internal/util/TypedProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1447
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_37

    .line 1448
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/Debug;->fieldTypeMatches(Ljava/lang/reflect/Field;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_d6

    .line 1449
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not match field type ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1454
    :cond_d6
    const/4 v3, 0x0

    :try_start_d7
    invoke-virtual {p0, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_da
    .catch Ljava/lang/IllegalAccessException; {:try_start_d7 .. :try_end_da} :catch_dc

    goto/16 :goto_37

    .line 1455
    :catch_dc
    move-exception v0

    .line 1456
    .restart local v0    # "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set field for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1422
    :pswitch_data_f6
    .packed-switch -0x2
        :pswitch_52
        :pswitch_37
        :pswitch_32
        :pswitch_85
    .end packed-switch
.end method

.method public static printLoadedClasses(I)V
    .registers 1
    .param p0, "flags"    # I

    .prologue
    .line 1131
    invoke-static {p0}, Ldalvik/system/VMDebug;->printLoadedClasses(I)V

    .line 1132
    return-void
.end method

.method public static resetAllCounts()V
    .registers 1

    .prologue
    .line 1004
    const/4 v0, -0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 1005
    return-void
.end method

.method public static resetGlobalAllocCount()V
    .registers 1

    .prologue
    .line 753
    const/4 v0, 0x1

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 754
    return-void
.end method

.method public static resetGlobalAllocSize()V
    .registers 1

    .prologue
    .line 769
    const/4 v0, 0x2

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 770
    return-void
.end method

.method public static resetGlobalClassInitCount()V
    .registers 1

    .prologue
    .line 834
    const/16 v0, 0x20

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 835
    return-void
.end method

.method public static resetGlobalClassInitTime()V
    .registers 1

    .prologue
    .line 851
    const/16 v0, 0x40

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 852
    return-void
.end method

.method public static resetGlobalExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 875
    return-void
.end method

.method public static resetGlobalExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 868
    return-void
.end method

.method public static resetGlobalExternalFreedCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 900
    return-void
.end method

.method public static resetGlobalExternalFreedSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 916
    return-void
.end method

.method public static resetGlobalFreedCount()V
    .registers 1

    .prologue
    .line 785
    const/4 v0, 0x4

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 786
    return-void
.end method

.method public static resetGlobalFreedSize()V
    .registers 1

    .prologue
    .line 801
    const/16 v0, 0x8

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 802
    return-void
.end method

.method public static resetGlobalGcInvocationCount()V
    .registers 1

    .prologue
    .line 817
    const/16 v0, 0x10

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 818
    return-void
.end method

.method public static resetThreadAllocCount()V
    .registers 1

    .prologue
    .line 931
    const/high16 v0, 0x10000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 932
    return-void
.end method

.method public static resetThreadAllocSize()V
    .registers 1

    .prologue
    .line 948
    const/high16 v0, 0x20000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 949
    return-void
.end method

.method public static resetThreadExternalAllocCount()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 965
    return-void
.end method

.method public static resetThreadExternalAllocSize()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 981
    return-void
.end method

.method public static resetThreadGcInvocationCount()V
    .registers 1

    .prologue
    .line 996
    const/high16 v0, 0x100000

    invoke-static {v0}, Ldalvik/system/VMDebug;->resetAllocCount(I)V

    .line 997
    return-void
.end method

.method public static native saveDumpstate(Ljava/lang/String;)V
.end method

.method public static setAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1109
    const/4 v0, -0x1

    return v0
.end method

.method public static setFieldsOn(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/Debug;->setFieldsOn(Ljava/lang/Class;Z)V

    .line 1472
    return-void
.end method

.method public static setFieldsOn(Ljava/lang/Class;Z)V
    .registers 5
    .param p1, "partial"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 1550
    .local p0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFieldsOn("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_25

    const-string/jumbo v0, "null"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") called in non-DEBUG build"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    return-void

    .line 1550
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static setGlobalAllocationLimit(I)I
    .registers 2
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1122
    const/4 v0, -0x1

    return v0
.end method

.method public static startAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 727
    invoke-static {}, Ldalvik/system/VMDebug;->startAllocCounting()V

    .line 728
    return-void
.end method

.method public static startMethodTracing()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 581
    sget-object v0, Landroid/os/Debug;->DEFAULT_TRACE_FILE_PATH:Ljava/lang/String;

    invoke-static {v0, v1, v1}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    .line 582
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;)V
    .registers 2
    .param p0, "traceName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 597
    invoke-static {p0, v0, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 598
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;I)V
    .registers 3
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I

    .prologue
    .line 614
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V

    .line 615
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .registers 6
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    .prologue
    .line 643
    move-object v0, p0

    .line 644
    .local v0, "pathName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1d

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Debug;->DEFAULT_TRACE_PATH_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 646
    :cond_1d
    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".trace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    :cond_38
    invoke-static {v0, p1, p2}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;II)V

    .line 650
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .registers 4
    .param p0, "traceName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I

    .prologue
    .line 663
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    .line 664
    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .registers 4
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    .prologue
    .line 675
    invoke-static {p0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdms(IIZI)V

    .line 676
    return-void
.end method

.method public static startNativeTracing()V
    .registers 4

    .prologue
    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, "outStream":Ljava/io/PrintWriter;
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "/sys/qemu_trace/state"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_1c
    .catchall {:try_start_1 .. :try_end_d} :catchall_23

    .line 520
    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_d
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_2d
    .catchall {:try_start_d .. :try_end_12} :catchall_2a

    .line 523
    if-eqz v2, :cond_30

    .line 524
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->close()V

    move-object v1, v2

    .line 527
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    :cond_18
    :goto_18
    invoke-static {}, Ldalvik/system/VMDebug;->startEmulatorTracing()V

    .line 528
    return-void

    .line 521
    :catch_1c
    move-exception v3

    .line 523
    :goto_1d
    if-eqz v1, :cond_18

    .line 524
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->close()V

    goto :goto_18

    .line 523
    :catchall_23
    move-exception v3

    :goto_24
    if-eqz v1, :cond_29

    .line 524
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->close()V

    :cond_29
    throw v3

    .line 523
    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_2a
    move-exception v3

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    goto :goto_24

    .line 521
    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_2d
    move-exception v3

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1d

    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :cond_30
    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    goto :goto_18
.end method

.method public static stopAllocCounting()V
    .registers 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    invoke-static {}, Ldalvik/system/VMDebug;->stopAllocCounting()V

    .line 738
    return-void
.end method

.method public static stopMethodTracing()V
    .registers 0

    .prologue
    .line 692
    invoke-static {}, Ldalvik/system/VMDebug;->stopMethodTracing()V

    .line 693
    return-void
.end method

.method public static stopNativeTracing()V
    .registers 4

    .prologue
    .line 541
    invoke-static {}, Ldalvik/system/VMDebug;->stopEmulatorTracing()V

    .line 544
    const/4 v1, 0x0

    .line 546
    .local v1, "outStream":Ljava/io/PrintWriter;
    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v3, "/sys/qemu_trace/state"

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_1c
    .catchall {:try_start_4 .. :try_end_10} :catchall_23

    .line 548
    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .local v2, "outStream":Ljava/io/PrintWriter;
    :try_start_10
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_2d
    .catchall {:try_start_10 .. :try_end_15} :catchall_2a

    .line 553
    if-eqz v2, :cond_30

    .line 554
    invoke-virtual {v2}, Lcom/android/internal/util/FastPrintWriter;->close()V

    move-object v1, v2

    .line 556
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    :cond_1b
    :goto_1b
    return-void

    .line 549
    :catch_1c
    move-exception v3

    .line 553
    :goto_1d
    if-eqz v1, :cond_1b

    .line 554
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->close()V

    goto :goto_1b

    .line 553
    :catchall_23
    move-exception v3

    :goto_24
    if-eqz v1, :cond_29

    .line 554
    invoke-virtual {v1}, Lcom/android/internal/util/FastPrintWriter;->close()V

    :cond_29
    throw v3

    .line 553
    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catchall_2a
    move-exception v3

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    goto :goto_24

    .line 549
    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :catch_2d
    move-exception v3

    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1d

    .end local v1    # "outStream":Ljava/io/PrintWriter;
    .restart local v2    # "outStream":Ljava/io/PrintWriter;
    :cond_30
    move-object v1, v2

    .end local v2    # "outStream":Ljava/io/PrintWriter;
    .restart local v1    # "outStream":Ljava/io/PrintWriter;
    goto :goto_1b
.end method

.method public static threadCpuTimeNanos()J
    .registers 2

    .prologue
    .line 707
    invoke-static {}, Ldalvik/system/VMDebug;->threadCpuTimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public static waitForDebugger()V
    .registers 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 397
    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 444
    .local v0, "data":[B
    .local v1, "delta":J
    .local v3, "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :cond_8
    :goto_8
    return-void

    .line 401
    .end local v0    # "data":[B
    .end local v1    # "delta":J
    .end local v3    # "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    :cond_9
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-nez v4, :cond_8

    .line 405
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Sending WAIT chunk"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 406
    new-array v0, v7, [B

    aput-byte v6, v0, v6

    .line 407
    .restart local v0    # "data":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    const-string v4, "WAIT"

    invoke-static {v4}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->type(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4, v0, v6, v7}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    .line 408
    .restart local v3    # "waitChunk":Lorg/apache/harmony/dalvik/ddmc/Chunk;
    invoke-static {v3}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->sendChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)V

    .line 410
    sput-boolean v7, Landroid/os/Debug;->mWaiting:Z

    .line 411
    :goto_2a
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v4

    if-nez v4, :cond_38

    .line 412
    const-wide/16 v4, 0xc8

    :try_start_32
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_2a

    .line 413
    :catch_36
    move-exception v4

    goto :goto_2a

    .line 415
    :cond_38
    sput-boolean v6, Landroid/os/Debug;->mWaiting:Z

    .line 417
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Debugger has connected"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :goto_41
    invoke-static {}, Ldalvik/system/VMDebug;->lastDebuggerActivity()J

    move-result-wide v1

    .line 430
    .restart local v1    # "delta":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_53

    .line 431
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "debugger detached?"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 435
    :cond_53
    const-wide/16 v4, 0x514

    cmp-long v4, v1, v4

    if-gez v4, :cond_69

    .line 436
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v5, "waiting for debugger to settle..."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    const-wide/16 v4, 0xc8

    :try_start_63
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_41

    .line 438
    :catch_67
    move-exception v4

    goto :goto_41

    .line 440
    :cond_69
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "debugger has settled ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static waitingForDebugger()Z
    .registers 1

    .prologue
    .line 451
    sget-boolean v0, Landroid/os/Debug;->mWaiting:Z

    return v0
.end method
