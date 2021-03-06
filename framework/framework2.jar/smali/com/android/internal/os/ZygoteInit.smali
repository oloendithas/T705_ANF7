.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    }
.end annotation


# static fields
.field private static final ANDROID_SOCKET_ENV:Ljava/lang/String; = "ANDROID_SOCKET_zygote"

.field private static final ENABLE_HOUDINI:Z

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final INITIAL_NUMBER_THREAD1:I = 0x2c6

.field private static final INITIAL_NUMBER_THREAD2:I = 0x2c6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PARALLEL_LOAD:Z = true

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_NC_THREAD1:Ljava/lang/String; = "persist.sys.clssprld1"

.field private static final PROPERTY_NC_THREAD2:Ljava/lang/String; = "persist.sys.clssprld2"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field public static final USAGE_STRING:Ljava/lang/String; = " <\"start-system-server\"|\"\" for startSystemServer>"

.field private static final USE_DYNAMIC_BALANCE:Z = true

.field private static final heapgrowthlimit:Ljava/lang/String; = "64m"

.field static isError:Z

.field static isParallelThreadRunning:Z

.field static isPreloadComplete:Z

.field private static mResources:Landroid/content/res/Resources;

.field private static numberOfPreloadClasses:I

.field private static numberOfPreloadClassesforThread1:I

.field private static numberOfPreloadClassesforThread2:I

.field public static parallelPCThread1running:Z

.field public static parallelPCThread2running:Z

.field public static postLoadClasses:[Ljava/lang/String;

.field private static sServerSocket:Landroid/net/LocalServerSocket;

.field private static thread1time:I

.field private static thread2time:I

.field private static threadMtime:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x2c6

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v3, "x86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string/jumbo v3, "unknown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    move v0, v1

    :goto_1b
    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->ENABLE_HOUDINI:Z

    .line 93
    const-string v0, "64m"

    const-string v3, "64m"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    .line 264
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    .line 265
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    .line 266
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->isError:Z

    .line 487
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    .line 488
    sput-boolean v2, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z

    .line 491
    sput v2, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    .line 492
    sput v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    .line 493
    sput v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    .line 497
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "android.database.CursorWindow"

    aput-object v3, v0, v2

    const-string v3, "android.database.CursorWindow$1"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    .line 500
    sput v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    .line 501
    sput v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    .line 502
    sput v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    return-void

    :cond_5b
    move v0, v2

    .line 70
    goto :goto_1b
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1269
    return-void
.end method

.method private static acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;
    .registers 3

    .prologue
    .line 208
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 209
    :catch_c
    move-exception v0

    .line 210
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()V
    .registers 0

    .prologue
    .line 68
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    return-void
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 68
    sput p0, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    return p0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 68
    sget v0, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    return v0
.end method

.method static synthetic access$502(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 68
    sput p0, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    return p0
.end method

.method private static adjustClassPreloadBalance()V
    .registers 5

    .prologue
    .line 365
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    if-lez v2, :cond_92

    sget v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    if-lez v2, :cond_92

    sget v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    if-lez v2, :cond_92

    .line 369
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    sget v3, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 370
    .local v1, "min":I
    sget v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 371
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    sget v3, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 372
    .local v0, "max":I
    sget v2, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 373
    sub-int v2, v0, v1

    const/16 v3, 0x64

    if-le v2, v3, :cond_92

    .line 375
    const-string v2, "Zygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " adjust "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    if-ne v0, v2, :cond_93

    .line 377
    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_71
    :goto_71
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread1time:I

    if-ne v1, v2, :cond_b5

    .line 382
    const-string/jumbo v2, "persist.sys.clssprld1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_92
    :goto_92
    return-void

    .line 378
    :cond_93
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    if-ne v0, v2, :cond_71

    .line 379
    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_71

    .line 383
    :cond_b5
    sget v2, Lcom/android/internal/os/ZygoteInit;->thread2time:I

    if-ne v1, v2, :cond_92

    .line 384
    const-string/jumbo v2, "persist.sys.clssprld2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_92
.end method

.method static native capgetPermitted(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static closeServerSocket()V
    .registers 4

    .prologue
    .line 221
    :try_start_0
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v2, :cond_16

    .line 222
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 223
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    .line 224
    if-eqz v1, :cond_16

    .line 225
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_1a
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_16} :catch_23

    .line 234
    :cond_16
    :goto_16
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 235
    return-void

    .line 228
    :catch_1a
    move-exception v0

    .line 229
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing sockets"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 230
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_23
    move-exception v0

    .line 231
    .local v0, "ex":Llibcore/io/ErrnoException;
    const-string v2, "Zygote"

    const-string v3, "Zygote:  error closing descriptor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static gc()V
    .registers 1

    .prologue
    .line 934
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 939
    .local v0, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 940
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 941
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 942
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 943
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 944
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 945
    return-void
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .registers 6
    .param p0, "parsedArgs"    # Lcom/android/internal/os/ZygoteConnection$Arguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 954
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 957
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->S_IRWXG:I

    sget v2, Llibcore/io/OsConstants;->S_IRWXO:I

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Llibcore/io/Os;->umask(I)I

    .line 959
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 960
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 963
    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 964
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 975
    :goto_26
    return-void

    .line 971
    :cond_27
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_26
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "argv"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_3c

    move-result-object v0

    .line 152
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_4
    const-string/jumbo v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_12} :catch_56
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_12} :catch_70

    move-result-object v2

    .line 161
    .local v2, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 162
    .local v3, "modifiers":I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 163
    :cond_23
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "modifiers":I
    :catch_3c
    move-exception v1

    .line 145
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 153
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_56
    move-exception v1

    .line 154
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 156
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_70
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 173
    .end local v1    # "ex":Ljava/lang/SecurityException;
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    .restart local v3    # "modifiers":I
    :cond_8a
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 7
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 1059
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    .line 1060
    .local v2, "mSavedPriority":I
    const/4 v3, -0x4

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 1066
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket()V

    .line 1067
    const/16 v3, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1069
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 1070
    const/16 v3, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1074
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 1077
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 1081
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Trace;->setTracingEnabled(Z)V

    .line 1084
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1088
    array-length v3, p0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_59

    .line 1089
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_54
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_54} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_54} :catch_7d

    .line 1106
    .end local v2    # "mSavedPriority":I
    :catch_54
    move-exception v0

    .line 1107
    .local v0, "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 1113
    .end local v0    # "caller":Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_58
    return-void

    .line 1092
    .restart local v2    # "mSavedPriority":I
    :cond_59
    const/4 v3, 0x1

    :try_start_5a
    aget-object v3, p0, v3

    const-string/jumbo v4, "start-system-server"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1093
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->startSystemServer()Z

    .line 1098
    :cond_68
    const-string v3, "Zygote"

    const-string v4, "Accepting command socket connections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    sget-boolean v3, Lcom/android/internal/os/ZygoteInit;->ENABLE_HOUDINI:Z

    if-eqz v3, :cond_76

    .line 1101
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadHoudini()V

    .line 1103
    :cond_76
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->runSelectLoop()V

    .line 1105
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_7c
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_5a .. :try_end_7c} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_7c} :catch_7d

    goto :goto_58

    .line 1108
    .end local v2    # "mSavedPriority":I
    :catch_7d
    move-exception v1

    .line 1109
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "Zygote"

    const-string v4, "Zygote died with exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1110
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 1111
    throw v1

    .line 1094
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "mSavedPriority":I
    :cond_89
    const/4 v3, 0x1

    :try_start_8a
    aget-object v3, p0, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_68

    .line 1095
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_8a .. :try_end_b0} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_b0} :catch_7d
.end method

.method static parallelpreloadClasses()V
    .registers 25

    .prologue
    .line 506
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v11

    .line 507
    .local v11, "runtime":Ldalvik/system/VMRuntime;
    const/16 v21, 0xbb8

    move/from16 v0, v21

    new-array v3, v0, [Ljava/lang/String;

    .line 509
    .local v3, "classList":[Ljava/lang/String;
    const-class v21, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    const-string/jumbo v22, "preloaded-classes"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 511
    .local v8, "is":Ljava/io/InputStream;
    if-nez v8, :cond_21

    .line 512
    const-string v21, "Zygote"

    const-string v22, "Couldn\'t find preloaded-classes."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :goto_20
    return-void

    .line 514
    :cond_21
    const-string v21, "Zygote"

    const-string v22, "Preloading classes..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v5

    .line 523
    .local v5, "defaultUtilization":F
    const v21, 0x3f4ccccd

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 526
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 527
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 528
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 531
    :try_start_3d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 534
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 536
    .local v4, "count":I
    :cond_50
    :goto_50
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_73

    .line 538
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 539
    const-string v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_50

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_50

    .line 542
    aput-object v10, v3, v4

    .line 545
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 548
    :cond_73
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Number of total Classes to prelaod: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    sput v4, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_8f} :catch_24f
    .catchall {:try_start_3d .. :try_end_8f} :catchall_2db

    .line 554
    :try_start_8f
    const-string/jumbo v21, "persist.sys.clssprld1"

    const-string v22, "710"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    sput v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    .line 555
    const-string/jumbo v21, "persist.sys.clssprld2"

    const-string v22, "710"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    sput v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I
    :try_end_ad
    .catch Ljava/lang/NumberFormatException; {:try_start_8f .. :try_end_ad} :catch_388
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_ad} :catch_24f
    .catchall {:try_start_8f .. :try_end_ad} :catchall_2db

    .line 558
    :goto_ad
    :try_start_ad
    sget v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_cf

    sget v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_cf

    sget v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v22, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v21, v21, v22

    sget v22, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_118

    .line 560
    :cond_cf
    const-string v21, "Zygote"

    const-string v22, "!@set default"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    sget v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    div-int/lit8 v21, v21, 0x3

    sput v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    .line 562
    sget v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    div-int/lit8 v21, v21, 0x3

    sput v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    .line 563
    const-string/jumbo v21, "persist.sys.clssprld1"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string/jumbo v21, "persist.sys.clssprld2"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_118
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Classes to load for thread1 0~"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Classes to load for thread2 "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "~"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v24, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v23, v23, v24

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Classes to load for thread3 "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v24, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "~"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    add-int/lit8 v23, v23, -0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v15, Ljava/lang/Thread;

    new-instance v21, Lcom/android/internal/os/ZygoteInit$3;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v11}, Lcom/android/internal/os/ZygoteInit$3;-><init>([Ljava/lang/String;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    .local v15, "t1":Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 651
    new-instance v16, Ljava/lang/Thread;

    new-instance v21, Lcom/android/internal/os/ZygoteInit$4;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v11}, Lcom/android/internal/os/ZygoteInit$4;-><init>([Ljava/lang/String;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 725
    .local v16, "t2":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 729
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 730
    .local v12, "startTime":J
    const-wide/16 v17, 0x0

    .line 731
    .local v17, "time1":J
    const-wide/16 v19, 0x0

    .line 732
    .local v19, "time2":J
    sget v21, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sget v22, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    add-int v7, v21, v22

    .local v7, "i":I
    :goto_1c0
    array-length v0, v3

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_1cb

    .line 733
    aget-object v10, v3, v7

    .line 734
    if-nez v10, :cond_269

    .line 784
    :cond_1cb
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!@prldclssM: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClasses:I

    sget v24, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I

    sub-int v23, v23, v24

    sget v24, Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I

    sub-int v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    sub-long v23, v23, v12

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    sput v21, Lcom/android/internal/os/ZygoteInit;->threadMtime:I

    .line 789
    :goto_20f
    sget-boolean v21, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_223

    sget-boolean v21, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z
    :try_end_21b
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_21b} :catch_24f
    .catchall {:try_start_ad .. :try_end_21b} :catchall_2db

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_32e

    .line 791
    :cond_223
    const-wide/16 v21, 0x14

    :try_start_225
    invoke-static/range {v21 .. v22}, Ljava/lang/Thread;->sleep(J)V
    :try_end_228
    .catch Ljava/lang/InterruptedException; {:try_start_225 .. :try_end_228} :catch_328
    .catch Ljava/io/IOException; {:try_start_225 .. :try_end_228} :catch_24f
    .catchall {:try_start_225 .. :try_end_228} :catchall_2db

    .line 795
    :goto_228
    :try_start_228
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Wait PC Thread 1="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " 2="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24e
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_24e} :catch_24f
    .catchall {:try_start_228 .. :try_end_24e} :catchall_2db

    goto :goto_20f

    .line 808
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "count":I
    .end local v7    # "i":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "startTime":J
    .end local v15    # "t1":Ljava/lang/Thread;
    .end local v16    # "t2":Ljava/lang/Thread;
    .end local v17    # "time1":J
    .end local v19    # "time2":J
    :catch_24f
    move-exception v6

    .line 809
    .local v6, "e":Ljava/io/IOException;
    :try_start_250
    const-string v21, "Zygote"

    const-string v22, "Error reading preloaded-classes."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25b
    .catchall {:try_start_250 .. :try_end_25b} :catchall_2db

    .line 813
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 815
    invoke-virtual {v11, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 818
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 820
    .end local v6    # "e":Ljava/io/IOException;
    :goto_264
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_20

    .line 741
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "count":I
    .restart local v7    # "i":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "startTime":J
    .restart local v15    # "t1":Ljava/lang/Thread;
    .restart local v16    # "t2":Ljava/lang/Thread;
    .restart local v17    # "time1":J
    .restart local v19    # "time2":J
    :cond_269
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_26a
    :try_start_26a
    sget-object v21, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_29d

    .line 744
    sget-object v21, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v21, v21, v9

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2a3

    .line 746
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "postpone "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/4 v10, 0x0

    .line 751
    :cond_29d
    if-nez v10, :cond_2a6

    .line 732
    :cond_29f
    :goto_29f
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1c0

    .line 741
    :cond_2a3
    add-int/lit8 v9, v9, 0x1

    goto :goto_26a

    .line 755
    :cond_2a6
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 762
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v21

    sget v22, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_29f

    .line 767
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 768
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 769
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_2be
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26a .. :try_end_2be} :catch_2bf
    .catch Ljava/lang/Throwable; {:try_start_26a .. :try_end_2be} :catch_2e9
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_2be} :catch_24f
    .catchall {:try_start_26a .. :try_end_2be} :catchall_2db

    goto :goto_29f

    .line 771
    :catch_2bf
    move-exception v6

    .line 772
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2c0
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2da
    .catch Ljava/io/IOException; {:try_start_2c0 .. :try_end_2da} :catch_24f
    .catchall {:try_start_2c0 .. :try_end_2da} :catchall_2db

    goto :goto_29f

    .line 813
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "count":I
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "startTime":J
    .end local v15    # "t1":Ljava/lang/Thread;
    .end local v16    # "t2":Ljava/lang/Thread;
    .end local v17    # "time1":J
    .end local v19    # "time2":J
    :catchall_2db
    move-exception v21

    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 815
    invoke-virtual {v11, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 818
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 820
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 813
    throw v21

    .line 773
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "count":I
    .restart local v7    # "i":I
    .restart local v9    # "j":I
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "startTime":J
    .restart local v15    # "t1":Ljava/lang/Thread;
    .restart local v16    # "t2":Ljava/lang/Thread;
    .restart local v17    # "time1":J
    .restart local v19    # "time2":J
    :catch_2e9
    move-exception v14

    .line 774
    .local v14, "t":Ljava/lang/Throwable;
    :try_start_2ea
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!@Error preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    instance-of v0, v14, Ljava/lang/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_317

    .line 776
    check-cast v14, Ljava/lang/Error;

    .end local v14    # "t":Ljava/lang/Throwable;
    throw v14

    .line 778
    .restart local v14    # "t":Ljava/lang/Throwable;
    :cond_317
    instance-of v0, v14, Ljava/lang/RuntimeException;

    move/from16 v21, v0

    if-eqz v21, :cond_320

    .line 779
    check-cast v14, Ljava/lang/RuntimeException;

    .end local v14    # "t":Ljava/lang/Throwable;
    throw v14

    .line 781
    .restart local v14    # "t":Ljava/lang/Throwable;
    :cond_320
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v0, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    .line 792
    .end local v9    # "j":I
    .end local v14    # "t":Ljava/lang/Throwable;
    :catch_328
    move-exception v6

    .line 793
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_228

    .line 798
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_32e
    const/4 v9, 0x0

    .restart local v9    # "j":I
    :goto_32f
    sget-object v21, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0
    :try_end_336
    .catch Ljava/io/IOException; {:try_start_2ea .. :try_end_336} :catch_24f
    .catchall {:try_start_2ea .. :try_end_336} :catchall_2db

    move/from16 v0, v21

    if-ge v9, v0, :cond_37d

    .line 801
    :try_start_33a
    sget-object v21, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v21, v21, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 802
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "post pld="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v23, v23, v9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33a .. :try_end_35e} :catch_361
    .catch Ljava/io/IOException; {:try_start_33a .. :try_end_35e} :catch_24f
    .catchall {:try_start_33a .. :try_end_35e} :catchall_2db

    .line 798
    :goto_35e
    add-int/lit8 v9, v9, 0x1

    goto :goto_32f

    .line 804
    :catch_361
    move-exception v6

    .local v6, "e":Ljava/lang/ClassNotFoundException;
    :try_start_362
    const-string v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37c
    .catch Ljava/io/IOException; {:try_start_362 .. :try_end_37c} :catch_24f
    .catchall {:try_start_362 .. :try_end_37c} :catchall_2db

    goto :goto_35e

    .line 813
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :cond_37d
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 815
    invoke-virtual {v11, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 818
    invoke-virtual {v11}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    goto/16 :goto_264

    .line 557
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v12    # "startTime":J
    .end local v15    # "t1":Ljava/lang/Thread;
    .end local v16    # "t2":Ljava/lang/Thread;
    .end local v17    # "time1":J
    .end local v19    # "time2":J
    :catch_388
    move-exception v21

    goto/16 :goto_ad
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .registers 9
    .param p0, "capabilities"    # [I

    .prologue
    .line 1043
    const-wide/16 v4, 0x0

    .line 1044
    .local v4, "result":J
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_5
    if-ge v2, v3, :cond_20

    aget v1, v0, v2

    .line 1045
    .local v1, "capability":I
    if-ltz v1, :cond_f

    sget v6, Llibcore/io/OsConstants;->CAP_LAST_CAP:I

    if-le v1, v6, :cond_19

    .line 1046
    :cond_f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1048
    :cond_19
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    or-long/2addr v4, v6

    .line 1044
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1050
    .end local v1    # "capability":I
    :cond_20
    return-wide v4
.end method

.method static preload()V
    .registers 9

    .prologue
    const/16 v8, 0x270f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 271
    const-string v7, "libc.debug.malloc"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 272
    .local v0, "debugLevel":I
    if-gtz v0, :cond_68

    move v2, v5

    .line 275
    .local v2, "parallelEnable":Z
    :goto_d
    if-eqz v2, :cond_76

    .line 277
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 278
    invoke-static {v8}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 279
    sput-boolean v5, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    .line 281
    new-instance v3, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v7}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    invoke-direct {v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 294
    .local v3, "pprr":Ljava/lang/Thread;
    const/16 v7, 0xa

    invoke-virtual {v3, v7}, Ljava/lang/Thread;->setPriority(I)V

    .line 295
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 297
    new-instance v4, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/os/ZygoteInit$2;

    invoke-direct {v7}, Lcom/android/internal/os/ZygoteInit$2;-><init>()V

    invoke-direct {v4, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    .local v4, "preloadMonitor":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 324
    const-string v7, "Zygote"

    const-string v8, "!@Boot: beginofpreloadClasses()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V

    .line 327
    const-string v7, "Zygote"

    const-string v8, "!@Boot: EndofpreloadClasses()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    .line 330
    :goto_4a
    sget-boolean v7, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    if-eqz v7, :cond_6a

    sget-boolean v7, Lcom/android/internal/os/ZygoteInit;->isError:Z

    if-nez v7, :cond_6a

    .line 332
    const-string v7, "Zygote"

    const-string v8, "Waiting Preload Resource"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-wide/16 v7, 0x14

    :try_start_5b
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_4a

    .line 334
    :catch_5f
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v7, "Zygote"

    const-string v8, "Exception in Zygote PC/PR Parallel thread."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4a

    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "parallelEnable":Z
    .end local v3    # "pprr":Ljava/lang/Thread;
    .end local v4    # "preloadMonitor":Ljava/lang/Thread;
    :cond_68
    move v2, v6

    .line 272
    goto :goto_d

    .line 336
    .restart local v2    # "parallelEnable":Z
    .restart local v3    # "pprr":Ljava/lang/Thread;
    .restart local v4    # "preloadMonitor":Ljava/lang/Thread;
    :cond_6a
    sput-boolean v5, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    .line 338
    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 339
    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 342
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->adjustClassPreloadBalance()V

    .line 354
    .end local v3    # "pprr":Ljava/lang/Thread;
    .end local v4    # "preloadMonitor":Ljava/lang/Thread;
    :goto_75
    return-void

    .line 346
    :cond_76
    const-string v5, "Zygote"

    const-string v6, "!@Boot: beginofpreloadClasses()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 349
    const-string v5, "Zygote"

    const-string v6, "!@Boot: endofpreloadClasses()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 351
    const-string v5, "Zygote"

    const-string v6, "!@Boot: endofpreloadResources()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    goto :goto_75
.end method

.method private static preloadClasses()V
    .registers 15

    .prologue
    const/16 v12, 0x270f

    const/4 v14, 0x0

    .line 397
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 399
    .local v6, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string/jumbo v11, "preloaded-classes"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 401
    .local v4, "is":Ljava/io/InputStream;
    if-nez v4, :cond_1c

    .line 402
    const-string v10, "Zygote"

    const-string v11, "Couldn\'t find preloaded-classes."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :goto_1b
    return-void

    .line 404
    :cond_1c
    const-string v10, "Zygote"

    const-string v11, "Preloading classes..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 408
    .local v7, "startTime":J
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 409
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 413
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 414
    .local v2, "defaultUtilization":F
    const v10, 0x3f4ccccd

    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 417
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 418
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 419
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 422
    :try_start_40
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x100

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 425
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 427
    .local v1, "count":I
    :cond_4d
    :goto_4d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_120

    .line 429
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 430
    const-string v10, "#"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4d

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_64} :catch_98
    .catchall {:try_start_40 .. :try_end_64} :catchall_d9

    move-result v10

    if-nez v10, :cond_4d

    .line 438
    :try_start_67
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 439
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v10

    sget v11, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v10, v11, :cond_7b

    .line 444
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 445
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 446
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_7b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_67 .. :try_end_7b} :catch_7e
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_67 .. :try_end_7b} :catch_b4
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_7b} :catch_ed
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_7b} :catch_98
    .catchall {:try_start_67 .. :try_end_7b} :catchall_d9

    .line 448
    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4d

    .line 449
    :catch_7e
    move-exception v3

    .line 450
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_7f
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_97} :catch_98
    .catchall {:try_start_7f .. :try_end_97} :catchall_d9

    goto :goto_4d

    .line 467
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "line":Ljava/lang/String;
    :catch_98
    move-exception v3

    .line 468
    .local v3, "e":Ljava/io/IOException;
    :try_start_99
    const-string v10, "Zygote"

    const-string v11, "Error reading preloaded-classes."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_d9

    .line 470
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 472
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 475
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 477
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 480
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 481
    .end local v3    # "e":Ljava/io/IOException;
    :goto_af
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_1b

    .line 451
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v5    # "line":Ljava/lang/String;
    :catch_b4
    move-exception v3

    .line 452
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    :try_start_b5
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_d7} :catch_98
    .catchall {:try_start_b5 .. :try_end_d7} :catchall_d9

    goto/16 :goto_4d

    .line 470
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "count":I
    .end local v3    # "e":Ljava/lang/UnsatisfiedLinkError;
    .end local v5    # "line":Ljava/lang/String;
    :catchall_d9
    move-exception v10

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 472
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 475
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 477
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 480
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 481
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 470
    throw v10

    .line 453
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "count":I
    .restart local v5    # "line":Ljava/lang/String;
    :catch_ed
    move-exception v9

    .line 454
    .local v9, "t":Ljava/lang/Throwable;
    :try_start_ee
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    instance-of v10, v9, Ljava/lang/Error;

    if-eqz v10, :cond_113

    .line 456
    check-cast v9, Ljava/lang/Error;

    .end local v9    # "t":Ljava/lang/Throwable;
    throw v9

    .line 458
    .restart local v9    # "t":Ljava/lang/Throwable;
    :cond_113
    instance-of v10, v9, Ljava/lang/RuntimeException;

    if-eqz v10, :cond_11a

    .line 459
    check-cast v9, Ljava/lang/RuntimeException;

    .end local v9    # "t":Ljava/lang/Throwable;
    throw v9

    .line 461
    .restart local v9    # "t":Ljava/lang/Throwable;
    :cond_11a
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 465
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_120
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "...preloaded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " classes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_14e} :catch_98
    .catchall {:try_start_ee .. :try_end_14e} :catchall_d9

    .line 470
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 472
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 475
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    .line 477
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 480
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    goto/16 :goto_af
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 874
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 875
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_5b

    .line 876
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    sget v4, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v3, v4, :cond_18

    .line 880
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 881
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 882
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 884
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 888
    .local v2, "id":I
    if-eqz v2, :cond_58

    .line 889
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_58

    .line 890
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 875
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 897
    .end local v2    # "id":I
    :cond_5b
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .registers 8
    .param p0, "runtime"    # Ldalvik/system/VMRuntime;
    .param p1, "ar"    # Landroid/content/res/TypedArray;

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 903
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_5b

    .line 904
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    sget v4, Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I

    if-le v3, v4, :cond_18

    .line 908
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 909
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 910
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 912
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 916
    .local v2, "id":I
    if-eqz v2, :cond_58

    .line 917
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_58

    .line 918
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 903
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 925
    .end local v2    # "id":I
    :cond_5b
    return v0
.end method

.method static native preloadHoudini()V
.end method

.method private static preloadOpenGL()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 357
    const-string/jumbo v0, "ro.zygote.disable_gl_preload"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 358
    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 360
    :cond_d
    return-void
.end method

.method private static preloadResources()V
    .registers 10

    .prologue
    .line 838
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 840
    .local v3, "runtime":Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 842
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 843
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 844
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 845
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 847
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 850
    .local v4, "startTime":J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 852
    .local v1, "ar":Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 853
    .local v0, "N":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 854
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 858
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 860
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 861
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 862
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_a8
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a8} :catch_ac
    .catchall {:try_start_7 .. :try_end_a8} :catchall_b5

    .line 869
    .end local v0    # "N":I
    .end local v1    # "ar":Landroid/content/res/TypedArray;
    .end local v4    # "startTime":J
    :goto_a8
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 871
    return-void

    .line 866
    :catch_ac
    move-exception v2

    .line 867
    .local v2, "e":Ljava/lang/RuntimeException;
    :try_start_ad
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_b5

    goto :goto_a8

    .line 869
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catchall_b5
    move-exception v6

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v6
.end method

.method private static registerZygoteSocket()V
    .registers 6

    .prologue
    .line 182
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v3, :cond_19

    .line 185
    :try_start_4
    const-string v3, "ANDROID_SOCKET_zygote"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "env":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_d} :catch_1a

    move-result v2

    .line 193
    .local v2, "fileDesc":I
    :try_start_e
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_23

    .line 200
    :cond_19
    return-void

    .line 187
    .end local v2    # "fileDesc":I
    :catch_1a
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ANDROID_SOCKET_zygote unset or invalid"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 195
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "fileDesc":I
    :catch_23
    move-exception v1

    .line 196
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runSelectLoop()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v4, "fds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1126
    .local v8, "peers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 1128
    .local v3, "fdArray":[Ljava/io/FileDescriptor;
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1129
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    const/16 v6, 0xa

    .line 1144
    .local v6, "loopCount":I
    :cond_1c
    :goto_1c
    if-gtz v6, :cond_39

    .line 1145
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 1146
    const/16 v6, 0xa

    .line 1153
    :goto_23
    :try_start_23
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 1154
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2e} :catch_3c

    move-result v5

    .line 1159
    .local v5, "index":I
    if-gez v5, :cond_45

    .line 1160
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1148
    .end local v5    # "index":I
    :cond_39
    add-int/lit8 v6, v6, -0x1

    goto :goto_23

    .line 1155
    :catch_3c
    move-exception v2

    .line 1156
    .local v2, "ex":Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1161
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v5    # "index":I
    :cond_45
    if-nez v5, :cond_56

    .line 1162
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 1163
    .local v7, "newPeer":Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1167
    .end local v7    # "newPeer":Lcom/android/internal/os/ZygoteConnection;
    :cond_56
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v9}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 1169
    .local v1, "done":Z
    if-eqz v1, :cond_1c

    .line 1170
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1171
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1c
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .registers 5
    .param p0, "gid"    # I

    .prologue
    .line 257
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setregid(II)I

    move-result v0

    .line 258
    .local v0, "errno":I
    if-eqz v0, :cond_20

    .line 259
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_20
    return-void
.end method

.method private static setEffectiveUser(I)V
    .registers 5
    .param p0, "uid"    # I

    .prologue
    .line 247
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setreuid(II)I

    move-result v0

    .line 248
    .local v0, "errno":I
    if-eqz v0, :cond_20

    .line 249
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_20
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 982
    const/16 v0, 0xb

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Llibcore/io/OsConstants;->CAP_KILL:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Llibcore/io/OsConstants;->CAP_NET_ADMIN:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Llibcore/io/OsConstants;->CAP_NET_BIND_SERVICE:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Llibcore/io/OsConstants;->CAP_NET_BROADCAST:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Llibcore/io/OsConstants;->CAP_NET_RAW:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_MODULE:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_NICE:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_RESOURCE:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_TIME:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Llibcore/io/OsConstants;->CAP_SYS_TTY_CONFIG:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Llibcore/io/OsConstants;->CAP_BLOCK_SUSPEND:I

    aput v2, v0, v1

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    .line 996
    .local v10, "capabilities":J
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "--setuid=1000"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "--setgid=1000"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1032,3001,3002,3003,3004,3005,3006,3007,3008"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "--runtime-init"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "--nice-name=system_server"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "com.android.server.SystemServer"

    aput-object v1, v9, v0

    .line 1010
    .local v9, "args":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1015
    .local v13, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_84
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v9}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_89} :catch_a9

    .line 1016
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v14, "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_89
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1017
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1020
    iget v0, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v4, 0x0

    check-cast v4, [[I

    iget-wide v5, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v7, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v0 .. v8}, Ldalvik/system/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_a1} :catch_b0

    move-result v15

    .line 1032
    .local v15, "pid":I
    if-nez v15, :cond_a7

    .line 1033
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 1036
    :cond_a7
    const/4 v0, 0x1

    return v0

    .line 1027
    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v15    # "pid":I
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_a9
    move-exception v12

    .line 1028
    .local v12, "ex":Ljava/lang/IllegalArgumentException;
    :goto_aa
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1027
    .end local v12    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_b0
    move-exception v12

    move-object v13, v14

    .end local v14    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v13    # "parsedArgs":Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_aa
.end method
