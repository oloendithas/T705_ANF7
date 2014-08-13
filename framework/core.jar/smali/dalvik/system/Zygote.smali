.class public Ldalvik/system/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final MOUNT_EXTERNAL_MULTIUSER:I = 0x2

.field public static final MOUNT_EXTERNAL_MULTIUSER_ALL:I = 0x3

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_SINGLEUSER:I = 0x1

.field public static systemInSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Ldalvik/system/Zygote;->systemInSafeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 7
    .param p0, "command"    # Ljava/lang/StringBuilder;
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 202
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 203
    .local v0, "arg":Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\\\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .locals 4
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 184
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "/system/bin/sh"

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object p0, v0, v2

    .line 186
    .local v0, "args":[Ljava/lang/String;
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-interface {v2, v3, v0}, Llibcore/io/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Llibcore/io/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fork()I
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 99
    invoke-static {}, Ldalvik/system/Zygote;->nativeFork()I

    move-result v0

    .line 100
    .local v0, "pid":I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 101
    return v0
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "mountExternal"    # I
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "niceName"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 132
    invoke-static/range {p0 .. p7}, Ldalvik/system/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "pid":I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 135
    return v0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .locals 1
    .param p0, "uid"    # I
    .param p1, "gid"    # I
    .param p2, "gids"    # [I
    .param p3, "debugFlags"    # I
    .param p4, "rlimits"    # [[I
    .param p5, "permittedCapabilities"    # J
    .param p7, "effectiveCapabilities"    # J

    .prologue
    .line 166
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 167
    invoke-static/range {p0 .. p8}, Ldalvik/system/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 169
    .local v0, "pid":I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 170
    return v0
.end method

.method public static native nativeFork()I
.end method

.method public static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static postFork()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 87
    return-void
.end method

.method private static preFork()V
    .locals 0

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    .line 66
    invoke-static {}, Ldalvik/system/Zygote;->waitUntilAllThreadsStopped()V

    .line 67
    return-void
.end method

.method private static waitUntilAllThreadsStopped()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "tasks":Ljava/io/File;
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 79
    const-wide/16 v1, 0xa

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
