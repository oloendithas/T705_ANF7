.class Lcom/nuance/connect/util/Logger$DeveloperLog;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/nuance/connect/util/Logger$Log;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeveloperLog"
.end annotation


# instance fields
.field private final loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

.field private final prefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/connect/util/Logger$LoggerType;

    .prologue
    .line 188
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/nuance/connect/util/Logger$DeveloperLog;-><init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected constructor <init>(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/nuance/connect/util/Logger$LoggerType;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    if-nez p2, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_0
    iput-object p2, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->prefix:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

    .line 197
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 210
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 211
    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 214
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 215
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 226
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 227
    return-void
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 230
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 231
    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 218
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    return-void
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 223
    return-void
.end method

.method public isLoggable(I)Z
    .locals 5
    .param p1, "level"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 201
    sget v3, Lcom/nuance/connect/util/Logger;->logLevel:I

    if-lt p1, v3, :cond_1

    move v0, v1

    .line 203
    .local v0, "isLoggable":Z
    :goto_0
    iget-object v3, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->loggerType:Lcom/nuance/connect/util/Logger$LoggerType;

    sget-object v4, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    if-ne v3, v4, :cond_0

    .line 204
    if-eqz v0, :cond_2

    # getter for: Lcom/nuance/connect/util/Logger;->developerLogEnabled:Z
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 206
    :cond_0
    :goto_1
    return v0

    .end local v0    # "isLoggable":Z
    :cond_1
    move v0, v2

    .line 201
    goto :goto_0

    .restart local v0    # "isLoggable":Z
    :cond_2
    move v0, v2

    .line 204
    goto :goto_1
.end method

.method protected log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nuance/connect/util/Logger$DeveloperLog;->prefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 256
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_0

    .line 257
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 258
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    :goto_0
    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->ANDROID_LOG:Lcom/nuance/connect/util/Logger$OutputMode;

    if-eq v1, v2, :cond_1

    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    if-ne v1, v2, :cond_2

    .line 264
    :cond_1
    const-string v1, "ConnectSDK"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    if-eq v1, v2, :cond_3

    # getter for: Lcom/nuance/connect/util/Logger;->outputMode:Lcom/nuance/connect/util/Logger$OutputMode;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$100()Lcom/nuance/connect/util/Logger$OutputMode;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/util/Logger$OutputMode;->LOG_AND_FILE:Lcom/nuance/connect/util/Logger$OutputMode;

    if-ne v1, v2, :cond_4

    .line 267
    :cond_3
    # getter for: Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$200()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    # getter for: Lcom/nuance/connect/util/Logger;->outputFile:Ljava/io/File;
    invoke-static {}, Lcom/nuance/connect/util/Logger;->access$200()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    return-void

    .line 260
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public v(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 234
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 235
    return-void
.end method

.method public v(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 238
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 239
    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 242
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 243
    return-void
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 246
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Lcom/nuance/connect/util/Logger$DeveloperLog;->log(ILjava/lang/Object;Ljava/lang/Throwable;)V

    .line 247
    return-void
.end method
