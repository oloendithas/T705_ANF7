.class final enum Lcom/android/keyguard/CarrierText$StatusMode;
.super Ljava/lang/Enum;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keyguard/CarrierText$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum Normal:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 73
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "NetworkLocked"

    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 74
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "PersoLocked"

    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 75
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v6}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 76
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v7}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 77
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimPukLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 78
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimLocked"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 79
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimPermDisabled"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 80
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimNotReady"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 81
    new-instance v0, Lcom/android/keyguard/CarrierText$StatusMode;

    const-string v1, "SimIoError"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText$StatusMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/keyguard/CarrierText$StatusMode;

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->NetworkLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/keyguard/CarrierText$StatusMode;->SimIoError:Lcom/android/keyguard/CarrierText$StatusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierText$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/CarrierText$StatusMode;
    .registers 2

    .prologue
    .line 71
    const-class v0, Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/keyguard/CarrierText$StatusMode;
    .registers 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/keyguard/CarrierText$StatusMode;->$VALUES:[Lcom/android/keyguard/CarrierText$StatusMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/CarrierText$StatusMode;

    return-object v0
.end method
