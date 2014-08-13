.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->onProgress(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

.field final synthetic val$current:I

.field final synthetic val$maximum:I


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;II)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iput p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->val$current:I

    iput p3, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->val$maximum:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 471
    const/4 v2, 0x0

    .line 472
    .local v2, "vocurrent":I
    const/4 v3, 0x0

    .line 474
    .local v3, "vomaximum":I
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getMetadata()Lorg/json/JSONObject;

    move-result-object v1

    .line 475
    .local v1, "metadata":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 476
    const-string v4, "download-vocur"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 477
    const-string v4, "download-vomax"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 480
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 482
    .local v0, "json":Lorg/json/JSONObject;
    iget v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->val$current:I

    iget v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->val$maximum:I

    if-ne v4, v5, :cond_2

    .line 483
    const-string v4, "download-skcur"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 488
    :goto_0
    const-string v4, "download-skmax"

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 489
    const-string v4, "download-vocur"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 490
    const-string v4, "download-vomax"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 491
    const-string v4, "download-state"

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 492
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v0    # "json":Lorg/json/JSONObject;
    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 496
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBar(Z)V
    invoke-static {v4, v7}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    .line 497
    :cond_1
    return-void

    .line 485
    .restart local v0    # "json":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v4, "download-skcur"

    iget v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->val$current:I

    mul-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$4$1;->val$maximum:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 493
    .end local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_1
.end method
