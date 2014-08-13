.class Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
.super Ljava/net/DatagramSocket;
.source "DatagramChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/DatagramChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatagramSocketAdapter"
.end annotation


# instance fields
.field private channelImpl:Ljava/nio/DatagramChannelImpl;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V
    .locals 0
    .param p1, "socketimpl"    # Ljava/net/DatagramSocketImpl;
    .param p2, "channelImpl"    # Ljava/nio/DatagramChannelImpl;

    .prologue
    .line 470
    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/DatagramSocketImpl;)V

    .line 471
    iput-object p2, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    .line 472
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "localAddr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 536
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    .line 537
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    .line 538
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 567
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    monitor-enter v1

    .line 568
    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    :cond_0
    :goto_0
    :try_start_2
    invoke-super {p0}, Ljava/net/DatagramSocket;->close()V

    .line 576
    monitor-exit v1

    .line 577
    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 571
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 585
    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->disconnect()Ljava/nio/channels/DatagramChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_0
    invoke-super {p0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 590
    return-void

    .line 586
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 511
    :try_start_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    # getter for: Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;
    invoke-static {v1}, Ljava/nio/DatagramChannelImpl;->access$000(Ljava/nio/DatagramChannelImpl;)Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 513
    :goto_0
    return-object v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "ex":Ljava/net/SocketException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 523
    const/4 v0, -0x1

    .line 525
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-object v0, v0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    iget-boolean v0, v0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 548
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 549
    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 1
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;->channelImpl:Ljava/nio/DatagramChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 559
    :cond_0
    invoke-super {p0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 560
    return-void
.end method
