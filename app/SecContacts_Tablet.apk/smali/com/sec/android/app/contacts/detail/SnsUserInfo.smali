.class public Lcom/sec/android/app/contacts/detail/SnsUserInfo;
.super Ljava/lang/Object;
.source "SnsUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;
    }
.end annotation


# static fields
.field public static final REQUEST_PERMISSION:Ljava/lang/String; = "com.sec.android.app.sns3.permission.REQUEST_PEOPLE_LOOKUP"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public company:Ljava/lang/String;

.field public headline:Ljava/lang/String;

.field public memberId:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public positionTitle:Ljava/lang/String;

.field public profileIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/sec/android/app/contacts/detail/SnsUserInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public getAccountIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "accountIcon":Landroid/graphics/drawable/Drawable;
    const-string v1, "linkedIn"

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/SnsUserInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    :cond_0
    return-object v0
.end method
