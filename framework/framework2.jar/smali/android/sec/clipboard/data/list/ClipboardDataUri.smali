.class public Landroid/sec/clipboard/data/list/ClipboardDataUri;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPreviewImgPath:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public GetUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 7
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 78
    .local v0, "Result":Z
    if-eqz v0, :cond_f

    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_11

    :cond_f
    move v1, v0

    .line 106
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_10
    return v1

    .line 80
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_11
    packed-switch p1, :pswitch_data_42

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_14
    :goto_14
    move v1, v0

    .line 106
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_10

    .line 83
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_16
    const/4 v0, 0x0

    .line 84
    goto :goto_14

    .line 86
    :pswitch_18
    const/4 v0, 0x0

    .line 87
    goto :goto_14

    .line 89
    :pswitch_1a
    const/4 v0, 0x0

    .line 90
    goto :goto_14

    :pswitch_1c
    move-object v2, p2

    .line 92
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->SetUri(Landroid/net/Uri;)Z

    move-result v0

    .line 93
    const-string v2, ""

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 94
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setPreviewImgPath(Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_14

    .line 98
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3d
    const/4 v0, 0x0

    .line 99
    goto :goto_14

    .line 101
    :pswitch_3f
    const/4 v0, 0x0

    goto :goto_14

    .line 80
    nop

    :pswitch_data_42
    .packed-switch 0x2
        :pswitch_16
        :pswitch_18
        :pswitch_1a
        :pswitch_1c
        :pswitch_3d
        :pswitch_3f
    .end packed-switch
.end method

.method public SetUri(Landroid/net/Uri;)Z
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 123
    :cond_c
    const/4 v0, 0x0

    .line 126
    :goto_d
    return v0

    .line 125
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    .line 126
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 116
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 144
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "ClipboardServiceEx"

    const-string/jumbo v4, "uri equals"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_c
    const/4 v0, 0x0

    .line 146
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v1, v0

    .line 157
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_14
    return v1

    .line 149
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_15
    instance-of v3, p1, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    if-nez v3, :cond_1b

    move v1, v0

    .line 150
    .restart local v1    # "Result":I
    goto :goto_14

    .end local v1    # "Result":I
    :cond_1b
    move-object v2, p1

    .line 152
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 154
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_35

    const/4 v0, 0x1

    :goto_33
    move v1, v0

    .line 157
    .restart local v1    # "Result":I
    goto :goto_14

    .line 154
    .end local v1    # "Result":I
    :cond_35
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public getPreviewImgPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public isImagefile()Z
    .registers 5

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v1

    .line 205
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_25

    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 206
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "file":Ljava/io/File;
    new-instance v2, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;

    invoke-direct {v2, p0}, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;-><init>(Landroid/sec/clipboard/data/list/ClipboardDataUri;)V

    invoke-virtual {v2, v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri$ImageFileFilter;->accept(Ljava/io/File;)Z

    move-result v2

    .line 209
    .end local v0    # "file":Ljava/io/File;
    :goto_24
    return v2

    :cond_25
    const/4 v2, 0x0

    goto :goto_24
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 173
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    .line 174
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setPreviewImgPath(Ljava/lang/String;)Z
    .registers 8
    .param p1, "FilePath"    # Ljava/lang/String;

    .prologue
    .line 183
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v3, :cond_1d

    const-string v3, "ClipboardServiceEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPreviewImgPath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1d
    const/4 v0, 0x0

    .line 185
    .local v0, "Result":Z
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_29

    :cond_27
    move v1, v0

    .line 196
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_28
    return v1

    .line 188
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_29
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {p0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->isImagefile()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 190
    iput-object p1, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    :cond_3d
    :goto_3d
    move v1, v0

    .line 196
    .restart local v1    # "Result":I
    goto :goto_28

    .line 193
    .end local v1    # "Result":I
    :cond_3f
    const-string v3, ""

    iput-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    .line 194
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v3, :cond_3d

    const-string v3, "ClipboardServiceEx"

    const-string v4, "ClipboardDataUri : value is no file path or not image file"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Uri class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 163
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Uri write to parcel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 165
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataUri;->mPreviewImgPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 168
    return-void
.end method
