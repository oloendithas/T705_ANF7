.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;
.super Ljava/lang/Object;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberItem"
.end annotation


# instance fields
.field private mContactId:I

.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;ILjava/lang/String;)V
    .locals 0
    .param p2, "type"    # I
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 7725
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7726
    iput p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->type:I

    .line 7727
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mNumber:Ljava/lang/String;

    .line 7728
    return-void
.end method


# virtual methods
.method public getContactID()I
    .locals 1

    .prologue
    .line 7739
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mContactId:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7735
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 7731
    iget v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$NumberItem;->type:I

    return v0
.end method
