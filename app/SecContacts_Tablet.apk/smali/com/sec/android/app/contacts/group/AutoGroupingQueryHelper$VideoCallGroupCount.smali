.class public final Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroupCount;
.super Ljava/lang/Object;
.source "AutoGroupingQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCallGroupCount"
.end annotation


# static fields
.field public static final COUNTLIST:Ljava/lang/String; = "countlist"

.field public static final INDEX_COUNTLIST:I = 0x1

.field public static final INDEX_TITLENAME:I = 0x0

.field public static final PROJECTION_VIDEOCALL_GROUPCNT:[Ljava/lang/String;

.field public static final TITLENAME:Ljava/lang/String; = "data5"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "countlist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/AutoGroupingQueryHelper$VideoCallGroupCount;->PROJECTION_VIDEOCALL_GROUPCNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
