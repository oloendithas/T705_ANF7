.class public final Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroup;
.super Ljava/lang/Object;
.source "AutoGroupingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCallGroup"
.end annotation


# static fields
.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTACT_PRESENCE:Ljava/lang/String; = "contact_presence"

.field public static final CONTACT_STATUS:Ljava/lang/String; = "contact_status"

.field public static final DISPLAY_NAME_ALTERNATIVE:Ljava/lang/String; = "display_name_alt"

.field public static final DISPLAY_NAME_PRIMARY:Ljava/lang/String; = "display_name"

.field public static final INDEX_CONTACT_ID:I = 0x0

.field public static final INDEX_CONTACT_PRESENCE:I = 0x2

.field public static final INDEX_CONTACT_STATUS:I = 0x3

.field public static final INDEX_DISPLAY_NAME_PRIMARY:I = 0x1

.field public static final INDEX_LOOKUP_KEY:I = 0x6

.field public static final INDEX_PHOTO_ID:I = 0x4

.field public static final INDEX_PHOTO_THUMBNAIL_URI:I = 0x5

.field public static final INDEX_TITLENAME_ORG:I = 0x7

.field public static final LOOKUP_KEY:Ljava/lang/String; = "lookup"

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final PHOTO_THUMBNAIL_URI:Ljava/lang/String; = "photo_thumb_uri"

.field public static final PROJECTION_VIDEOCALL:[Ljava/lang/String;

.field public static final TITLENAME:Ljava/lang/String; = "data5"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_private"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "has_email"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroup;->PROJECTION_VIDEOCALL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
