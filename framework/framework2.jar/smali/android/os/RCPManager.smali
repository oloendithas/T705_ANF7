.class public Landroid/os/RCPManager;
.super Ljava/lang/Object;
.source "RCPManager.java"


# static fields
.field public static final ERROR:I = -0x14d

.field private static final TAG:Ljava/lang/String; = "RCPManager"


# instance fields
.field mService:Landroid/os/IRCPManager;


# direct methods
.method public constructor <init>(Landroid/os/IRCPManager;)V
    .registers 2
    .param p1, "service"    # Landroid/os/IRCPManager;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    .line 132
    return-void
.end method


# virtual methods
.method public cancelCopyChunks(J)V
    .registers 4
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_9

    .line 361
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->cancelCopyChunks(J)V

    .line 363
    :cond_9
    return-void
.end method

.method public changePermissionMigration(Ljava/lang/String;III)I
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 323
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->changePermissionMigration(Ljava/lang/String;III)I

    move-result v0

    .line 325
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .registers 6
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->checkSAccount(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 254
    :goto_5
    return-void

    .line 250
    :catch_6
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to checkSAccount."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    .registers 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/ISAccountCallback;

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->checkSAccountPassword(Ljava/lang/String;Landroid/content/ISAccountCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 263
    :goto_5
    return-void

    .line 259
    :catch_6
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to checkSAccountPassword."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .registers 22
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_17

    .line 353
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Landroid/os/IRCPManager;->copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I

    move-result v0

    .line 356
    :goto_16
    return v0

    :cond_17
    const/16 v0, -0x14d

    goto :goto_16
.end method

.method public copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "permissions"    # I

    .prologue
    .line 214
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 216
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IRCPManager;->copyClipboardFile(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 222
    :goto_a
    return v1

    .line 217
    :catch_b
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to save clipboard sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 306
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 308
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public deleteClipboardFile(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 228
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->deleteClipboardFile(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 234
    :cond_9
    :goto_9
    return-void

    .line 229
    :catch_a
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to deleteClipboardFile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 370
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->deleteFile(Ljava/lang/String;I)Z

    move-result v0

    .line 372
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_f

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2, p3}, Landroid/os/IRCPManager;->exchangeData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 390
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public executeCommandForPersona(Landroid/app/Command;)V
    .registers 5
    .param p1, "command"    # Landroid/app/Command;

    .prologue
    .line 203
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 205
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->executeCommandForPersona(Landroid/app/Command;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 211
    :cond_9
    :goto_9
    return-void

    .line 206
    :catch_a
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 5
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 292
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 298
    :goto_a
    return-object v1

    .line 293
    :catch_b
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get getCallerInfo(). "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 345
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 347
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 338
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 340
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNotifications(Z)Ljava/util/List;
    .registers 5
    .param p1, "includeCallingUserNotifs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/app/KnoxNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 137
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getNotifications(Z)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 143
    :goto_a
    return-object v1

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get all notifications getNotifications"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .registers 4

    .prologue
    .line 278
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 280
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPInterface()Landroid/content/IRCPInterface;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 286
    :goto_a
    return-object v1

    .line 281
    :catch_b
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get RCPInterface from getRCPInterface()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 286
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    .registers 4

    .prologue
    .line 266
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 268
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 274
    :goto_a
    return-object v1

    .line 269
    :catch_b
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to get IRCPGlobalContactsDir from getRCPProxy()."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getUsersToSyncFrom(Ljava/lang/String;)[I
    .registers 5
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_16

    .line 171
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->getUsersToSyncFrom(Ljava/lang/String;)[I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v1

    .line 177
    :goto_a
    return-object v1

    .line 172
    :catch_b
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to set up the sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_16
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " in createShortcut() for packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_31

    .line 407
    :try_start_26
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IRCPManager;->handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_32

    .line 414
    :cond_31
    :goto_31
    return-void

    .line 409
    :catch_32
    move-exception v7

    .line 410
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to get createShortcut(). "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_31
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 331
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2}, Landroid/os/IRCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    .line 333
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_b

    .line 314
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IRCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 316
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public notificationCleared(Landroid/app/KnoxNotification;)V
    .registers 5
    .param p1, "n"    # Landroid/app/KnoxNotification;

    .prologue
    .line 147
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 149
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->notificationCleared(Landroid/app/KnoxNotification;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 155
    :cond_9
    :goto_9
    return-void

    .line 150
    :catch_a
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to clear notification notificationCleared."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 17
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_36

    .line 53
    :try_start_4
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryAllProviders(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 61
    :goto_2a
    return-object v0

    .line 56
    :catch_2b
    move-exception v8

    .line 57
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryAllProviders()"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_36
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .registers 17
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resource"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v0, :cond_36

    .line 37
    :try_start_4
    const-string v0, "RCPManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My Context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IRCPManager;->queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 45
    :goto_2a
    return-object v0

    .line 40
    :catch_2b
    move-exception v8

    .line 41
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "RCPManager"

    const-string v1, "RemoteException trying to query provider  queryProvider"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_36
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public refreshClipboard()V
    .registers 4

    .prologue
    .line 237
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 239
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->refreshClipboard()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 245
    :cond_9
    :goto_9
    return-void

    .line 240
    :catch_a
    move-exception v0

    .line 241
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to refresh clipboard."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public registerCommandExe(Landroid/content/ICommandExeCallBack;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ICommandExeCallBack;

    .prologue
    .line 89
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_23

    .line 91
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz p1, :cond_24

    .line 93
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerCommandExe(Landroid/content/ICommandExeCallBack;)V

    .line 103
    :cond_23
    :goto_23
    return-void

    .line 95
    :cond_24
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerCommandExe callback object is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_23

    .line 97
    :catch_2d
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register command executor callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23
.end method

.method public registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_f

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerExchangeData(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .line 381
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public registerMonitorCb(Landroid/content/Context;Landroid/os/IRunnableCallback;)Z
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "cb"    # Landroid/os/IRunnableCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_f

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, v0, p2}, Landroid/os/IRCPManager;->registerMonitorCb(Ljava/lang/String;Landroid/os/IRunnableCallback;)Z

    move-result v1

    .line 399
    .end local v0    # "pkgName":Ljava/lang/String;
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    .registers 7
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "mProvider"    # Landroid/content/IProviderCallBack;

    .prologue
    .line 65
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_21

    .line 67
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IRCPManager;->registerProvider(Ljava/lang/String;Landroid/content/IProviderCallBack;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 74
    :cond_21
    :goto_21
    return-void

    .line 69
    :catch_22
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register provider callback registerProvider"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method public registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    .registers 6
    .param p1, "globalContactsDir"    # Landroid/content/IRCPGlobalContactsDir;

    .prologue
    .line 106
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_21

    .line 108
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerRCPGlobalContactsDir(Landroid/content/IRCPGlobalContactsDir;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 115
    :cond_21
    :goto_21
    return-void

    .line 110
    :catch_22
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register globalContactsDir"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method public registerRCPInterface(Landroid/content/IRCPInterface;)V
    .registers 6
    .param p1, "rcpInterface"    # Landroid/content/IRCPInterface;

    .prologue
    .line 118
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_22

    .line 120
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRCPInterface(): My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerRCPInterface(Landroid/content/IRCPInterface;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_22} :catch_23

    .line 127
    :cond_22
    :goto_22
    return-void

    .line 122
    :catch_23
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string/jumbo v2, "registerRCPInterface: RemoteException trying to register rcpInterface"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_22
.end method

.method public registerSync(Landroid/content/ISyncCallBack;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/ISyncCallBack;

    .prologue
    .line 77
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_21

    .line 79
    :try_start_4
    const-string v1, "RCPManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "My Context is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->registerSync(Landroid/content/ISyncCallBack;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_21} :catch_22

    .line 86
    :cond_21
    :goto_21
    return-void

    .line 81
    :catch_22
    move-exception v0

    .line 82
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to register sync callback registerSync"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_21
.end method

.method public saveSharedSandbox(I)V
    .registers 5
    .param p1, "toUser"    # I

    .prologue
    .line 192
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 194
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->saveSharedSandbox(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 200
    :cond_9
    :goto_9
    return-void

    .line 195
    :catch_a
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to save clipboard sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public setupClipbardSandbox()V
    .registers 4

    .prologue
    .line 181
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 183
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1}, Landroid/os/IRCPManager;->setupClipbardSandbox()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 189
    :cond_9
    :goto_9
    return-void

    .line 184
    :catch_a
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to set up the sandbox."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public switchPersona(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 158
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    if-eqz v1, :cond_9

    .line 160
    :try_start_4
    iget-object v1, p0, Landroid/os/RCPManager;->mService:Landroid/os/IRCPManager;

    invoke-interface {v1, p1}, Landroid/os/IRCPManager;->switchPersona(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 166
    :cond_9
    :goto_9
    return-void

    .line 161
    :catch_a
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RCPManager"

    const-string v2, "RemoteException trying to switch persona."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method
