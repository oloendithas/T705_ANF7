.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;
.super Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
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
    .line 1156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;-><init>(I)V

    .line 1157
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 1158
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
