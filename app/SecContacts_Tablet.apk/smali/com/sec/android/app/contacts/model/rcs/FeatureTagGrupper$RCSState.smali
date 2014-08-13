.class public interface abstract Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;
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
    name = "RCSState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState$State;
    }
.end annotation


# static fields
.field public static final AVATAR_URI:Ljava/lang/String; = "avatar_uri"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.samsung.rcs.contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.samsung.rcs.contact"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CYWORLD:Ljava/lang/String; = "cyworld"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NAME_LOOKUP_URI:Landroid/net/Uri;

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final HOMEPAGE:Ljava/lang/String; = "homepage"

.field public static final HYPER:Ljava/lang/String; = "hyper"

.field public static final MOOD_TEXT:Ljava/lang/String; = "mood_text"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final PRESENCE_CONTENT_URI:Landroid/net/Uri;

.field public static final SIP_URI:Ljava/lang/String; = "sip_uri"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final TABLE_NAME:Ljava/lang/String; = "rcs_state"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TWITTER:Ljava/lang/String; = "twitter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "content://com.samsung.rcs.contacts/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->CONTENT_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://com.samsung.rcs.presence/rcs_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->PRESENCE_CONTENT_URI:Landroid/net/Uri;

    .line 80
    const-string v0, "content://com.samsung.rcs.contacts/displayname/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->DISPLAY_NAME_LOOKUP_URI:Landroid/net/Uri;

    return-void
.end method
