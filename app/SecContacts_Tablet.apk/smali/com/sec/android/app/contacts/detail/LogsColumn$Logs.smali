.class public final Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;
.super Ljava/lang/Object;
.source "LogsColumn.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/LogsColumn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Logs"
.end annotation


# static fields
.field public static final AUTOREJECTED_TYPE:I = 0x6

.field public static final BLOCKED_TYPE:I = 0x4

.field public static final CACHED_NAME:Ljava/lang/String; = "name"

.field public static final CACHED_NAME_REVERSED:Ljava/lang/String; = "name_reversed"

.field public static final CACHED_NUMBER_LABEL:Ljava/lang/String; = "numberlabel"

.field public static final CACHED_NUMBER_TYPE:Ljava/lang/String; = "numbertype"

.field public static final CONTACT_ID:Ljava/lang/String; = "contactid"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final INCOMING_TYPE:I = 0x1

.field public static final LOG_TYPE:Ljava/lang/String; = "logtype"

.field public static final LOG_TYPE_CALL:I = 0x64

.field public static final LOG_TYPE_EMAIL:I = 0x190

.field public static final LOG_TYPE_IM:I = 0x2bc

.field public static final LOG_TYPE_MMS:I = 0xc8

.field public static final LOG_TYPE_SMS:I = 0x12c

.field public static final LOG_TYPE_SNS:I = 0x258

.field public static final LOG_TYPE_VIDEO:I = 0x1f4

.field public static final LOG_TYPE_VOICEMAIL:I = 0x384

.field public static final LOG_TYPE_VOIP:I = 0x320

.field public static final LOG_TYPE_VOLTE:I = 0x3e8

.field public static final MESSAGE_CONTENT:Ljava/lang/String; = "m_content"

.field public static final MESSAGE_ID:Ljava/lang/String; = "messageid"

.field public static final MESSAGE_SUBJECT:Ljava/lang/String; = "m_subject"

.field public static final MISSED_TYPE:I = 0x3

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final OUTGOING_TYPE:I = 0x2

.field public static final REJECTED_TYPE:I = 0x5

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
