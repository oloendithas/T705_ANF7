.class public Landroid/sec/performance/AffinityControl;
.super Ljava/lang/Object;
.source "AffinityControl.java"


# static fields
.field public static final DEBUG:Z

.field private static final HMP_PROPERTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "AffinityControl"

.field private static nBig:[I

.field private static nLittle:[I

.field private static strHmpCore:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 13
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, Landroid/sec/performance/AffinityControl;->DEBUG:Z

    .line 17
    sput-object v2, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    .line 18
    sput-object v2, Landroid/sec/performance/AffinityControl;->nLittle:[I

    .line 19
    sput-object v2, Landroid/sec/performance/AffinityControl;->nBig:[I

    return-void

    .line 13
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v2, "AffinityControl"

    const-string v3, "[Java Side], AffinityControl Class Initialized"

    invoke-static {v2, v3}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v2, ""

    if-eqz v2, :cond_58

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_58

    .line 26
    const-string v2, ""

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    .line 27
    sget-object v2, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-array v2, v2, [I

    sput-object v2, Landroid/sec/performance/AffinityControl;->nLittle:[I

    .line 28
    sget-object v2, Landroid/sec/performance/AffinityControl;->strHmpCore:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-array v2, v2, [I

    sput-object v2, Landroid/sec/performance/AffinityControl;->nBig:[I

    .line 30
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3b
    sget-object v2, Landroid/sec/performance/AffinityControl;->nLittle:[I

    array-length v2, v2

    if-ge v0, v2, :cond_47

    .line 31
    sget-object v2, Landroid/sec/performance/AffinityControl;->nLittle:[I

    aput v0, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 33
    :cond_47
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_48
    sget-object v2, Landroid/sec/performance/AffinityControl;->nBig:[I

    array-length v2, v2

    if-ge v1, v2, :cond_58

    .line 34
    sget-object v2, Landroid/sec/performance/AffinityControl;->nBig:[I

    sget-object v3, Landroid/sec/performance/AffinityControl;->nLittle:[I

    array-length v3, v3

    add-int/2addr v3, v1

    aput v3, v2, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 37
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_58
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-boolean v0, Landroid/sec/performance/AffinityControl;->DEBUG:Z

    if-eqz v0, :cond_7

    .line 143
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_7
    return-void
.end method

.method private native native_set_affinity(I[I)I
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 151
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_38
    .catchall {:try_start_2 .. :try_end_c} :catchall_75

    .line 152
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_31} :catch_b7
    .catchall {:try_start_c .. :try_end_31} :catchall_b4

    .line 158
    if-eqz v1, :cond_36

    .line 159
    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_98

    :cond_36
    :goto_36
    move-object v0, v1

    .line 165
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_37
    :goto_37
    return-object v3

    .line 154
    :catch_38
    move-exception v2

    .line 155
    .local v2, "e":Ljava/io/IOException;
    :goto_39
    :try_start_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_75

    .line 158
    if-eqz v0, :cond_37

    .line 159
    :try_start_55
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_37

    .line 161
    :catch_59
    move-exception v2

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_75
    move-exception v4

    .line 158
    :goto_76
    if-eqz v0, :cond_7b

    .line 159
    :try_start_78
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 157
    :cond_7b
    :goto_7b
    throw v4

    .line 161
    :catch_7c
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    .line 161
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_98
    move-exception v2

    .line 162
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_b4
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_76

    .line 154
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_b7
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_39
.end method


# virtual methods
.method public ClearAffinity(I)I
    .registers 9
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    .line 113
    const-string v5, "AffinityControl"

    const-string v6, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v5, v6}, Landroid/sec/performance/AffinityControl;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "num_of_core":Ljava/lang/String;
    if-eqz v3, :cond_32

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, "num_core":I
    add-int/lit8 v5, v2, 0x1

    new-array v1, v5, [I

    .line 119
    .local v1, "input_cpu_list":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-gt v0, v2, :cond_1b

    .line 120
    aput v0, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 123
    :cond_1b
    invoke-direct {p0, p1, v1}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v5

    if-ne v5, v4, :cond_29

    .line 124
    const-string v5, "AffinityControl"

    const-string v6, "clear_affinity_failed"

    invoke-static {v5, v6}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0    # "i":I
    .end local v1    # "input_cpu_list":[I
    .end local v2    # "num_core":I
    :goto_28
    return v4

    .line 127
    .restart local v0    # "i":I
    .restart local v1    # "input_cpu_list":[I
    .restart local v2    # "num_core":I
    :cond_29
    const-string v4, "AffinityControl"

    const-string v5, "clear_affinity_success"

    invoke-static {v4, v5}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v4, 0x0

    goto :goto_28

    .line 132
    .end local v0    # "i":I
    .end local v1    # "input_cpu_list":[I
    .end local v2    # "num_core":I
    :cond_32
    const-string v5, "AffinityControl"

    const-string v6, "clear_affinity_failed"

    invoke-static {v5, v6}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public varargs SetAffinity(I[I)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "cpu_list"    # [I

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 51
    const-string v1, "AffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_f
    return v0

    .line 54
    :cond_10
    const-string v0, "AffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public SetAffinityForBig(I)I
    .registers 5
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 92
    const-string v1, ""

    if-eqz v1, :cond_1d

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 93
    sget-object v1, Landroid/sec/performance/AffinityControl;->nBig:[I

    invoke-direct {p0, p1, v1}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_1e

    .line 94
    const-string v1, "AffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1d
    :goto_1d
    return v0

    .line 97
    :cond_1e
    const-string v0, "AffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public SetAffinityForLittle(I)I
    .registers 5
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 69
    const-string v1, ""

    if-eqz v1, :cond_1d

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 70
    sget-object v1, Landroid/sec/performance/AffinityControl;->nLittle:[I

    invoke-direct {p0, p1, v1}, Landroid/sec/performance/AffinityControl;->native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_1e

    .line 71
    const-string v1, "AffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1d
    :goto_1d
    return v0

    .line 74
    :cond_1e
    const-string v0, "AffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, Landroid/sec/performance/AffinityControl;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    goto :goto_1d
.end method
