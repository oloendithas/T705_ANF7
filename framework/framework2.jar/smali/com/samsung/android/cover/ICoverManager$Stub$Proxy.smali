.class Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICoverManager.java"

# interfaces
.implements Lcom/samsung/android/cover/ICoverManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/ICoverManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 163
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .registers 9
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 312
    if-eqz p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 314
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2c

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    return-void

    .line 319
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    .line 277
    sget-object v3, Lcom/samsung/android/cover/CoverState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverState;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    .line 284
    .local v2, "_result":Lcom/samsung/android/cover/CoverState;
    :goto_25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    return-object v2

    .line 280
    .end local v2    # "_result":Lcom/samsung/android/cover/CoverState;
    :cond_2c
    const/4 v2, 0x0

    .restart local v2    # "_result":Lcom/samsung/android/cover/CoverState;
    goto :goto_25

    .line 284
    .end local v2    # "_result":Lcom/samsung/android/cover/CoverState;
    :catchall_2e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    const-string v0, "com.samsung.android.cover.ICoverManager"

    return-object v0
.end method

.method public getVersion()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v2

    .line 335
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    return v2

    .line 335
    .end local v2    # "_result":I
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCoverManagerDisabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 298
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    .line 301
    .local v2, "_result":Z
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    return v2

    .line 301
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 177
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 179
    if-eqz p2, :cond_2b

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    :goto_1a
    iget-object v2, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_30

    .line 190
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    return-void

    .line 184
    :cond_2b
    const/4 v2, 0x0

    :try_start_2c
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_1a

    .line 190
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 201
    if-eqz p2, :cond_2e

    .line 202
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 208
    :goto_1a
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v2, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_33

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    return-void

    .line 206
    :cond_2e
    const/4 v2, 0x0

    :try_start_2f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_1a

    .line 213
    :catchall_33
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 223
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 225
    iget-object v3, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    .line 230
    .local v2, "_result":Z
    :cond_22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    return v2

    .line 230
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public updateCoverSwitchState(ZZ)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 240
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    if-eqz p1, :cond_2b

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    if-eqz p2, :cond_2d

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v2, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2f

    .line 247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-void

    :cond_2b
    move v4, v3

    .line 241
    goto :goto_12

    :cond_2d
    move v2, v3

    .line 242
    goto :goto_17

    .line 247
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public updateCoverVerfiedState(ZZ)V
    .registers 8
    .param p1, "verified"    # Z
    .param p2, "isBoot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 254
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.samsung.android.cover.ICoverManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    if-eqz p1, :cond_2b

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    if-eqz p2, :cond_2d

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v2, p0, Lcom/samsung/android/cover/ICoverManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_2f

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    return-void

    :cond_2b
    move v4, v3

    .line 257
    goto :goto_12

    :cond_2d
    move v2, v3

    .line 258
    goto :goto_17

    .line 263
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
