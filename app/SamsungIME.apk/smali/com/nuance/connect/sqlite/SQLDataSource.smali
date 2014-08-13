.class public abstract Lcom/nuance/connect/sqlite/SQLDataSource;
.super Ljava/lang/Object;
.source "SQLDataSource.java"


# instance fields
.field protected database:Landroid/database/sqlite/SQLiteDatabase;

.field private log:Lcom/nuance/connect/util/Logger$Log;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    .line 21
    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method protected decryptDouble(Ljava/lang/String;)D
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 110
    :goto_0
    return-wide v2

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException while parsing data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 110
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected decryptFloat(Ljava/lang/String;)F
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 123
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException while parsing data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 123
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected decryptInt(Ljava/lang/String;)I
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/nuance/connect/sqlite/SQLDataSource;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 97
    :goto_0
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException while parsing data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 97
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected decryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v1, ""

    .line 129
    .local v1, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 130
    const/4 v2, 0x0

    .line 139
    :goto_0
    return-object v2

    .line 134
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 139
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while securing data [d]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected encryptString(D)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(J)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 80
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/sqlite/SQLDataSource;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encryptString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 60
    const-string v1, ""

    .line 62
    .local v1, "result":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 72
    :goto_0
    return-object v2

    .line 67
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/nuance/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 72
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while securing data [e]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "isOpen":Z
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 56
    :cond_0
    return v0
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation
.end method

.method public openSafe()Z
    .locals 5

    .prologue
    .line 26
    const/4 v1, 0x0

    .line 29
    .local v1, "status":Z
    :try_start_0
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->open()V

    .line 33
    :cond_0
    const/4 v1, 0x1

    .line 45
    :goto_0
    return v1

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/sqlite/SQLDataSource;->open()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ex":Landroid/database/SQLException;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 39
    const/4 v1, 0x0

    .line 43
    goto :goto_0

    .line 40
    .end local v0    # "ex":Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 41
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/nuance/connect/sqlite/SQLDataSource;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error opening db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method
