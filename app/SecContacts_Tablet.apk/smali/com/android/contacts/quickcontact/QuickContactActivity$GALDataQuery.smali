.class public interface abstract Lcom/android/contacts/quickcontact/QuickContactActivity$GALDataQuery;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GALDataQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x1

.field public static final ACCOUNT_TYPE:I = 0x2

.field public static final CHAT_CAPABILITY:I = 0x10

.field public static final CONTACT_CHAT_CAPABILITY:I = 0x9

.field public static final CONTACT_PRESENCE:I = 0x8

.field public static final DATA_SET:I = 0x3

.field public static final DISPLAY_NAME:I = 0x6

.field public static final DISPLAY_NAME_ALT:I = 0x7

.field public static final GAL_COMPANY:I = 0x28

.field public static final GAL_DISPLAY_NAME:I = 0x25

.field public static final GAL_PICTURE_DATA:I = 0x26

.field public static final GAL_TITLE:I = 0x27

.field public static final IS_PRIMARY:I = 0x13

.field public static final IS_SUPER_PRIMARY:I = 0x14

.field public static final MIMETYPE:I = 0x12

.field public static final PRESENCE:I = 0xf

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final RES_PACKAGE:I = 0x11

.field public static final SOURCE_ID:I = 0x4

.field public static final STARRED:I = 0x5

.field public static final STATUS:I = 0xa

.field public static final STATUS_ICON:I = 0xc

.field public static final STATUS_LABEL:I = 0xd

.field public static final STATUS_RES_PACKAGE:I = 0xb

.field public static final STATUS_TIMESTAMP:I = 0xe

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2887
    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "status_res_package"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "status_icon"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "status_label"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "status_ts"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "res_package"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pictureData"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "company"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity$GALDataQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
