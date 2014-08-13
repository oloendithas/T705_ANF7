.class public Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;
.super Ljava/lang/Object;
.source "ServiceProviderFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields$FeatureTags;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BASE_SERVICE_PROVIDER_PATH:Ljava/lang/String; = "com.samsung.rcs.serviceprovider"

.field public static final DISPLAYNAME:Ljava/lang/String; = "displayname"

.field public static final FEATURE_TAG:Ljava/lang/String; = "feature_tag"

.field public static final ICON_ID:Ljava/lang/String; = "icon_id"

.field public static final INTENT_ACTION_CATEGORY:Ljava/lang/String; = "int_category"

.field public static final INTENT_ACTION_NAME:Ljava/lang/String; = "int_name"

.field public static final IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field public static final OPTION_DISABLE_REQUERY:Ljava/lang/String; = "disable_requery"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final RCS_STACK_STATE_URI:Landroid/net/Uri;

.field public static final SERIVCE_NAME:Ljava/lang/String; = "service_name"

.field public static final SERVICE_LOOKUP_URI:Landroid/net/Uri;

.field public static final SERVICE_OWN_URI:Landroid/net/Uri;

.field public static SERVICE_PROJECTION:[Ljava/lang/String; = null

.field public static final SIP_LOOKUP_URI:Landroid/net/Uri;

.field public static final SIP_URI:Ljava/lang/String; = "sip_uri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-string v0, "content://com.samsung.rcs.serviceprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->RCS_STACK_STATE_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://com.samsung.rcs.serviceprovider/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.samsung.rcs.serviceprovider/own"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://"

    const-string v1, "com.samsung.rcs.serviceprovider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->AUTHORITY_URI:Landroid/net/Uri;

    .line 31
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "sip"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "feature_tag"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_enabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "icon_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "int_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "int_category"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sip_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "displayname"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "original"    # Landroid/net/Uri;
    .param p1, "disableRequery"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "disable_requery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "retUri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 53
    .end local v0    # "retUri":Landroid/net/Uri;
    :cond_0
    move-object v0, p0

    .restart local v0    # "retUri":Landroid/net/Uri;
    goto :goto_0
.end method
