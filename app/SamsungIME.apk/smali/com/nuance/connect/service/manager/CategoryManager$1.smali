.class Lcom/nuance/connect/service/manager/CategoryManager$1;
.super Ljava/lang/Object;
.source "CategoryManager.java"

# interfaces
.implements Lcom/nuance/connect/service/manager/interfaces/LanguageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/CategoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/manager/CategoryManager;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/manager/CategoryManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageUpdate([I[I)V
    .locals 7
    .param p1, "languageIds"    # [I
    .param p2, "coreIds"    # [I

    .prologue
    .line 137
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CategoryManager.onLanguageUpdate("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 139
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p1, v4, Lcom/nuance/connect/service/manager/CategoryManager;->currentLanguageCodes:[I

    .line 140
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 141
    if-eqz p2, :cond_0

    .line 142
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 143
    .local v1, "core":I
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/CategoryManager;->coresInUse:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v0    # "arr$":[I
    .end local v1    # "core":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v4, v4, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v5, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v4, v5, :cond_1

    .line 147
    iget-object v4, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V
    invoke-static {v4}, Lcom/nuance/connect/service/manager/CategoryManager;->access$100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    .line 149
    :cond_1
    return-void
.end method

.method public onLocaleUpdate(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # getter for: Lcom/nuance/connect/service/manager/CategoryManager;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$000(Lcom/nuance/connect/service/manager/CategoryManager;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CategoryManager.onLocaleUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iput-object p1, v0, Lcom/nuance/connect/service/manager/CategoryManager;->currentLocale:Ljava/util/Locale;

    .line 130
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    iget-object v0, v0, Lcom/nuance/connect/service/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/connect/service/manager/AbstractCommandManager$ManagerState;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/nuance/connect/service/manager/CategoryManager$1;->this$0:Lcom/nuance/connect/service/manager/CategoryManager;

    # invokes: Lcom/nuance/connect/service/manager/CategoryManager;->processNextCategory()V
    invoke-static {v0}, Lcom/nuance/connect/service/manager/CategoryManager;->access$100(Lcom/nuance/connect/service/manager/CategoryManager;)V

    .line 133
    :cond_0
    return-void
.end method
