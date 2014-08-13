.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private cipherSuites:[Ljava/lang/String;

.field private needClientAuth:Z

.field private protocols:[Ljava/lang/String;

.field private wantClientAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .param p2, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    return v0
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 81
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "needClientAuth"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    .line 122
    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    .line 104
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "wantClientAuth"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    .line 140
    return-void
.end method
