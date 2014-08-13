.class Lcom/nuance/connect/service/manager/DlmSyncManager$4;
.super Ljava/lang/Object;
.source "DlmSyncManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DlmSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/DlmSyncManager;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I[I)V
    .locals 7
    .param p1, "languageIds"    # [I
    .param p2, "cores"    # [I

    .prologue
    .line 302
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$200(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 303
    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->supportedCategories:[Ljava/lang/Integer;
    invoke-static {}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$800()[Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 304
    .local v4, "supportedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 305
    .local v1, "cat":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # getter for: Lcom/nuance/connect/service/manager/DlmSyncManager;->categoriesInUse:Ljava/util/Set;
    invoke-static {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$200(Lcom/nuance/connect/service/manager/DlmSyncManager;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "cat":I
    :cond_1
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v5, v6, :cond_2

    .line 310
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    invoke-virtual {v5}, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartComplete()V

    .line 312
    :cond_2
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    iget-object v5, v5, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v6, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v5, v6, :cond_3

    .line 313
    iget-object v5, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$4;->this$0:Lcom/nuance/connect/service/manager/DlmSyncManager;

    # invokes: Lcom/nuance/connect/service/manager/DlmSyncManager;->checkDlmSync()V
    invoke-static {v5}, Lcom/nuance/connect/service/manager/DlmSyncManager;->access$900(Lcom/nuance/connect/service/manager/DlmSyncManager;)V

    .line 315
    :cond_3
    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .locals 0
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 298
    return-void
.end method
