.class public Lcom/sec/android/inputmethod/databases/SipProvider;
.super Landroid/content/ContentProvider;
.source "SipProvider.java"


# static fields
.field public static final Hanja_ASSET_PATH:Ljava/lang/String; = "databases/samsung_hanja.db"

.field public static final Hanja_DBNAME:Ljava/lang/String; = "samsung_hanja.db"

.field public static final Hanja_DB_TABLE_NAME:Ljava/lang/String; = "ksc5601_hanja"


# instance fields
.field m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private CopyDB()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    if-nez v12, :cond_1

    .line 83
    const-string v12, "SamsungIME"

    const-string v13, "[SP] CopyDB - getContext() == null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 88
    .local v0, "AssetManager":Landroid/content/res/AssetManager;
    const/4 v8, 0x0

    .line 89
    .local v8, "folderPath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "databases"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 90
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "databases"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 95
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "samsung_hanja.db"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "filePath":Ljava/lang/String;
    const-string v12, "SamsungIME"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[SP] CopyDB - filePath : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v7, "folder":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v5, "file":Ljava/io/File;
    const/4 v9, 0x0

    .line 102
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 104
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    const-string v12, "databases/samsung_hanja.db"

    invoke-virtual {v0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 105
    .local v10, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 107
    .local v1, "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 108
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 112
    const-string v12, "SamsungIME"

    const-string v13, "[SP] ExistsDB"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 114
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 92
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "filePath":Ljava/lang/String;
    .end local v7    # "folder":Ljava/io/File;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "data/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/databases"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 117
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "filePath":Ljava/lang/String;
    .restart local v7    # "folder":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :cond_4
    new-instance v9, Ljava/io/FileOutputStream;

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 118
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    invoke-direct {v2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 119
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    const/4 v11, -0x1

    .line 120
    .local v11, "read":I
    const/16 v12, 0x400

    new-array v3, v12, [B

    .line 122
    .local v3, "buffer":[B
    :goto_2
    const/4 v12, 0x0

    const/16 v13, 0x400

    :try_start_0
    invoke-virtual {v1, v3, v12, v13}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_f

    .line 123
    const/4 v12, 0x0

    invoke-virtual {v2, v3, v12, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 125
    :catch_0
    move-exception v4

    .line 126
    .local v4, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v2, :cond_5

    .line 132
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 138
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    .line 140
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 145
    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    .line 147
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 152
    :cond_7
    :goto_5
    if-eqz v10, :cond_0

    .line 154
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 155
    :catch_1
    move-exception v4

    .line 156
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 127
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 128
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    if-eqz v2, :cond_8

    .line 132
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 138
    .end local v4    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_8
    :goto_7
    if-eqz v9, :cond_9

    .line 140
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 145
    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    .line 147
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 152
    :cond_a
    :goto_9
    if-eqz v10, :cond_0

    .line 154
    :try_start_a
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 155
    :catch_3
    move-exception v4

    goto :goto_6

    .line 130
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_b

    .line 132
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 138
    :cond_b
    :goto_a
    if-eqz v9, :cond_c

    .line 140
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 145
    :cond_c
    :goto_b
    if-eqz v1, :cond_d

    .line 147
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 152
    :cond_d
    :goto_c
    if-eqz v10, :cond_e

    .line 154
    :try_start_e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 130
    :cond_e
    :goto_d
    throw v12

    .line 141
    :catch_4
    move-exception v4

    .line 142
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b

    .line 148
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 149
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 155
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 156
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    .line 134
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 135
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 141
    :catch_8
    move-exception v4

    .line 142
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 148
    :catch_9
    move-exception v4

    .line 149
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 134
    :catch_a
    move-exception v4

    .line 135
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 141
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_b
    move-exception v4

    .line 142
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 148
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_c
    move-exception v4

    .line 149
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 134
    .local v4, "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_d
    move-exception v4

    .line 135
    .local v4, "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 130
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_f
    if-eqz v2, :cond_10

    .line 132
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 133
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    .line 138
    :cond_10
    :goto_e
    if-eqz v9, :cond_11

    .line 140
    :try_start_10
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 145
    :cond_11
    :goto_f
    if-eqz v1, :cond_12

    .line 147
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 152
    :cond_12
    :goto_10
    if-eqz v10, :cond_0

    .line 154
    :try_start_12
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    goto/16 :goto_0

    .line 155
    :catch_e
    move-exception v4

    goto/16 :goto_6

    .line 141
    :catch_f
    move-exception v4

    .line 142
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .line 148
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_10
    move-exception v4

    .line 149
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 134
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_11
    move-exception v4

    .line 135
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksc5601_hanja"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/SipProvider;->m_HanjaDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ksc5601_hanja"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
