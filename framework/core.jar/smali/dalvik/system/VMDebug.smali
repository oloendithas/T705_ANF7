.class public final Ldalvik/system/VMDebug;
.super Ljava/lang/Object;
.source "VMDebug.java"


# static fields
.field private static final KIND_ALLOCATED_BYTES:I = 0x2

.field private static final KIND_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_ALL_COUNTS:I = -0x1

.field private static final KIND_CLASS_INIT_COUNT:I = 0x20

.field private static final KIND_CLASS_INIT_TIME:I = 0x40

.field private static final KIND_EXT_ALLOCATED_BYTES:I = 0x2000

.field private static final KIND_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field private static final KIND_EXT_FREED_BYTES:I = 0x8000

.field private static final KIND_EXT_FREED_OBJECTS:I = 0x4000

.field private static final KIND_FREED_BYTES:I = 0x8

.field private static final KIND_FREED_OBJECTS:I = 0x4

.field private static final KIND_GC_INVOCATIONS:I = 0x10

.field public static final KIND_GLOBAL_ALLOCATED_BYTES:I = 0x2

.field public static final KIND_GLOBAL_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_GLOBAL_CLASS_INIT_COUNT:I = 0x20

.field public static final KIND_GLOBAL_CLASS_INIT_TIME:I = 0x40

.field public static final KIND_GLOBAL_EXT_ALLOCATED_BYTES:I = 0x2000

.field public static final KIND_GLOBAL_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field public static final KIND_GLOBAL_EXT_FREED_BYTES:I = 0x8000

.field public static final KIND_GLOBAL_EXT_FREED_OBJECTS:I = 0x4000

.field public static final KIND_GLOBAL_FREED_BYTES:I = 0x8

.field public static final KIND_GLOBAL_FREED_OBJECTS:I = 0x4

.field public static final KIND_GLOBAL_GC_INVOCATIONS:I = 0x10

.field public static final KIND_THREAD_ALLOCATED_BYTES:I = 0x20000

.field public static final KIND_THREAD_ALLOCATED_OBJECTS:I = 0x10000

.field public static final KIND_THREAD_CLASS_INIT_COUNT:I = 0x200000

.field public static final KIND_THREAD_CLASS_INIT_TIME:I = 0x400000

.field public static final KIND_THREAD_EXT_ALLOCATED_BYTES:I = 0x20000000

.field public static final KIND_THREAD_EXT_ALLOCATED_OBJECTS:I = 0x10000000

.field public static final KIND_THREAD_EXT_FREED_BYTES:I = -0x80000000

.field public static final KIND_THREAD_EXT_FREED_OBJECTS:I = 0x40000000

.field public static final KIND_THREAD_FREED_BYTES:I = 0x80000

.field public static final KIND_THREAD_FREED_OBJECTS:I = 0x40000

.field public static final KIND_THREAD_GC_INVOCATIONS:I = 0x100000

.field public static final TRACE_COUNT_ALLOCS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cacheRegisterMap(Ljava/lang/String;)Z
.end method

.method private static checkBufferSize(I)I
    .locals 3
    .param p0, "bufferSize"    # I

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 188
    const/high16 p0, 0x800000

    .line 190
    :cond_0
    const/16 v0, 0x400

    if-ge p0, v0, :cond_1

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer size < 1024: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    return p0
.end method

.method public static native countInstancesOfClass(Ljava/lang/Class;Z)J
.end method

.method public static native crash()V
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 2
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    if-nez p0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "filename == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    .line 297
    return-void
.end method

.method public static native dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native dumpHprofDataDdms()V
.end method

.method public static native dumpReferenceTables()V
.end method

.method public static native getAllocCount(I)I
.end method

.method public static native getHeapSpaceStats([J)V
.end method

.method public static native getInstructionCount([I)V
.end method

.method public static native getLoadedClassCount()I
.end method

.method public static native getMethodTracingMode()I
.end method

.method public static native getVmFeatureList()[Ljava/lang/String;
.end method

.method public static native infopoint(I)V
.end method

.method public static native isDebuggerConnected()Z
.end method

.method public static native isDebuggingEnabled()Z
.end method

.method public static native lastDebuggerActivity()J
.end method

.method public static native printLoadedClasses(I)V
.end method

.method public static native resetAllocCount(I)V
.end method

.method public static native resetInstructionCount()V
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 250
    const/4 v0, -0x1

    return v0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .param p0, "limit"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    const/4 v0, -0x1

    return v0
.end method

.method public static native startAllocCounting()V
.end method

.method private static startClassPrep()V
    .locals 0

    .prologue
    .line 354
    return-void
.end method

.method public static native startEmulatorTracing()V
.end method

.method private static startGC()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public static native startInstructionCounting()V
.end method

.method public static startMethodTracing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static startMethodTracing(Ljava/lang/String;II)V
    .locals 1
    .param p0, "traceFileName"    # Ljava/lang/String;
    .param p1, "bufferSize"    # I
    .param p2, "flags"    # I

    .prologue
    .line 161
    invoke-static {p1}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {p0, v0, p2}, Ldalvik/system/VMDebug;->startMethodTracingFilename(Ljava/lang/String;II)V

    .line 162
    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
    .locals 2
    .param p0, "traceFileName"    # Ljava/lang/String;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "bufferSize"    # I
    .param p3, "flags"    # I

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    invoke-static {p2}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {p0, p1, v0, p3}, Ldalvik/system/VMDebug;->startMethodTracingFd(Ljava/lang/String;Ljava/io/FileDescriptor;II)V

    .line 174
    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 1
    .param p0, "bufferSize"    # I
    .param p1, "flags"    # I
    .param p2, "samplingEnabled"    # Z
    .param p3, "intervalUs"    # I

    .prologue
    .line 182
    invoke-static {p0}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdmsImpl(IIZI)V

    .line 183
    return-void
.end method

.method private static native startMethodTracingDdmsImpl(IIZI)V
.end method

.method private static native startMethodTracingFd(Ljava/lang/String;Ljava/io/FileDescriptor;II)V
.end method

.method private static native startMethodTracingFilename(Ljava/lang/String;II)V
.end method

.method public static native stopAllocCounting()V
.end method

.method public static native stopEmulatorTracing()V
.end method

.method public static native stopInstructionCounting()V
.end method

.method public static native stopMethodTracing()V
.end method

.method public static native threadCpuTimeNanos()J
.end method
