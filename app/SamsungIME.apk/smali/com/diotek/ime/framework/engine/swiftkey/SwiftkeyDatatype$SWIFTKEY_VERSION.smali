.class final enum Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;
.super Ljava/lang/Enum;
.source "SwiftkeyDatatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SWIFTKEY_VERSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

.field public static final enum SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

.field public static final enum SWIFTKEY_VERSION_1_4:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

.field public static final enum SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

.field public static final enum SWIFTKEY_VERSION_NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    const-string v1, "SWIFTKEY_VERSION_NONE"

    invoke-direct {v0, v1, v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 46
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    const-string v1, "SWIFTKEY_VERSION_1_3"

    invoke-direct {v0, v1, v3}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 47
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    const-string v1, "SWIFTKEY_VERSION_1_4"

    invoke-direct {v0, v1, v4}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 48
    new-instance v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    const-string v1, "SWIFTKEY_VERSION_1_5"

    invoke-direct {v0, v1, v5}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_NONE:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_3:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_4:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->SWIFTKEY_VERSION_1_5:Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->$VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    return-object v0
.end method

.method public static values()[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;->$VALUES:[Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyDatatype$SWIFTKEY_VERSION;

    return-object v0
.end method
