.class public interface abstract Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;
.super Ljava/lang/Object;
.source "FeatureTagGrupper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RcsContacts"
.end annotation


# static fields
.field public static final BLOCKED_URI:Landroid/net/Uri;

.field public static final BUDDIES_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.samsung.rcs.contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.samsung.rcs.contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_PHONE_NUMBER:Ljava/lang/String; = "display_phone_number"

.field public static final HAS_MULTIPLE_MSISDNS:Ljava/lang/String; = "has_multiple_msisdns"

.field public static final IS_BLOCKED:Ljava/lang/String; = "is_blocked"

.field public static final IS_NEW:Ljava/lang/String; = "is_new"

.field public static final LOOKUP_URI:Ljava/lang/String; = "lookup_uri"

.field public static final NEED_SYNC_WITH_SERVER:Ljava/lang/String; = "need_sync_with_server"

.field public static final NORMALIZED_NAME:Ljava/lang/String; = "normalized_name"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final SIP_URI:Ljava/lang/String; = "sip_uri"

.field public static final TABLE_NAME:Ljava/lang/String; = "rcs_contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "content://com.samsung.rcs.rcscontacts/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 225
    const-string v0, "content://com.samsung.rcs.rcscontacts/buddies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->BUDDIES_URI:Landroid/net/Uri;

    .line 226
    const-string v0, "content://com.samsung.rcs.rcscontacts/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->BLOCKED_URI:Landroid/net/Uri;

    return-void
.end method
