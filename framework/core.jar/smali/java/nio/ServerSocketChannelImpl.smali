.class final Ljava/nio/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
    }
.end annotation


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private final socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p1, "sp"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-direct {v0, p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Ljava/nio/ServerSocketChannelImpl;)V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    .line 53
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getImpl$()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    .line 54
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ServerSocketChannelImpl;)Z
    .locals 1
    .param p0, "x0"    # Ljava/nio/ServerSocketChannelImpl;

    .prologue
    .line 41
    iget-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Ljava/nio/ServerSocketChannelImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return p1
.end method

.method private shouldThrowSocketTimeoutExceptionFromAccept(Ljava/net/SocketTimeoutException;)Z
    .locals 4
    .param p1, "e"    # Ljava/net/SocketTimeoutException;

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 94
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Llibcore/io/ErrnoException;

    if-eqz v2, :cond_0

    .line 95
    check-cast v0, Llibcore/io/ErrnoException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EAGAIN:I

    if-ne v2, v3, :cond_0

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 64
    :cond_0
    iget-boolean v2, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    if-nez v2, :cond_1

    .line 65
    new-instance v2, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v2

    .line 69
    :cond_1
    new-instance v1, Ljava/nio/SocketChannelImpl;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 71
    .local v1, "result":Ljava/nio/SocketChannelImpl;
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 72
    iget-object v3, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v2, v1}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 86
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .end local v1    # "result":Ljava/nio/SocketChannelImpl;
    :goto_0
    return-object v1

    .line 75
    .restart local v1    # "result":Ljava/nio/SocketChannelImpl;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/net/SocketTimeoutException;
    :try_start_3
    invoke-direct {p0, v0}, Ljava/nio/ServerSocketChannelImpl;->shouldThrowSocketTimeoutExceptionFromAccept(Ljava/net/SocketTimeoutException;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    throw v0

    .line 82
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v2

    .line 86
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

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
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 107
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
    .line 103
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 104
    return-void
.end method

.method public socket()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    return-object v0
.end method
