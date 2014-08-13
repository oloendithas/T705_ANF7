.class public Lcom/sec/android/app/dialertab/calllog/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataReader"


# instance fields
.field private final CHARSET:Ljava/lang/String;

.field private mExceptionFlag:Z

.field private mFilename:Ljava/lang/String;

.field private mReader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, -0x2

    const/4 v10, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    .line 31
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 32
    .local v6, "offset":Ljava/lang/Integer;
    const/4 v7, 0x4

    new-array v3, v7, [B

    .line 33
    .local v3, "formatCheck":[B
    const/4 v4, 0x0

    .line 34
    .local v4, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 36
    .local v0, "charset":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    .line 38
    const/4 v7, 0x0

    aget-byte v7, v3, v7

    if-ne v7, v9, :cond_4

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    if-ne v7, v8, :cond_4

    .line 39
    const-string v0, "UTF-16LE"

    .line 40
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v6

    .line 56
    :goto_0
    if-eqz v5, :cond_0

    .line 58
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 63
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 64
    const-string v0, "ASCII"

    .line 67
    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->CHARSET:Ljava/lang/String;

    .line 70
    :try_start_3
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mFilename:Ljava/lang/String;

    .line 71
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-array v1, v7, [B

    .line 73
    .local v1, "dummy":[B
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 74
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->CHARSET:Ljava/lang/String;

    invoke-direct {v8, v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mReader:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    if-eqz v4, :cond_2

    .line 84
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 88
    :cond_2
    :goto_2
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v7, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 92
    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    .line 97
    .end local v1    # "dummy":[B
    :cond_3
    :goto_3
    return-void

    .line 41
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :cond_4
    const/4 v7, 0x0

    :try_start_6
    aget-byte v7, v3, v7

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    if-ne v7, v9, :cond_5

    .line 43
    const-string v0, "UTF-16BE"

    .line 44
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 45
    :cond_5
    const/4 v7, 0x0

    aget-byte v7, v3, v7

    const/16 v8, -0x11

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    const/16 v8, -0x45

    if-ne v7, v8, :cond_6

    const/4 v7, 0x2

    aget-byte v7, v3, v7

    const/16 v8, -0x41

    if-ne v7, v8, :cond_6

    .line 48
    const-string v0, "UTF-8"

    .line 49
    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    .line 51
    :cond_6
    const-string v0, "ASCII"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    .line 53
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 56
    :goto_4
    if-eqz v4, :cond_b

    .line 58
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v5, v4

    .line 60
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 59
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    move-object v5, v4

    .line 60
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 56
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_7

    .line 58
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 60
    :cond_7
    :goto_6
    throw v7

    .line 76
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v2

    move-object v4, v5

    .line 78
    .end local v5    # "is":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_7
    const/4 v7, 0x1

    :try_start_9
    iput-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    .line 79
    const-string v7, "DataReader"

    const-string v8, "DataReader open error!!"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 82
    if-eqz v4, :cond_8

    .line 84
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 88
    :cond_8
    :goto_8
    iget-boolean v7, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v7, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 92
    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    goto :goto_3

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_9
    if-eqz v4, :cond_9

    .line 84
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 88
    :cond_9
    :goto_a
    iget-boolean v8, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v8, :cond_a

    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 92
    iput-boolean v10, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    :cond_a
    throw v7

    .line 59
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    goto/16 :goto_1

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 85
    .restart local v1    # "dummy":[B
    :catch_5
    move-exception v7

    goto :goto_2

    .end local v1    # "dummy":[B
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v7

    goto :goto_8

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v8

    goto :goto_a

    .line 82
    :catchall_2
    move-exception v7

    goto :goto_9

    .line 76
    :catch_8
    move-exception v2

    goto :goto_7

    .line 56
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 53
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    goto :goto_4

    :cond_b
    move-object v5, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 128
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mReader:Ljava/io/BufferedReader;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    const/4 v1, 0x0

    .line 105
    .local v1, "s":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mReader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 112
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 116
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    iget-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 116
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    goto :goto_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DataReader;->close()V

    .line 116
    iput-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/DataReader;->mExceptionFlag:Z

    :cond_1
    throw v2
.end method
