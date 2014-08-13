.class public Lcom/android/contacts/vcard/VCardReader;
.super Ljava/lang/Object;
.source "VCardReader.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VCardReader"


# instance fields
.field mContext:Landroid/content/Context;

.field private mCounter:I

.field private mMaxEntryCount:I

.field private mStart:I

.field mVCardParser21:Lcom/android/vcard/VCardParser_V21;

.field mVCardParser30:Lcom/android/vcard/VCardParser_V30;

.field mVcard:Lcom/android/vcard/VCardEntry;

.field private mVersion:I

.field vData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/vcard/VCardData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "start"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    .line 31
    iput-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardReader;->mContext:Landroid/content/Context;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/vcard/VCardReader;->mCounter:I

    .line 43
    iput p3, p0, Lcom/android/contacts/vcard/VCardReader;->mStart:I

    .line 44
    iput p4, p0, Lcom/android/contacts/vcard/VCardReader;->mMaxEntryCount:I

    .line 45
    invoke-direct {p0, p2}, Lcom/android/contacts/vcard/VCardReader;->initModelFromUri(Landroid/net/Uri;)V

    .line 46
    return-void
.end method

.method private initFromContentUri(ILandroid/net/Uri;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "localAssetFileDescriptor":Landroid/content/res/AssetFileDescriptor;
    const/4 v2, 0x0

    .line 130
    .local v2, "stream":Ljava/io/FileInputStream;
    iput p1, p0, Lcom/android/contacts/vcard/VCardReader;->mVersion:I

    .line 132
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/VCardReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, p2, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 134
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2

    .line 135
    if-eqz v2, :cond_0

    .line 136
    const-string v3, "VCardReader"

    const-string v4, "Opened File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/vcard/VCardReader;->parseVcard(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    if-eqz v2, :cond_1

    .line 147
    const-string v3, "VCardReader"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "VCardReader"

    const-string v4, "File Not Found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    if-eqz v2, :cond_1

    .line 147
    const-string v3, "VCardReader"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    const-string v3, "VCardReader"

    const-string v4, "IO Exception"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    if-eqz v2, :cond_1

    .line 147
    const-string v3, "VCardReader"

    const-string v4, "Closed File"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 150
    :catch_4
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 147
    const-string v4, "VCardReader"

    const-string v5, "Closed File"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 152
    :cond_2
    :goto_1
    throw v3

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 50
    const v2, -0x3fffffff

    :try_start_0
    invoke-direct {p0, v2, p1}, Lcom/android/contacts/vcard/VCardReader;->initFromContentUri(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_1
    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v2, p1}, Lcom/android/contacts/vcard/VCardReader;->initFromContentUri(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v1

    .line 55
    .local v1, "v":Lcom/android/vcard/exception/VCardException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private parseV21card(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v2, "VCardReader"

    const-string v3, "parseV21card Called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    .line 163
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    invoke-direct {v1}, Lcom/android/vcard/VCardEntryConstructor;-><init>()V

    .line 165
    .local v1, "vCardInterpreter":Lcom/android/vcard/VCardEntryConstructor;
    invoke-virtual {v1, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    invoke-virtual {v2, p1, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private parseV30card(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 174
    const-string v2, "VCardReader"

    const-string v3, "parseV30card Called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    .line 178
    new-instance v1, Lcom/android/vcard/VCardEntryConstructor;

    const v2, -0x3fffffff

    invoke-direct {v1, v2}, Lcom/android/vcard/VCardEntryConstructor;-><init>(I)V

    .line 181
    .local v1, "vCardInterpreter":Lcom/android/vcard/VCardEntryConstructor;
    invoke-virtual {v1, p0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    invoke-virtual {v2, p1, v1}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private parseVcard(ILjava/io/InputStream;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 191
    const v0, -0x3fffffff

    if-ne p1, v0, :cond_0

    .line 192
    invoke-direct {p0, p2}, Lcom/android/contacts/vcard/VCardReader;->parseV30card(Ljava/io/InputStream;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/contacts/vcard/VCardReader;->parseV21card(Ljava/io/InputStream;)V

    goto :goto_0
.end method


# virtual methods
.method public final getContactNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 95
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v4, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v3

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$PhoneData;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 101
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 103
    .local v2, "phonedata":Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public final getEmailAddress()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    if-nez v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v3

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v1

    .line 113
    .local v1, "emailList":Ljava/util/List;, "Ljava/util/List<Lcom/android/vcard/VCardEntry$EmailData;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardEntry$EmailData;

    .line 117
    .local v0, "emailData":Lcom/android/vcard/VCardEntry$EmailData;
    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVCardDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/vcard/VCardData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVCardEntryCount()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 3
    .param p1, "entry"    # Lcom/android/vcard/VCardEntry;

    .prologue
    .line 65
    iget v1, p0, Lcom/android/contacts/vcard/VCardReader;->mStart:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/vcard/VCardReader;->mCounter:I

    iget v2, p0, Lcom/android/contacts/vcard/VCardReader;->mStart:I

    if-lt v1, v2, :cond_1

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/vcard/VCardReader;->mVcard:Lcom/android/vcard/VCardEntry;

    .line 67
    new-instance v0, Lcom/android/contacts/vcard/VCardData;

    invoke-direct {v0}, Lcom/android/contacts/vcard/VCardData;-><init>()V

    .line 68
    .local v0, "data":Lcom/android/contacts/vcard/VCardData;
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardReader;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardData;->setName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardReader;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardReader;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardData;->setAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v0    # "data":Lcom/android/contacts/vcard/VCardData;
    :cond_1
    iget v1, p0, Lcom/android/contacts/vcard/VCardReader;->mMaxEntryCount:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardReader;->vData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/vcard/VCardReader;->mMaxEntryCount:I

    if-ne v1, v2, :cond_2

    .line 73
    iget v1, p0, Lcom/android/contacts/vcard/VCardReader;->mVersion:I

    const v2, -0x3fffffff

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    if-eqz v1, :cond_3

    .line 74
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser30:Lcom/android/vcard/VCardParser_V30;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParser_V30;->cancel()V

    .line 80
    :cond_2
    :goto_0
    iget v1, p0, Lcom/android/contacts/vcard/VCardReader;->mCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/vcard/VCardReader;->mCounter:I

    .line 81
    return-void

    .line 76
    :cond_3
    iget v1, p0, Lcom/android/contacts/vcard/VCardReader;->mVersion:I

    sget v2, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardReader;->mVCardParser21:Lcom/android/vcard/VCardParser_V21;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParser_V21;->cancel()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
