.class Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;
.super Ljava/lang/Object;
.source "ACDownloadManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService$ACLanguageDownloadListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->runLanguageDLCases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public availableLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available Languages ###: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    const-string v0, "ACDownloadManager"

    const-string v1, "exiting... empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getAvailableLanguages()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$102(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;

    .line 227
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getDownloadedLanguages()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$202(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;

    .line 228
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    iget-object v1, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$302(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;Ljava/util/List;)Ljava/util/List;

    .line 230
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACDownloadManager downloadable mDownloadableLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadableLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$100(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACDownloadManager downloaded mDownloadedLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mDownloadedLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$200(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACDownloadManager updateable mUpdateableLanguageList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->mUpdateableLanguageList:Ljava/util/List;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$300(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # invokes: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->setSharedPreferencesList()V
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$400(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)V

    goto/16 :goto_0
.end method

.method public downloadedLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloaded Languages ###: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public updatableLanguages(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v0}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    const-string v0, "ACDownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updateable Languages ###: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/acmanager/ACDownloadManager$2;->this$0:Lcom/diotek/ime/framework/acmanager/ACDownloadManager;

    # getter for: Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->languageDownload:Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;
    invoke-static {v2}, Lcom/diotek/ime/framework/acmanager/ACDownloadManager;->access$000(Lcom/diotek/ime/framework/acmanager/ACDownloadManager;)Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACLanguageDownloadService;->getUpdatableLanguages()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    return-void
.end method
