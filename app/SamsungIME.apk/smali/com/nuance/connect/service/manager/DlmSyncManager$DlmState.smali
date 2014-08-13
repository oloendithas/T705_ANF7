.class Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;
.super Ljava/lang/Object;
.source "DlmSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/service/manager/DlmSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DlmState"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private backupInProgress:Z

.field private backupRequired:Z

.field private pullInProgress:Z

.field private pullRequested:Z

.field private pullTransID:Ljava/lang/String;

.field private restoreInProgress:Z

.field private restoreRequested:Z

.field private restoreTransID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    if-nez p1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 251
    .local v2, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 252
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "current":I
    .local v1, "current":I
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 253
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    .line 254
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "current":I
    .restart local v1    # "current":I
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    .line 255
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "current":I
    .restart local v0    # "current":I
    aget-object v3, v2, v1

    iput-object v3, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public backupComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    .line 242
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    .line 243
    return-void
.end method

.method public backupRequired()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    .line 238
    return-void
.end method

.method public getPullTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    return-object v0
.end method

.method public isBackupHappening()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    return v0
.end method

.method public isBackupRequired()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    return v0
.end method

.method public isPullHappening()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    return v0
.end method

.method public isPullRequested()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    return v0
.end method

.method public isRestoreHappening()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    return v0
.end method

.method public isRestoreRequested()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    .line 139
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    .line 140
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    .line 141
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    .line 142
    return-void
.end method

.method public pullComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 178
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    .line 179
    return-void
.end method

.method public pullRequested()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 171
    :goto_0
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 173
    return-void

    .line 169
    :cond_0
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    goto :goto_0
.end method

.method public restoreComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    .line 193
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 194
    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    .line 196
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    .line 198
    return-void
.end method

.method public restoreRequested()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setPullTransactionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 151
    return-void
.end method

.method public setRestoreTransactionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreTransID:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public startBackup()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    .line 217
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupInProgress:Z

    .line 218
    return-void
.end method

.method public startPull()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 202
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    .line 203
    return-void
.end method

.method public startRestore()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    .line 207
    iput-boolean v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreInProgress:Z

    .line 210
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 212
    iput-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullInProgress:Z

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->restoreRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->backupRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/service/manager/DlmSyncManager$DlmState;->pullTransID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
