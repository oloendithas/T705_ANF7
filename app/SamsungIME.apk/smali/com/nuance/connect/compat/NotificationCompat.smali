.class public Lcom/nuance/connect/compat/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/compat/NotificationCompat$Builder;,
        Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplHoneycomb;,
        Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplBase;,
        Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplHoneycomb;

    invoke-direct {v0}, Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplHoneycomb;-><init>()V

    sput-object v0, Lcom/nuance/connect/compat/NotificationCompat;->IMPL:Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/nuance/connect/compat/NotificationCompat;->IMPL:Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/nuance/connect/compat/NotificationCompat;->IMPL:Lcom/nuance/connect/compat/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
