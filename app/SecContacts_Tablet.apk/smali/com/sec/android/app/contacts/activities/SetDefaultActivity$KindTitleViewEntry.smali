.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;
.super Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindTitleViewEntry"
.end annotation


# instance fields
.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 1238
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;-><init>(I)V

    .line 1239
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 1240
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
