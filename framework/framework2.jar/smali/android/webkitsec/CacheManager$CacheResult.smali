.class public Landroid/webkitsec/CacheManager$CacheResult;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/CacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheResult"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field contentLength:J

.field contentdisposition:Ljava/lang/String;

.field crossDomain:Ljava/lang/String;

.field encoding:Ljava/lang/String;

.field etag:Ljava/lang/String;

.field expires:J

.field expiresString:Ljava/lang/String;

.field httpStatusCode:I

.field inStream:Ljava/io/InputStream;

.field lastModified:Ljava/lang/String;

.field localPath:Ljava/lang/String;

.field location:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field outFile:Ljava/io/File;

.field outStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDisposition()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->contentLength:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()J
    .registers 3

    .prologue
    .line 122
    iget-wide v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->expires:J

    return-wide v0
.end method

.method public getExpiresString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->httpStatusCode:I

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Landroid/webkitsec/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public setContentLength(J)V
    .registers 3
    .param p1, "contentLength"    # J

    .prologue
    .line 239
    iput-wide p1, p0, Landroid/webkitsec/CacheManager$CacheResult;->contentLength:J

    .line 240
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/webkitsec/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 223
    iput-object p1, p0, Landroid/webkitsec/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;

    .line 224
    return-void
.end method
