.class public Lcom/samsung/voiceshell/WakeUpUtils;
.super Ljava/lang/Object;
.source "WakeUpUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 13
    const-string v0, "1.0.3"

    return-object v0
.end method

.method public static IsFileExist(Ljava/lang/String;)Z
    .registers 3
    .param p0, "strFilePath"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "fileHandle":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method
