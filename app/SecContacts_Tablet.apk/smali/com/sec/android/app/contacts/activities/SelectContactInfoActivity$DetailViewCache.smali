.class Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
.super Ljava/lang/Object;
.source "SelectContactInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field public final data:Landroid/widget/TextView;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    const v0, 0x7f09043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->type:Landroid/widget/TextView;

    .line 873
    const v0, 0x7f0903b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->data:Landroid/widget/TextView;

    .line 874
    const v0, 0x7f09018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 875
    return-void
.end method
