.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:I

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .registers 7
    .param p1, "sampleRate"    # I
    .param p2, "fifoDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 44
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    .line 54
    invoke-static {}, Landroid/speech/srec/MicrophoneInputStream;->checkMicrophoneEnabled()Z

    .line 56
    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)I

    move-result v1

    iput v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 57
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v1, :cond_20

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord constructor failed - busy?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_20
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(I)I

    move-result v0

    .line 59
    .local v0, "status":I
    if-eqz v0, :cond_44

    .line 60
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 61
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_44
    return-void
.end method

.method private static native AudioRecordDelete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordNew(II)I
.end method

.method private static native AudioRecordRead(I[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordStart(I)I
.end method

.method private static native AudioRecordStop(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static checkMicrophoneEnabled()Z
    .registers 5

    .prologue
    .line 115
    const/4 v1, 0x1

    .line 117
    .local v1, "enabled":Z
    :try_start_1
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 119
    .local v2, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isMicrophoneEnabled(Z)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_34

    move-result v1

    .line 125
    .end local v2    # "rp":Landroid/sec/enterprise/RestrictionPolicy;
    :goto_e
    if-nez v1, :cond_33

    .line 127
    const-string v3, "MicrophoneInputStream"

    const-string v4, "MICROPHONE IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_33

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x4e1f

    if-gt v3, v4, :cond_33

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 132
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 136
    :cond_33
    return v1

    .line 121
    :catch_34
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_e
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_11

    .line 92
    :try_start_5
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(I)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    .line 95
    :try_start_a
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1f

    .line 97
    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 101
    :cond_11
    return-void

    .line 94
    :catchall_12
    move-exception v0

    .line 95
    :try_start_13
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(I)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1b

    .line 97
    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    .line 94
    throw v0

    .line 97
    :catchall_1b
    move-exception v0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0

    :catchall_1f
    move-exception v0

    iput v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 105
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-eqz v0, :cond_10

    .line 106
    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_10
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_f
    iget v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    iget-object v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {v1, v2, v3, v4}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    .line 69
    .local v0, "rtn":I
    if-ne v0, v4, :cond_20

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    :goto_1f
    return v1

    :cond_20
    const/4 v1, -0x1

    goto :goto_1f
.end method

.method public read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_d
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v0, p1, v1, v2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_d
    iget v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:I

    invoke-static {v0, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(I[BII)I

    move-result v0

    return v0
.end method
