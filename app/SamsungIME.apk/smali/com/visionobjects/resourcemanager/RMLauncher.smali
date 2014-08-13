.class public Lcom/visionobjects/resourcemanager/RMLauncher;
.super Ljava/lang/Object;
.source "RMLauncher.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/visionobjects/resourcemanager/RMLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/RMLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/RMLauncher;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public launchCancelByIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 45
    sget-object v1, Lcom/visionobjects/resourcemanager/RMLauncher;->TAG:Ljava/lang/String;

    const-string v2, "> launchCancelByIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.visionobjects.resourcemanager.ACTION_CANCEL_LANG_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "com.visionobjects.resourcemanager.EXTRA_LANG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public launchDeleteByIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v1, Lcom/visionobjects/resourcemanager/RMLauncher;->TAG:Ljava/lang/String;

    const-string v2, "> launchDeleteByIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.visionobjects.resourcemanager.ACTION_DELETE_LANG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "com.visionobjects.resourcemanager.EXTRA_LANG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public launchUpdateByIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v1, Lcom/visionobjects/resourcemanager/RMLauncher;->TAG:Ljava/lang/String;

    const-string v2, "> launchUpdateByIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.visionobjects.resourcemanager.ACTION_UPDATE_LANG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "com.visionobjects.resourcemanager.EXTRA_LANG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/visionobjects/resourcemanager/RMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 37
    return-void
.end method
