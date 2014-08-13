.class public Lcom/diotek/ime/framework/util/AssetXmlManager;
.super Ljava/lang/Object;
.source "AssetXmlManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirectory:Ljava/lang/String;

.field private mFileList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    .line 28
    .local v0, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    .line 32
    iput-object p1, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private getXmlFileFromAsset(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v5, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 94
    const/4 v5, 0x0

    .line 113
    :goto_0
    return-object v5

    .line 97
    :cond_0
    iget-object v5, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 98
    .local v2, "manager":Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 101
    .local v4, "xmlReader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 102
    .local v1, "line":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v3, "xmlData":Ljava/lang/StringBuffer;
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v5
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/diotek/ime/framework/util/AssetXmlManager;->getXmlFiles()[Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 60
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 61
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 67
    .end local v1    # "idx":I
    :goto_1
    return v2

    .line 60
    .restart local v1    # "idx":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "idx":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public createXmlParser(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v1, 0x0

    .line 73
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 75
    .local v2, "xmlData":Ljava/lang/String;
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v3

    .line 79
    :cond_1
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 80
    if-eqz v1, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/util/AssetXmlManager;->getXmlFileFromAsset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    if-eqz v2, :cond_0

    .line 87
    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    move-object v3, v1

    .line 89
    goto :goto_0
.end method

.method public getXmlFiles()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 38
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 39
    const/4 v2, 0x0

    .line 53
    :goto_0
    return-object v2

    .line 42
    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 44
    .local v1, "manager":Landroid/content/res/AssetManager;
    if-eqz v1, :cond_1

    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "manager":Landroid/content/res/AssetManager;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/diotek/ime/framework/util/AssetXmlManager;->mFileList:[Ljava/lang/String;

    goto :goto_0

    .line 47
    .restart local v1    # "manager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v0

    .line 48
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
