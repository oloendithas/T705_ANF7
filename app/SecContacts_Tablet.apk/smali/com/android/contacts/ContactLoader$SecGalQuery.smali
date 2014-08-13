.class Lcom/android/contacts/ContactLoader$SecGalQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecGalQuery"
.end annotation


# static fields
.field static final COLUMNS:[Ljava/lang/String;

.field public static final GAL_ALIAS:I = 0xa

.field public static final GAL_COMPANY:I = 0x7

.field public static final GAL_DISPLAY_NAME:I = 0x0

.field public static final GAL_EMAIL_ADDRESS:I = 0x1

.field public static final GAL_FIRST_NAME:I = 0x5

.field public static final GAL_HOME_PHONE:I = 0x3

.field public static final GAL_LAST_NAME:I = 0x6

.field public static final GAL_MOBILE_PHONE:I = 0x4

.field public static final GAL_OFFICE:I = 0x9

.field public static final GAL_PICTURE_DATA:I = 0xb

.field public static final GAL_TITLE:I = 0x8

.field public static final GAL_WORK_PHONE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 890
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "workPhone"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "homePhone"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mobilePhone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "firstName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lastName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "office"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "alias"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "pictureData"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactLoader$SecGalQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
