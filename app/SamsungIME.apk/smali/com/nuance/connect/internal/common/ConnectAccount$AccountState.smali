.class public final enum Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
.super Ljava/lang/Enum;
.source "ConnectAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/common/ConnectAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

.field public static final enum VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string v1, "UNREGISTERED"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string v1, "VERIFIED"

    invoke-direct {v0, v1, v4}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    new-instance v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    const-string v1, "PENDING_DELETE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->$VALUES:[Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    return-object v0
.end method
