.class public Lcom/visionobjects/resourcemanager/VOLanguagePack;
.super Ljava/lang/Object;
.source "VOLanguagePack.java"

# interfaces
.implements Lcom/visionobjects/resourcemanager/VOLanguage;


# static fields
.field private static languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# instance fields
.field private listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private mLanguage:Ljava/lang/String;

.field private mPrevState:I

.field private mProgress:I

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static setLanguagePacksManager(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 0
    .param p0, "languagePacksManager"    # Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .prologue
    .line 17
    sput-object p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 18
    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    .line 42
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchCancelByIntent(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public deleteLanguage()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    .line 28
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchDeleteByIntent(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public doFailDownload()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    .line 146
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1, v1, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    .line 149
    :cond_0
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchCancelByIntent(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public downloadLanguage(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/touchtype_fluency/util/ProgressListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 34
    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    invoke-virtual {p0, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->setPrevState(I)V

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    .line 36
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v0, v0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->rmLauncher:Lcom/visionobjects/resourcemanager/RMLauncher;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/visionobjects/resourcemanager/RMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 91
    instance-of v0, p1, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/visionobjects/resourcemanager/VOLanguagePack;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 94
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMax()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x64

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mProgress:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevState()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mPrevState:I

    return v0
.end method

.method public getResources(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->languagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDownloadInProgress()Z
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstallable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdateAvailable()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, v1, v1, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 138
    :cond_0
    return-void
.end method

.method public notifySuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 131
    :cond_0
    return-void
.end method

.method public resetDownloadListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 0
    .param p1, "vOlistener"    # Lcom/touchtype_fluency/util/ProgressListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 142
    return-void
.end method

.method public setPrevState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mPrevState:I

    .line 76
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mProgress:I

    .line 101
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    .line 104
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mState:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/resourcemanager/VOLanguagePack;->mProgress:I

    .line 71
    return-void
.end method
