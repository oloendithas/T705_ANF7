.class public Lcom/visionobjects/resourcemanager/RMLanguageModel;
.super Ljava/lang/Object;
.source "RMLanguageModel.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPreloaded:Ljava/lang/String;

.field private mVersion:Lcom/visionobjects/resourcemanager/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/visionobjects/resourcemanager/Version;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/visionobjects/resourcemanager/Version;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mVersion:Lcom/visionobjects/resourcemanager/Version;

    .line 26
    const-string v0, "false"

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mPreloaded:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/visionobjects/resourcemanager/Version;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/visionobjects/resourcemanager/Version;
    .param p3, "preloaded"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mVersion:Lcom/visionobjects/resourcemanager/Version;

    .line 38
    iput-object p3, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mPreloaded:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/visionobjects/resourcemanager/Version;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mVersion:Lcom/visionobjects/resourcemanager/Version;

    return-object v0
.end method

.method public isPreloaded()Z
    .locals 2

    .prologue
    .line 62
    const-string v0, "true"

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMLanguageModel;->mPreloaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
