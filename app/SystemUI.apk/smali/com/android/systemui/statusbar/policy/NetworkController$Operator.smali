.class final enum Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
.super Ljava/lang/Enum;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkController$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum AIO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum BMC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum CHC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum CMCC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum CU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum DCM:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum KDDI:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum LRA:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum TLS:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum VMU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum ZIG:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum ZTM:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

.field public static final enum ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 314
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "ATT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 315
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "AIO"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->AIO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 316
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "ZIG"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZIG:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 317
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "TMO"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 318
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "VZW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 319
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "SPR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 320
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "BMC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 321
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "TLS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 322
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "SKT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 323
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "KT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 324
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "LGT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 325
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "CMCC"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 326
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "CHC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CHC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 327
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "CU"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 328
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "DCM"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->DCM:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "KDDI"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KDDI:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 330
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "ZVV"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 331
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "ZTM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZTM:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 332
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "LRA"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LRA:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 333
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    const-string v1, "VMU"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VMU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    .line 312
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->AIO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZIG:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->BMC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TLS:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CMCC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CHC:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->CU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->DCM:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KDDI:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZTM:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LRA:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VMU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

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
    .line 312
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    .locals 2
    .param p0, "Str"    # Ljava/lang/String;

    .prologue
    .line 345
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 347
    :goto_0
    return-object v1

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->OPEN:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 312
    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    .locals 1

    .prologue
    .line 312
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->$VALUES:[Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    return-object v0
.end method


# virtual methods
.method public isKoreanOperator()Z
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SKT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->KT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNorthAmericanOperator()Z
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ATT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->TMO:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VZW:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->SPR:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->VMU:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
