.class public Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;
.super Ljava/lang/Object;
.source "ImsContactEventCallback.java"


# static fields
.field public static DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "EAB-ImsIMEventCallback"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-boolean v0, Lcom/sec/android/app/contacts/eab/ImsContactEventCallback;->DBG:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 51
    const-string v0, "EAB-ImsIMEventCallback"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public onContactEvents()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method
