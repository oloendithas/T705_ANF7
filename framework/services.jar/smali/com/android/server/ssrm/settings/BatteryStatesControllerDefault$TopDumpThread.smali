.class Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;
.super Ljava/lang/Thread;
.source "BatteryStatesControllerDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TopDumpThread"
.end annotation


# instance fields
.field mMsg:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 124
    sget-object v15, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->mDumpThreadSyncObject:Ljava/lang/Object;

    monitor-enter v15

    .line 125
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    const/4 v10, 0x0

    .line 128
    .local v10, "reader":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 130
    .local v7, "lineForLog":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v14

    const-string/jumbo v16, "top -n 1 -m 3"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 131
    .local v9, "process":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 132
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 134
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .local v11, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 135
    .local v6, "line":Ljava/lang/String;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    .local v8, "log":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    iget-object v14, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 137
    .local v2, "data":J
    const-string/jumbo v14, "yyyy-MM-dd kk:mm:ss"

    invoke-static {v14, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 138
    .local v12, "time":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Time="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " Previous Level="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " New Level="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault$TopDumpThread;->mMsg:Landroid/os/Message;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "cnt":I
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 142
    add-int/lit8 v1, v1, 0x1

    .line 143
    const/4 v14, 0x7

    if-le v1, v14, :cond_0

    const/16 v14, 0xb

    if-ge v1, v14, :cond_0

    .line 147
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 148
    move-object v7, v6

    .line 149
    const-string v14, "\\s+"

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "words":[Ljava/lang/String;
    array-length v14, v13

    const/16 v16, 0x9

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    .line 151
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x8

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 161
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v12    # "time":Ljava/lang/String;
    .end local v13    # "words":[Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 162
    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "process":Ljava/lang/Process;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_3
    const-string v14, "SSRMv2:BatteryStatesControllerDefault"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error writing top command to file : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v14, "SSRMv2:BatteryStatesControllerDefault"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Original string : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 165
    if-eqz v10, :cond_1

    .line 167
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    return-void

    .line 152
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "cnt":I
    .restart local v2    # "data":J
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "log":Ljava/lang/StringBuffer;
    .restart local v9    # "process":Ljava/lang/Process;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "time":Ljava/lang/String;
    .restart local v13    # "words":[Ljava/lang/String;
    :cond_2
    :try_start_6
    array-length v14, v13

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v14, v0, :cond_0

    .line 153
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "["

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x9

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v16, 0x2

    aget-object v16, v13, v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 165
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v12    # "time":Ljava/lang/String;
    .end local v13    # "words":[Ljava/lang/String;
    :catchall_0
    move-exception v14

    move-object v10, v11

    .end local v6    # "line":Ljava/lang/String;
    .end local v9    # "process":Ljava/lang/Process;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v10, :cond_3

    .line 167
    :try_start_7
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 165
    :cond_3
    :goto_4
    :try_start_8
    throw v14

    .line 173
    .end local v7    # "lineForLog":Ljava/lang/String;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v14

    .line 157
    .restart local v1    # "cnt":I
    .restart local v2    # "data":J
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lineForLog":Ljava/lang/String;
    .restart local v8    # "log":Ljava/lang/StringBuffer;
    .restart local v9    # "process":Ljava/lang/Process;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "time":Ljava/lang/String;
    :cond_4
    :try_start_9
    sget-object v14, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;->sArrayCircularBuffer:Lcom/android/server/ssrm/CircularBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/server/ssrm/CircularBuffer;->put(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 165
    if-eqz v11, :cond_5

    .line 167
    :try_start_a
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_5
    :goto_5
    move-object v10, v11

    .line 172
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 168
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v9    # "process":Ljava/lang/Process;
    .end local v12    # "time":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 169
    .local v5, "exception":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 168
    .end local v5    # "exception":Ljava/io/IOException;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 169
    .restart local v5    # "exception":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 168
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "exception":Ljava/io/IOException;
    .end local v10    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "cnt":I
    .restart local v2    # "data":J
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "log":Ljava/lang/StringBuffer;
    .restart local v9    # "process":Ljava/lang/Process;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "time":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 169
    .restart local v5    # "exception":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    .line 165
    .end local v1    # "cnt":I
    .end local v2    # "data":J
    .end local v5    # "exception":Ljava/io/IOException;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "log":Ljava/lang/StringBuffer;
    .end local v9    # "process":Ljava/lang/Process;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .end local v12    # "time":Ljava/lang/String;
    .restart local v10    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v14

    goto :goto_3

    .line 161
    :catch_4
    move-exception v4

    goto/16 :goto_1
.end method
