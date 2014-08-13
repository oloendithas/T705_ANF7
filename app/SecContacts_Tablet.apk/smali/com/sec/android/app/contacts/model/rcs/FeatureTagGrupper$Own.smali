.class public interface abstract Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;
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
    name = "Own"
.end annotation


# static fields
.field public static final AVATAR_URI:Ljava/lang/String; = "avatar_uri"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.samsung.rcs.contact.own"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final HOMEPAGE:Ljava/lang/String; = "homepage"

.field public static final HYPER:Ljava/lang/String; = "hyper"

.field public static final MOOD_TEXT:Ljava/lang/String; = "mood_text"

.field public static final SIP_URI:Ljava/lang/String; = "sip_uri"

.field public static final TABLE_NAME:Ljava/lang/String; = "own"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "content://com.samsung.rcs.presence/own"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
