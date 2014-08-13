.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final connectLock:Ljava/lang/Object;

.field final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private localAddress:Ljava/net/InetAddress;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 44
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 57
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 178
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 208
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 226
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 249
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 250
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 6
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 274
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 275
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 276
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 3
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 44
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 81
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 85
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 86
    return-void

    .line 85
    :cond_2
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/net/Proxy;)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1
    .param p1, "impl"    # Ljava/net/SocketImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 42
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 44
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 289
    return-void
.end method

.method private cacheLocalAddress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 952
    return-void
.end method

.method private checkDestination(Ljava/net/InetAddress;I)V
    .locals 3
    .param p1, "destAddr"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I

    .prologue
    .line 301
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 302
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_1
    return-void
.end method

.method private checkOpenAndCreate(Z)V
    .locals 3
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 641
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 644
    :cond_0
    if-nez p1, :cond_1

    .line 645
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 646
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_1
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_3

    .line 672
    :cond_2
    :goto_0
    return-void

    .line 659
    :cond_3
    monitor-enter p0

    .line 660
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_4

    .line 661
    monitor-exit p0

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 664
    :cond_4
    :try_start_1
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    .line 671
    monitor-exit p0

    goto :goto_0

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/net/SocketException;
    throw v0

    .line 667
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .param p0, "fac"    # Ljava/net/SocketImplFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    const-class v1, Ljava/net/Socket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 471
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 472
    monitor-exit v1

    return-void
.end method

.method private startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .locals 5
    .param p1, "dstAddress"    # Ljava/net/InetAddress;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 554
    if-ltz p4, :cond_0

    const v2, 0xffff

    if-le p4, v2, :cond_1

    .line 555
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_1
    if-nez p3, :cond_4

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 559
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    .line 561
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    if-eqz p5, :cond_2

    :try_start_1
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v2

    if-nez v2, :cond_3

    .line 564
    :cond_2
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 566
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    .line 567
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 568
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z

    .line 569
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    :try_start_2
    monitor-exit p0

    .line 575
    return-void

    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_4
    move-object v0, p3

    .line 558
    goto :goto_0

    .line 570
    .restart local v0    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    .line 572
    throw v1

    .line 574
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V
    .locals 8
    .param p1, "dstName"    # Ljava/lang/String;
    .param p2, "dstPort"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .param p5, "streaming"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    .line 114
    .local v6, "dstAddresses":[Ljava/net/InetAddress;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 115
    aget-object v1, v6, v7

    .line 117
    .local v1, "dstAddress":Ljava/net/InetAddress;
    :try_start_0
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 118
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 114
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "dstAddress":Ljava/net/InetAddress;
    :cond_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v6, v0

    .line 127
    .restart local v1    # "dstAddress":Ljava/net/InetAddress;
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 128
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    goto :goto_1
.end method

.method private usingSocks()Z
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accepted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 947
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    .line 948
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 7
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 742
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 743
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 744
    new-instance v4, Ljava/net/BindException;

    const-string v5, "Socket is already bound"

    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 747
    :cond_0
    const/4 v3, 0x0

    .line 748
    .local v3, "port":I
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 749
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz p1, :cond_3

    .line 750
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_1

    .line 751
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v2, p1

    .line 754
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 755
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 756
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 758
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 761
    .end local v2    # "inetAddr":Ljava/net/InetSocketAddress;
    :cond_3
    monitor-enter p0

    .line 763
    :try_start_0
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 764
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 765
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    :try_start_1
    monitor-exit p0

    .line 771
    return-void

    .line 766
    :catch_0
    move-exception v1

    .line 767
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 768
    throw v1

    .line 770
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 316
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 317
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 787
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 8
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 808
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 809
    if-gez p2, :cond_0

    .line 810
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "timeout < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 812
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 813
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 815
    :cond_1
    if-nez p1, :cond_2

    .line 816
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "remoteAddr == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 819
    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_3

    .line 820
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, p1

    .line 823
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 825
    .local v2, "inetAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, "addr":Ljava/net/InetAddress;
    if-nez v0, :cond_4

    .line 826
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 828
    :cond_4
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 830
    .local v3, "port":I
    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 831
    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 833
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-nez v4, :cond_6

    .line 838
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v4

    if-nez v4, :cond_5

    .line 839
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 841
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 843
    :cond_6
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 844
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    .line 845
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    :try_start_1
    monitor-exit v5

    .line 851
    return-void

    .line 846
    :catch_0
    move-exception v1

    .line 847
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 848
    throw v1

    .line 850
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 341
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 352
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    const/4 v0, -0x1

    .line 370
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 680
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    .line 683
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 903
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 904
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 383
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 394
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 420
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 693
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const/4 v0, 0x0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 887
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 888
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 427
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 428
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 405
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 407
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 408
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 409
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 411
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 435
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 436
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 443
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 444
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 922
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 923
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 861
    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return v0
.end method

.method public sendUrgentData(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 937
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .param p1, "keepAlive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 453
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 455
    :cond_0
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .param p1, "oobinline"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 895
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 896
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 897
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 989
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 489
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 490
    if-ge p1, v1, :cond_0

    .line 491
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 493
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .param p1, "reuse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 879
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 880
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 881
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 478
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 479
    if-ge p1, v1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    monitor-exit p0

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .param p1, "on"    # Z
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 503
    if-eqz p1, :cond_0

    if-gez p2, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_0
    if-eqz p1, :cond_1

    .line 507
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 519
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 520
    if-gez p1, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 523
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    monitor-exit p0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 530
    invoke-direct {p0, v2}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 531
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 532
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 911
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 912
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 913
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value doesn\'t fit in an unsigned byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 915
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 916
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 610
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 612
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 629
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 631
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    const-string v0, "Socket[unconnected]"

    .line 592
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
