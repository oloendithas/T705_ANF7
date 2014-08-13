.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewEntry"
.end annotation


# instance fields
.field protected id:J

.field protected isEnabled:Z

.field private final viewTypeForAdapter:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "viewType"    # I

    .prologue
    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    .line 1037
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    .line 1040
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->viewTypeForAdapter:I

    .line 1041
    return-void
.end method


# virtual methods
.method getId()J
    .locals 2

    .prologue
    .line 1048
    iget-wide v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->id:J

    return-wide v0
.end method

.method getViewType()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->viewTypeForAdapter:I

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 1052
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->isEnabled:Z

    return v0
.end method
