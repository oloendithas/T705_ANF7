.class Ljava/nio/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private final fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 53
    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 56
    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 62
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 65
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 85
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 53
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 56
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 62
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 65
    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    .line 75
    invoke-static {v1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 76
    return-void
.end method

.method static synthetic access$000(Ljava/nio/DatagramChannelImpl;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 48
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "source"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 443
    if-nez p1, :cond_0

    .line 444
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 427
    :cond_0
    return-void
.end method

.method private checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 434
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 437
    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 330
    iget-object v10, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v10

    .line 331
    const/4 v7, 0x0

    .line 333
    .local v7, "readCount":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 334
    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 339
    if-lez v7, :cond_0

    move v8, v9

    :cond_0
    :try_start_1
    invoke-virtual {p0, v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 341
    monitor-exit v10

    move v0, v7

    :goto_0
    return v0

    .line 335
    :catch_0
    move-exception v6

    .line 339
    .local v6, "e":Ljava/io/InterruptedIOException;
    if-lez v7, :cond_1

    :goto_1
    invoke-virtual {p0, v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 337
    monitor-exit v10

    move v0, v8

    goto :goto_0

    .line 339
    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v0

    if-lez v7, :cond_2

    :goto_2
    invoke-virtual {p0, v9}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v0

    .line 342
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .restart local v6    # "e":Ljava/io/InterruptedIOException;
    :cond_1
    move v9, v8

    .line 339
    goto :goto_1

    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :cond_2
    move v9, v8

    goto :goto_2
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 9
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    const/4 v8, 0x0

    .line 221
    .local v8, "retAddr":Ljava/net/SocketAddress;
    new-instance v4, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 222
    .local v4, "receivePacket":Ljava/net/DatagramPacket;
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    .line 223
    .local v6, "oldposition":I
    const/4 v7, 0x0

    .line 225
    .local v7, "received":I
    :cond_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    move v3, v0

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v7

    .line 226
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 228
    if-lez v7, :cond_1

    .line 229
    add-int v0, v6, v7

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 231
    :cond_1
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    .line 235
    :goto_0
    return-object v8

    .line 234
    :cond_2
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 11
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .param p2, "loop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 191
    const/4 v10, 0x0

    .line 193
    .local v10, "retAddr":Ljava/net/SocketAddress;
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 194
    .local v8, "oldposition":I
    const/4 v9, 0x0

    .line 196
    .local v9, "received":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 202
    .local v6, "receivePacket":Ljava/net/DatagramPacket;
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v7

    move v5, v0

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v9

    .line 203
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 204
    if-lez v9, :cond_1

    .line 205
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    add-int v0, v8, v9

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 212
    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v10

    .line 216
    :goto_2
    return-object v10

    .line 199
    .end local v6    # "receivePacket":Ljava/net/DatagramPacket;
    :cond_2
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-direct {v6, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .restart local v6    # "receivePacket":Ljava/net/DatagramPacket;
    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 215
    :cond_4
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 395
    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, "result":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 399
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 401
    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 403
    monitor-exit v4

    return v0

    .line 401
    :catchall_0
    move-exception v1

    if-lez v0, :cond_0

    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v1

    .line 404
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_0
    move v2, v3

    .line 401
    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 4
    .param p1, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 116
    iget-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 121
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 123
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 124
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 132
    :goto_0
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    monitor-exit p0

    return-object p0

    .line 128
    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v1

    .line 125
    :catch_0
    move-exception v1

    .line 128
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    .line 156
    .end local p0    # "this":Ljava/nio/DatagramChannelImpl;
    .local v1, "this":Ljava/nio/DatagramChannelImpl;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 146
    .end local v1    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local p0    # "this":Ljava/nio/DatagramChannelImpl;
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 147
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :try_start_2
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_2
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->disconnect()V

    :cond_2
    move-object v1, p0

    .line 156
    .end local p0    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local v1    # "this":Ljava/nio/DatagramChannelImpl;
    goto :goto_0

    .line 150
    .end local v1    # "this":Ljava/nio/DatagramChannelImpl;
    .restart local p0    # "this":Ljava/nio/DatagramChannelImpl;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "errnoException":Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    .end local v0    # "errnoException":Llibcore/io/ErrnoException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    .line 409
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :goto_0
    monitor-exit p0

    return-void

    .line 412
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 1
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 418
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 272
    invoke-virtual {p1}, Ljava/nio/Buffer;->checkWritable()V

    .line 273
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 275
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 294
    :cond_0
    :goto_0
    return v2

    .line 279
    :cond_1
    const/4 v2, 0x0

    .line 280
    .local v2, "readCount":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 281
    :cond_2
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 282
    if-lez v2, :cond_0

    .line 283
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    new-array v0, v4, [B

    .line 288
    .local v0, "readArray":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 289
    .local v1, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 290
    if-lez v2, :cond_0

    .line 291
    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .param p1, "targets"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 302
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 303
    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    .line 304
    .local v6, "totalCount":I
    if-nez v6, :cond_0

    .line 305
    const-wide/16 v7, 0x0

    .line 323
    :goto_0
    return-wide v7

    .line 310
    :cond_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 312
    .local v4, "readBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v4}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 313
    .local v5, "readCount":I
    move v1, v5

    .line 314
    .local v1, "left":I
    move v0, p2

    .line 316
    .local v0, "index":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 317
    .local v3, "readArray":[B
    :goto_1
    if-lez v1, :cond_1

    .line 318
    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 319
    .local v2, "putLength":I
    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 320
    add-int/lit8 v0, v0, 0x1

    .line 321
    sub-int/2addr v1, v2

    .line 322
    goto :goto_1

    .line 323
    .end local v2    # "putLength":I
    :cond_1
    int-to-long v7, v5

    goto :goto_0
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 8
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 161
    invoke-virtual {p1}, Ljava/nio/Buffer;->checkWritable()V

    .line 162
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    .line 164
    iget-boolean v4, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v4, :cond_0

    move-object v2, v3

    .line 187
    :goto_0
    return-object v2

    .line 168
    :cond_0
    const/4 v2, 0x0

    .line 170
    .local v2, "retAddr":Ljava/net/SocketAddress;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 173
    iget-object v7, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v1

    .line 175
    .local v1, "loop":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    .line 180
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    if-eqz v2, :cond_4

    :goto_2
    invoke-virtual {p0, v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    goto :goto_0

    .line 178
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    goto :goto_1

    .line 180
    .end local v1    # "loop":Z
    :catchall_0
    move-exception v4

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz v2, :cond_2

    move v4, v5

    :goto_3
    invoke-virtual {p0, v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    move-object v2, v3

    .line 183
    goto :goto_0

    .line 185
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catchall_1
    move-exception v3

    if-eqz v2, :cond_3

    :goto_4
    invoke-virtual {p0, v5}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v3

    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_2
    move v4, v6

    goto :goto_3

    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :cond_3
    move v5, v6

    goto :goto_4

    .restart local v1    # "loop":Z
    :cond_4
    move v5, v6

    goto :goto_2
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 10
    .param p1, "source"    # Ljava/nio/ByteBuffer;
    .param p2, "socketAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 240
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 241
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    move-object v0, p2

    .line 243
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 244
    .local v0, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_0

    .line 245
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 248
    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 249
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :cond_1
    iget-object v6, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 254
    const/4 v2, 0x0

    .line 256
    .local v2, "sendCount":I
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 257
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 258
    .local v1, "oldPosition":I
    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-static {v3, p1, v7, v8, v9}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v2

    .line 259
    if-lez v2, :cond_2

    .line 260
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 262
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    if-ltz v2, :cond_4

    move v3, v4

    :goto_0
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 266
    monitor-exit v6

    return v2

    .line 264
    .end local v1    # "oldPosition":I
    :catchall_0
    move-exception v3

    if-ltz v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v3

    .line 267
    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_3
    move v4, v5

    .line 264
    goto :goto_1

    .restart local v1    # "oldPosition":I
    :cond_4
    move v3, v5

    goto :goto_0
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;

    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {v0, v1, p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    .line 97
    :cond_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    .line 347
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 348
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 349
    const/4 v0, 0x0

    .line 356
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 353
    .local v0, "writeCount":I
    if-lez v0, :cond_0

    .line 354
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .param p1, "sources"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 368
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    .line 369
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    .line 370
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 371
    const-wide/16 v8, 0x0

    .line 391
    :goto_0
    return-wide v8

    .line 373
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 374
    .local v6, "writeBuf":Ljava/nio/ByteBuffer;
    move v5, p2

    .local v5, "val":I
    :goto_1
    add-int v8, p3, p2

    if-ge v5, v8, :cond_1

    .line 375
    aget-object v4, p1, v5

    .line 376
    .local v4, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 377
    .local v2, "oldPosition":I
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 378
    invoke-virtual {v4, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 380
    .end local v2    # "oldPosition":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 381
    invoke-direct {p0, v6}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 382
    .local v3, "result":I
    move v5, p2

    .line 383
    move v7, v3

    .line 384
    .local v7, "written":I
    :goto_2
    if-lez v3, :cond_2

    .line 385
    aget-object v4, p1, v5

    .line 386
    .restart local v4    # "source":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 387
    .local v1, "gap":I
    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 388
    add-int/lit8 v5, v5, 0x1

    .line 389
    sub-int/2addr v3, v1

    .line 390
    goto :goto_2

    .line 391
    .end local v1    # "gap":I
    .end local v4    # "source":Ljava/nio/ByteBuffer;
    :cond_2
    int-to-long v8, v7

    goto :goto_0
.end method
