.class public Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;
.super Ljava/lang/Object;
.source "RcsContactProviderFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields$Capabilities;
    }
.end annotation


# static fields
.field public static final BASE_SERVICE_PROVIDER_PATH:Ljava/lang/String; = "com.samsung.rcs.contacts"

.field static final CACHE_DISPLAYNAME:Ljava/lang/String; = "displayname_cache"

.field static final CACHE_DISPLAYNAME_WITH_PATH:Ljava/lang/String; = "cache.URI_TO_DISPLAYNAME.displayname_cache"

.field static final CACHE_NAME:Ljava/lang/String; = "cache"

.field static final CACHE_SIP_URI:Ljava/lang/String; = "sip_uri_cache"

.field static final CACHE_SIP_URI_WITH_PATH:Ljava/lang/String; = "cache.URI_TO_DISPLAYNAME.sip_uri_cache"

.field static final CAPABILITIES:Ljava/lang/String; = "capabilities"

.field public static CAP_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTACT_CAP_LOOKUP_URI:Landroid/net/Uri;

.field static final CONTACT_LOOKUP_KEY:Ljava/lang/String; = "contact_lookup_key"

.field static final TABLE_URI_TO_DISPLAYNAME:Ljava/lang/String; = "cache.URI_TO_DISPLAYNAME"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const-string v0, "content://com.samsung.rcs.contacts/capabilities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;->CONTACT_CAP_LOOKUP_URI:Landroid/net/Uri;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "capabilities"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_lookup_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;->CAP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method
