.class public final enum Lcom/sec/android/app/contacts/util/SimCardID;
.super Ljava/lang/Enum;
.source "SimCardID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/util/SimCardID$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/contacts/util/SimCardID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/contacts/util/SimCardID;

.field public static final enum ID_ONE:Lcom/sec/android/app/contacts/util/SimCardID;

.field public static final enum ID_PROMPT:Lcom/sec/android/app/contacts/util/SimCardID;

.field public static final enum ID_ZERO:Lcom/sec/android/app/contacts/util/SimCardID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/sec/android/app/contacts/util/SimCardID;

    const-string v1, "ID_PROMPT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/util/SimCardID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/util/SimCardID;->ID_PROMPT:Lcom/sec/android/app/contacts/util/SimCardID;

    .line 5
    new-instance v0, Lcom/sec/android/app/contacts/util/SimCardID;

    const-string v1, "ID_ZERO"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/contacts/util/SimCardID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/util/SimCardID;->ID_ZERO:Lcom/sec/android/app/contacts/util/SimCardID;

    .line 6
    new-instance v0, Lcom/sec/android/app/contacts/util/SimCardID;

    const-string v1, "ID_ONE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/contacts/util/SimCardID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/contacts/util/SimCardID;->ID_ONE:Lcom/sec/android/app/contacts/util/SimCardID;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/contacts/util/SimCardID;

    sget-object v1, Lcom/sec/android/app/contacts/util/SimCardID;->ID_PROMPT:Lcom/sec/android/app/contacts/util/SimCardID;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/contacts/util/SimCardID;->ID_ZERO:Lcom/sec/android/app/contacts/util/SimCardID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/contacts/util/SimCardID;->ID_ONE:Lcom/sec/android/app/contacts/util/SimCardID;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/contacts/util/SimCardID;->$VALUES:[Lcom/sec/android/app/contacts/util/SimCardID;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/contacts/util/SimCardID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/sec/android/app/contacts/util/SimCardID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/SimCardID;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/contacts/util/SimCardID;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/sec/android/app/contacts/util/SimCardID;->$VALUES:[Lcom/sec/android/app/contacts/util/SimCardID;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/contacts/util/SimCardID;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .prologue
    .line 8
    sget-object v0, Lcom/sec/android/app/contacts/util/SimCardID$1;->$SwitchMap$com$sec$android$app$contacts$util$SimCardID:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 12
    const/4 v0, -0x2

    :goto_0
    return v0

    .line 9
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 10
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 11
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
