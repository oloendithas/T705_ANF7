.class public Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RMProgressReceiver.java"


# instance fields
.field private mLanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method public constructor <init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;)V
    .locals 0
    .param p1, "languagePacksManager"    # Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;->mLanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const-string v2, "com.visionobjects.resourcemanager.EXTRA_LANG"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "language":Ljava/lang/String;
    const-string v2, "com.visionobjects.resourcemanager.EXTRA_PROGRESS"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 34
    .local v1, "progress":I
    iget-object v2, p0, Lcom/visionobjects/resourcemanager/receiver/RMProgressReceiver;->mLanguagePacksManager:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v2, v0, v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->setProgressLanguage(Ljava/lang/String;I)V

    .line 36
    return-void
.end method
