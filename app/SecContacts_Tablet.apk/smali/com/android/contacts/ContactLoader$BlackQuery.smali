.class Lcom/android/contacts/ContactLoader$BlackQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlackQuery"
.end annotation


# static fields
.field static final BlACK_URI:Landroid/net/Uri;

.field static final COLUMNS:[Ljava/lang/String;

.field public static final REJECT_CHECKED:I = 0x1

.field public static final REJECT_NUMBER:I = 0x0

.field static final WHERE:Ljava/lang/String; = "reject_checked=1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 963
    sget-object v0, Lcom/android/contacts/interactions/AddToRejectListInteraction;->AUTO_REJECT_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/contacts/ContactLoader$BlackQuery;->BlACK_URI:Landroid/net/Uri;

    .line 964
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reject_number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "reject_checked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactLoader$BlackQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
