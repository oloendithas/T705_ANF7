.class Ljava/security/Security$SecurityDoor;
.super Ljava/lang/Object;
.source "Security.java"

# interfaces
.implements Lorg/apache/harmony/security/fortress/SecurityAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/Security;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecurityDoor"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/Security$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/security/Security$1;

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/security/Security$SecurityDoor;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliases(Ljava/security/Provider$Service;)Ljava/util/List;
    .locals 1
    .param p1, "s"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/Provider$Service;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    invoke-virtual {p1}, Ljava/security/Provider$Service;->getAliases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/security/Provider;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 1
    .param p1, "p"    # Ljava/security/Provider;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 406
    invoke-virtual {p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method

.method public renumProviders()V
    .locals 0

    .prologue
    .line 396
    # invokes: Ljava/security/Security;->renumProviders()V
    invoke-static {}, Ljava/security/Security;->access$100()V

    .line 397
    return-void
.end method
