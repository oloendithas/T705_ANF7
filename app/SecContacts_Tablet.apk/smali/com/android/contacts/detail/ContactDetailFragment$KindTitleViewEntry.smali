.class Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;
.super Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KindTitleViewEntry"
.end annotation


# instance fields
.field private mIsNoSync:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 4223
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 4220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    .line 4224
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 4225
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "isNoSync"    # Z

    .prologue
    .line 4229
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;-><init>(I)V

    .line 4220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    .line 4230
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    .line 4231
    iput-boolean p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    .line 4232
    return-void
.end method


# virtual methods
.method public getIsNoSync()Z
    .locals 1

    .prologue
    .line 4240
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mIsNoSync:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4235
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method
