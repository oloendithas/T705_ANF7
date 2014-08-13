.class final Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager$3;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SwiftkeyLiveLanguageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/SwiftkeyLiveLanguageManager;->downloadLiveLanguagePack(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "cancelled"    # Z
    .param p3, "digestOK"    # Z

    .prologue
    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    .line 148
    .local v0, "repository":Lcom/diotek/ime/framework/repository/Repository;
    const-string v1, "RELOAD_LANGUAGEPACK"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    .line 150
    .end local v0    # "repository":Lcom/diotek/ime/framework/repository/Repository;
    :cond_0
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "maximum"    # I

    .prologue
    .line 142
    return-void
.end method
