.class public final enum Lcom/nuance/connect/util/Logger$LoggerType;
.super Ljava/lang/Enum;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/connect/util/Logger$LoggerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/connect/util/Logger$LoggerType;

.field public static final enum DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

.field public static final enum OEM:Lcom/nuance/connect/util/Logger$LoggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v2}, Lcom/nuance/connect/util/Logger$LoggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    new-instance v0, Lcom/nuance/connect/util/Logger$LoggerType;

    const-string v1, "OEM"

    invoke-direct {v0, v1, v3}, Lcom/nuance/connect/util/Logger$LoggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nuance/connect/util/Logger$LoggerType;

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->$VALUES:[Lcom/nuance/connect/util/Logger$LoggerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/connect/util/Logger$LoggerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/util/Logger$LoggerType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/connect/util/Logger$LoggerType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->$VALUES:[Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/connect/util/Logger$LoggerType;

    return-object v0
.end method
