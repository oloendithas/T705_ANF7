.class Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEDMProxy.java"

# interfaces
.implements Landroid/sec/enterprise/IEDMProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/enterprise/IEDMProxy$Stub;
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
    .line 1109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    iput-object p1, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1111
    return-void
.end method


# virtual methods
.method public AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    if-eqz p3, :cond_17

    const/4 v2, 0x1

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2321
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2324
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_35

    .line 2328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2331
    return-void

    .line 2328
    :catchall_35
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addCallsCount(Ljava/lang/String;)V
    .registers 7
    .param p1, "callType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 1131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1134
    return-void

    .line 1131
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1654
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1655
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1658
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1659
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1661
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1664
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1667
    return v2

    .line 1664
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1665
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addNumberOfIncomingSms()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1709
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1710
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1715
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1718
    return v2

    .line 1715
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1676
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1678
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1681
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    return v2

    .line 1681
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1726
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1727
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1732
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    return v2

    .line 1732
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2185
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2187
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2188
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2190
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_25

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2197
    return-void

    .line 2194
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1606
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1611
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    return v2

    .line 1611
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1780
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x26

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1782
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1785
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    return v2

    .line 1785
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1624
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1625
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1626
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1629
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1632
    return v2

    .line 1629
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1763
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1764
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1767
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1770
    return v2

    .line 1767
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1743
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1744
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1745
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1746
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1749
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1752
    return v2

    .line 1749
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1896
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1897
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1899
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1900
    if-eqz p1, :cond_2c

    .line 1901
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1902
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1907
    :goto_17
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1908
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    .line 1912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1915
    return-void

    .line 1905
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_17

    .line 1912
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1273
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 1279
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1282
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 1273
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 1276
    goto :goto_26

    .line 1279
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllowUserPolicyChanges()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1827
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1831
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1832
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1833
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1836
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1839
    return v2

    .line 1836
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAllowUserProfiles(ZI)Z
    .registers 10
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1848
    if-eqz p1, :cond_30

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1850
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1852
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_34

    move-result v4

    if-eqz v4, :cond_32

    .line 1855
    .local v2, "_result":Z
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1858
    return v2

    .end local v2    # "_result":Z
    :cond_30
    move v4, v3

    .line 1848
    goto :goto_12

    :cond_32
    move v2, v3

    .line 1852
    goto :goto_29

    .line 1855
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1227
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1230
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1231
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1232
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1234
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    move-result-object v2

    .line 1237
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    return-object v2

    .line 1237
    .end local v2    # "_result":[B
    :catchall_25
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2747
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2750
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2754
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    move-result-object v2

    .line 2758
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2761
    return-object v2

    .line 2758
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getApplicationNotificationMode(Z)I
    .registers 8
    .param p1, "allAdmins"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2135
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2136
    if-eqz p1, :cond_11

    const/4 v3, 0x1

    :cond_11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2137
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2a

    move-result v2

    .line 2142
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2145
    return v2

    .line 2142
    .end local v2    # "_result":I
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2276
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2278
    if-eqz p2, :cond_30

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x42

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2281
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_34

    move-result v4

    if-eqz v4, :cond_32

    .line 2284
    .local v2, "_result":Z
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2287
    return v2

    .end local v2    # "_result":Z
    :cond_30
    move v4, v3

    .line 2278
    goto :goto_15

    :cond_32
    move v2, v3

    .line 2281
    goto :goto_29

    .line 2284
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2297
    if-eqz p2, :cond_33

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2298
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2299
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x43

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2301
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_37

    move-result v4

    if-eqz v4, :cond_35

    .line 2304
    .local v2, "_result":Z
    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2307
    return v2

    .end local v2    # "_result":Z
    :cond_33
    move v4, v3

    .line 2297
    goto :goto_15

    :cond_35
    move v2, v3

    .line 2301
    goto :goto_2c

    .line 2304
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getAutomaticConnectionToWifi()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2441
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2445
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2446
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2450
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2453
    return v2

    .line 2450
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 1809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1814
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1815
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1816
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v2

    .line 1819
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1822
    return-object v2

    .line 1819
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getBrowserSettingStatus(I)Z
    .registers 8
    .param p1, "setting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1426
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1429
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1431
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1436
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1439
    return v2

    .line 1436
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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
    .line 2948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2954
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2955
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2956
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v2

    .line 2959
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2962
    return-object v2

    .line 2959
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getEmergencyCallOnly(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1641
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 1647
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1650
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 1641
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 1644
    goto :goto_26

    .line 1647
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1118
    const-string v0, "android.sec.enterprise.IEDMProxy"

    return-object v0
.end method

.method public getMinimumRequiredSecurity()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1884
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1885
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1886
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v2

    .line 1889
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1892
    return v2

    .line 1889
    .end local v2    # "_result":I
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 1792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1793
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1797
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x27

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1799
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-object v2

    .line 1802
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1805
    return-object v2

    .line 1802
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPromptCredentialsEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1863
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1866
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1867
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1869
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1872
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1875
    return v2

    .line 1872
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSealedNotificationMessagesState()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2895
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2896
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2899
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2902
    return v2

    .line 2899
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSealedState()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2877
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x63

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2879
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2882
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2885
    return v2

    .line 2882
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getSlotIdForCaller(Ljava/lang/String;)J
    .registers 9
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2990
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2992
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2994
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-wide v2

    .line 2997
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3000
    return-wide v2

    .line 2997
    .end local v2    # "_result":J
    :catchall_26
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .registers 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
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
    .line 2728
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2729
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2732
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2733
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2734
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2735
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2736
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v2

    .line 2739
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2742
    return-object v2

    .line 2739
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2740
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2694
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2695
    if-eqz p3, :cond_33

    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2696
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x59

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2698
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_37

    move-result v4

    if-eqz v4, :cond_35

    .line 2701
    .local v2, "_result":Z
    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2704
    return v2

    .end local v2    # "_result":Z
    :cond_33
    move v4, v3

    .line 2695
    goto :goto_18

    :cond_35
    move v2, v3

    .line 2698
    goto :goto_2c

    .line 2701
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2668
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2669
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2672
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2673
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2675
    if-eqz p3, :cond_33

    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2676
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x58

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2678
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_37

    move-result v4

    if-eqz v4, :cond_35

    .line 2681
    .local v2, "_result":Z
    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2684
    return v2

    .end local v2    # "_result":Z
    :cond_33
    move v4, v3

    .line 2675
    goto :goto_18

    :cond_35
    move v2, v3

    .line 2678
    goto :goto_2c

    .line 2681
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isAndroidBeamAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2651
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2655
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2656
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x57

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2658
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2661
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2664
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2655
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2658
    goto :goto_26

    .line 2661
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2662
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;IZ)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    if-eqz p3, :cond_33

    move v4, v2

    :goto_18
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2208
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2209
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2210
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_37

    move-result v4

    if-eqz v4, :cond_35

    .line 2213
    .local v2, "_result":Z
    :goto_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2216
    return v2

    .end local v2    # "_result":Z
    :cond_33
    move v4, v3

    .line 2207
    goto :goto_18

    :cond_35
    move v2, v3

    .line 2210
    goto :goto_2c

    .line 2213
    :catchall_37
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isAudioRecordAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2409
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x49

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2411
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2412
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2415
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2418
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2409
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2412
    goto :goto_26

    .line 2415
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2498
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2499
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2503
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2506
    return v2

    .line 2503
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBackupAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2237
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2238
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2241
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2242
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x40

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2244
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2248
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2251
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2242
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2245
    goto :goto_26

    .line 2248
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2249
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2566
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2571
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2574
    return v2

    .line 2571
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2548
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2549
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x51

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2551
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2554
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2557
    return v2

    .line 2554
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1343
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1345
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1346
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1350
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    return v2

    .line 1350
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBluetoothEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1409
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1412
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1413
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1414
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1415
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1418
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1421
    return v2

    .line 1418
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1419
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBluetoothLogEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2172
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2173
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2177
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2180
    return v2

    .line 2177
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1311
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1314
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1317
    return v2

    .line 1314
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2973
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2974
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2976
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2979
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2982
    return v2

    .line 2979
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2980
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3008
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3010
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3011
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 3015
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3018
    return v2

    .line 3015
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCaCertificateTrusted([BZ)Z
    .registers 10
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2386
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2389
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2391
    if-eqz p2, :cond_30

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2392
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x48

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2394
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_34

    move-result v4

    if-eqz v4, :cond_32

    .line 2397
    .local v2, "_result":Z
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2400
    return v2

    .end local v2    # "_result":Z
    :cond_30
    move v4, v3

    .line 2391
    goto :goto_15

    :cond_32
    move v2, v3

    .line 2394
    goto :goto_29

    .line 2397
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCallingCaptureEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1142
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1144
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    .line 1147
    .local v2, "_result":Z
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1150
    return v2

    .line 1147
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCameraEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1534
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1535
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1536
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 1540
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1543
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 1534
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 1537
    goto :goto_26

    .line 1540
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isChangeRequested()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1448
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v2

    .line 1453
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1456
    return v2

    .line 1453
    .end local v2    # "_result":I
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isClipboardAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1569
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1570
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 1575
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 1569
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 1572
    goto :goto_26

    .line 1575
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isClipboardShareAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x50

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2534
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2537
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    return v2

    .line 2537
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isCopyContactToSimAllowed(I)Z
    .registers 8
    .param p1, "message"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2771
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2772
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2773
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2775
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 2778
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2781
    return v2

    .line 2778
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isDateTimeChangeEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1946
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1949
    return v2

    .line 1946
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isDesktopConnectivityEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2260
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2265
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    return v2

    .line 2265
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isDiscoverableEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1379
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1380
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1381
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1384
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1387
    return v2

    .line 1384
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isGoogleCrashReportAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1970
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1971
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1974
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1975
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1976
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1977
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1980
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    return v2

    .line 1980
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .registers 10
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2024
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2025
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2028
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2029
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2030
    if-eqz p2, :cond_30

    move v4, v2

    :goto_15
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2031
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x34

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_34

    move-result v4

    if-eqz v4, :cond_32

    .line 2036
    .local v2, "_result":Z
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2039
    return v2

    .end local v2    # "_result":Z
    :cond_30
    move v4, v3

    .line 2030
    goto :goto_15

    :cond_32
    move v2, v3

    .line 2033
    goto :goto_29

    .line 2036
    :catchall_34
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIncomingMmsAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2221
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2224
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2225
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2226
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2227
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2230
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2233
    return v2

    .line 2230
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIncomingSmsAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2083
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2084
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2085
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2089
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2092
    return v2

    .line 2089
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1249
    if-eqz p1, :cond_31

    .line 1250
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1256
    :goto_19
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1257
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1258
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_36

    move-result v4

    if-eqz v4, :cond_3e

    .line 1261
    .local v2, "_result":Z
    :goto_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1264
    return v2

    .line 1254
    .end local v2    # "_result":Z
    :cond_31
    const/4 v4, 0x0

    :try_start_32
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_19

    .line 1261
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3e
    move v2, v3

    .line 1258
    goto :goto_2a
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2511
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2514
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2515
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2516
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2520
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    return v2

    .line 2520
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1689
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1692
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1693
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1695
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1698
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1701
    return v2

    .line 1698
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isLimitedDiscoverableEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1396
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1401
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1404
    return v2

    .line 1401
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1214
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_29

    move-result v3

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    .line 1219
    .local v2, "_result":Z
    :cond_22
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1222
    return v2

    .line 1219
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isMMSCaptureEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2819
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2820
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2823
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2824
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x60

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2826
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2829
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2832
    return v2

    .line 2829
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isMicrophoneEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1587
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 1593
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1596
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 1587
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 1590
    goto :goto_26

    .line 1593
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isNFCEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1548
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1551
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1552
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1554
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1557
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1560
    return v2

    .line 1557
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isNFCStateChangeAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2790
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2791
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2792
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2795
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2798
    return v2

    .line 2795
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2796
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isNonMarketAppAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1517
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1518
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1522
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1525
    return v2

    .line 1522
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isOcspCheckEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2373
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2378
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2381
    return v2

    .line 2378
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isOutgoingCallsAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1291
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1292
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1296
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    return v2

    .line 1296
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isOutgoingSmsAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2097
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2101
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x38

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2102
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2103
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2106
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2109
    return v2

    .line 2106
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z
    .registers 8
    .param p1, "package_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2915
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2916
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2917
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 2920
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    return v2

    .line 2920
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(I)Z
    .registers 8
    .param p1, "calling_Uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2928
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2931
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2932
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2933
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2934
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2935
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 2938
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2941
    return v2

    .line 2938
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2939
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isPairingEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1358
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1362
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1363
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1364
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1367
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1370
    return v2

    .line 1367
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isPowerOffAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2065
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2066
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2067
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x36

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2068
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2069
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2072
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2075
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2066
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2069
    goto :goto_26

    .line 2072
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2073
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isProfileEnabled(I)Z
    .registers 8
    .param p1, "setting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1325
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1326
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1332
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    return v2

    .line 1332
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRevocationCheckEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2352
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2355
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2356
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2357
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2358
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2361
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2364
    return v2

    .line 2361
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRoamingPushEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1465
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1470
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    return v2

    .line 1470
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isRoamingSyncEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1481
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1482
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1484
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1487
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1490
    return v2

    .line 1487
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSBeamAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2637
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2638
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x56

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2643
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2646
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2637
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2640
    goto :goto_26

    .line 2643
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSMSCaptureEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1174
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1177
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1178
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    .line 1183
    .local v2, "_result":Z
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    return v2

    .line 1183
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSVoiceAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2602
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2603
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x54

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2604
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2608
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2611
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2602
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2605
    goto :goto_26

    .line 2608
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isScreenCaptureEnabled(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2005
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2008
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2009
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x33

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2011
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2015
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2018
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2009
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2012
    goto :goto_26

    .line 2015
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1959
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1960
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1963
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    return v2

    .line 1963
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSettingsChangesAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1499
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 1505
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1508
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 1499
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 1502
    goto :goto_26

    .line 1505
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .registers 8
    .param p1, "iccId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2709
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2714
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 2719
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2722
    return v2

    .line 2719
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2155
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2156
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2157
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 2160
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2163
    return v2

    .line 2160
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2161
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isTaskManagerAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2043
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2048
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2049
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x35

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2054
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2057
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2048
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2051
    goto :goto_26

    .line 2054
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isTimaKeystoreEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3026
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3030
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3032
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 3035
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3038
    return v2

    .line 3035
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3036
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3042
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3043
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3046
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3047
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3048
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3049
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3050
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 3053
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3056
    return v2

    .line 3053
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2114
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2117
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2119
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x39

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2121
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 2124
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2127
    return v2

    .line 2124
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isUserRemoveCertificatesAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2803
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2807
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2808
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2809
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2812
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    return v2

    .line 2812
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isVideoRecordAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2423
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2426
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2427
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2428
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x4a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2430
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2433
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2436
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2427
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2430
    goto :goto_26

    .line 2433
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isWapPushAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2620
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2621
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2622
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 2625
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2628
    return v2

    .line 2625
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isWifiDirectAllowed(Z)Z
    .registers 9
    .param p1, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2476
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2479
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2480
    if-eqz p1, :cond_2d

    move v4, v2

    :goto_12
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2481
    iget-object v4, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x4d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_31

    move-result v4

    if-eqz v4, :cond_2f

    .line 2486
    .local v2, "_result":Z
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2489
    return v2

    .end local v2    # "_result":Z
    :cond_2d
    move v4, v3

    .line 2480
    goto :goto_12

    :cond_2f
    move v2, v3

    .line 2483
    goto :goto_26

    .line 2486
    :catchall_31
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isWifiStateChangeAllowed()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1992
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1994
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_27

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    .line 1997
    .local v2, "_result":Z
    :cond_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2000
    return v2

    .line 1997
    .end local v2    # "_result":Z
    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2337
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2340
    if-eqz p3, :cond_17

    const/4 v2, 0x1

    :cond_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2341
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2342
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_2c

    .line 2345
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2348
    return-void

    .line 2345
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifyCertificateRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2462
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2463
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 2466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    return-void

    .line 2466
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2859
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2860
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 2863
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2866
    return-void

    .line 2863
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .registers 8
    .param p1, "ssid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1922
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1924
    iget-object v3, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_2a

    move-result v3

    if-eqz v3, :cond_23

    const/4 v2, 0x1

    .line 1929
    .local v2, "_result":Z
    :cond_23
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    return v2

    .line 1929
    .end local v2    # "_result":Z
    :catchall_2a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .registers 11
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2582
    if-eqz p1, :cond_11

    const/4 v2, 0x1

    :cond_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2584
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2586
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2587
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_32

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2594
    return-void

    .line 2591
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1157
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1162
    if-eqz p5, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1163
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_31

    .line 1167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    return-void

    .line 1167
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2836
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2837
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2842
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2843
    if-eqz p4, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2844
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_2f

    .line 2848
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2851
    return-void

    .line 2848
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.sec.enterprise.IEDMProxy"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1197
    if-eqz p4, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    iget-object v2, p0, Landroid/sec/enterprise/IEDMProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_2e

    .line 1202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1205
    return-void

    .line 1202
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
