.class public Landroid/sec/clipboard/data/list/ClipboardDataIntent;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataIntent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardData;-><init>(I)V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public GetIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_7} :catch_9

    move-result-object v1

    .line 143
    :goto_8
    return-object v1

    .line 139
    :catch_9
    move-exception v0

    .line 141
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 8
    .param p1, "format"    # I
    .param p2, "altData"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    const/4 v4, 0x1

    .line 75
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    .line 76
    .local v0, "Result":Z
    if-eqz v0, :cond_17

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_19

    :cond_17
    move v1, v0

    .line 107
    .end local v0    # "Result":Z
    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    .local v1, "Result":Z
    :goto_18
    return v1

    .line 78
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :cond_19
    packed-switch p1, :pswitch_data_3c

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :goto_1c
    move v1, v0

    .line 107
    .end local v0    # "Result":Z
    .restart local v1    # "Result":Z
    goto :goto_18

    .line 81
    .end local v1    # "Result":Z
    .restart local v0    # "Result":Z
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_1e
    const/4 v0, 0x0

    .line 82
    goto :goto_1c

    .line 84
    :pswitch_20
    const/4 v0, 0x0

    .line 85
    goto :goto_1c

    .line 87
    :pswitch_22
    const/4 v0, 0x0

    .line 88
    goto :goto_1c

    .line 90
    :pswitch_24
    const/4 v0, 0x0

    .line 91
    goto :goto_1c

    .line 94
    :pswitch_26
    :try_start_26
    check-cast p2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->SetIntent(Landroid/content/Intent;)Z
    :try_end_32
    .catch Ljava/net/URISyntaxException; {:try_start_26 .. :try_end_32} :catch_34

    move-result v0

    goto :goto_1c

    .line 95
    :catch_34
    move-exception v2

    .line 97
    .local v2, "e":Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    .line 98
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    .line 102
    .end local v2    # "e":Ljava/net/URISyntaxException;
    .restart local p2    # "altData":Landroid/sec/clipboard/data/ClipboardData;
    :pswitch_3a
    const/4 v0, 0x0

    goto :goto_1c

    .line 78
    :pswitch_data_3c
    .packed-switch 0x2
        :pswitch_1e
        :pswitch_20
        :pswitch_22
        :pswitch_24
        :pswitch_26
        :pswitch_3a
    .end packed-switch
.end method

.method public SetIntent(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 123
    if-eqz p1, :cond_d

    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 124
    :cond_d
    const/4 v0, 0x0

    .line 127
    :goto_e
    return v0

    .line 126
    :cond_f
    invoke-virtual {p1, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    goto :goto_e
.end method

.method public clearData()V
    .registers 2

    .prologue
    .line 117
    const-string v0, ""

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 152
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_c

    const-string v4, "ClipboardServiceEx"

    const-string v5, "intent equals"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_c
    const/4 v0, 0x0

    .line 154
    .local v0, "Result":Z
    invoke-super {p0, p1}, Landroid/sec/clipboard/data/ClipboardData;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move v1, v0

    .line 165
    .end local v0    # "Result":Z
    .local v1, "Result":I
    :goto_14
    return v1

    .line 157
    .end local v1    # "Result":I
    .restart local v0    # "Result":Z
    :cond_15
    instance-of v4, p1, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    if-nez v4, :cond_1b

    move v1, v0

    .line 158
    .restart local v1    # "Result":I
    goto :goto_14

    .end local v1    # "Result":I
    :cond_1b
    move-object v2, p1

    .line 160
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .line 162
    .local v2, "trgData":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->GetIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_31

    move v0, v3

    :goto_2f
    move v1, v0

    .line 165
    .restart local v1    # "Result":I
    goto :goto_14

    .line 162
    .end local v1    # "Result":I
    :cond_31
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method protected readFormSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 180
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x14

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "this Intent class. Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_26

    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    goto :goto_1d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 171
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ClipboardServiceEx"

    const-string v1, "Intent write to parcel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/sec/clipboard/data/ClipboardData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    iget-object v0, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 175
    return-void
.end method
