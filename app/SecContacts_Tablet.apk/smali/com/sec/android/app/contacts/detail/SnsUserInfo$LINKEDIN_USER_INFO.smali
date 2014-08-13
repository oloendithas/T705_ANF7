.class public Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;
.super Ljava/lang/Object;
.source "SnsUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/detail/SnsUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LINKEDIN_USER_INFO"
.end annotation


# static fields
.field public static final COMPANY:I = 0x3

.field public static final HEADLINE:I = 0x2

.field public static final LOOKUP_URI:Landroid/net/Uri;

.field public static final MEMBER_ID:I = 0x0

.field public static final MIME_TYPE:Ljava/lang/String; = "linkedIn"

.field public static final NAME:I = 0x1

.field public static final POSITION_TITLE:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final USER_INFO_REFRESH_ACTION:Ljava/lang/String; = "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_REQUESTED"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "content://com.sec.android.app.sns3.sp.linkedin/people_lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->LOOKUP_URI:Landroid/net/Uri;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "member_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "formatted_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "headline"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "position_company_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "position_title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProfileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "memberId"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkedin://profile/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?referrer_partner=samsung_galaxy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method public static refreshUserInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.sns.profile.ACTION_LINKEDIN_PEOPLE_LOOKUP_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "email"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "com.sec.android.app.sns3.permission.REQUEST_PEOPLE_LOOKUP"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 95
    return-void
.end method
