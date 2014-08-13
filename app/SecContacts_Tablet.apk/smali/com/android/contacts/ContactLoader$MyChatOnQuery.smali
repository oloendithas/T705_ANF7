.class Lcom/android/contacts/ContactLoader$MyChatOnQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyChatOnQuery"
.end annotation


# static fields
.field public static final CHATON_ID:I = 0x0

.field static final CHATON_URI:Landroid/net/Uri;

.field public static final CHATON_VIDEOCALL:I = 0x3

.field public static final CHATON_VOICECALL:I = 0x2

.field public static final CHATON_VOIP:I = 0x1

.field static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 975
    const-string v0, "content://com.sec.chaton.provider/myextrainfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactLoader$MyChatOnQuery;->CHATON_URI:Landroid/net/Uri;

    .line 977
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "voip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "voicecall_support"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "videocall_support"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactLoader$MyChatOnQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
