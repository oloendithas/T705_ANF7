.class public Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;
.super Ljava/lang/Object;
.source "AbstractCommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/AbstractCommandManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidCommands"
.end annotation


# instance fields
.field private commands:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    .line 69
    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "allowedResposnes"    # [I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    .end local p1    # "name":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "name":Ljava/lang/String;
    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public getResponses(Ljava/lang/String;)[I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 120
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0
.end method

.method public hasName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->commands:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCommandFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Command;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Lcom/nuance/connect/service/comm/Command;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p2, Lcom/nuance/connect/service/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 112
    :cond_0
    return v0
.end method

.method public isExpectedResponse(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "responseStatus"    # I

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->getResponses(Ljava/lang/String;)[I

    move-result-object v1

    .line 126
    .local v1, "responses":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 127
    aget v2, v1, v0

    if-ne v2, p2, :cond_0

    .line 128
    const/4 v2, 0x1

    .line 132
    :goto_1
    return v2

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isResponseFor(Ljava/lang/String;Lcom/nuance/connect/service/comm/Response;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "response"    # Lcom/nuance/connect/service/comm/Response;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 94
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/nuance/connect/service/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p2, Lcom/nuance/connect/service/comm/Response;->command:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 100
    :cond_0
    return v0
.end method
