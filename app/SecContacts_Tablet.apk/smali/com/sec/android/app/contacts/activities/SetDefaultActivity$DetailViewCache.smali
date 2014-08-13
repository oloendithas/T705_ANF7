.class Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
.super Ljava/lang/Object;
.source "SetDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionsViewContainer:Landroid/view/View;

.field public final data:Landroid/widget/TextView;

.field public final dataReverse:Landroid/widget/TextView;

.field public final icon:Landroid/widget/ImageView;

.field public final photo:Landroid/widget/ImageView;

.field public final radioBtn:Landroid/widget/RadioButton;

.field public final type:Landroid/widget/TextView;

.field public final typeReverse:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    const v0, 0x7f090449

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->photo:Landroid/widget/ImageView;

    .line 888
    const v0, 0x7f09044b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->icon:Landroid/widget/ImageView;

    .line 889
    const v0, 0x7f09043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->type:Landroid/widget/TextView;

    .line 890
    const v0, 0x7f09044a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->typeReverse:Landroid/widget/TextView;

    .line 891
    const v0, 0x7f0903b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->data:Landroid/widget/TextView;

    .line 892
    const v0, 0x7f09044c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->dataReverse:Landroid/widget/TextView;

    .line 893
    const v0, 0x7f09044d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->radioBtn:Landroid/widget/RadioButton;

    .line 895
    const v0, 0x7f090447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 897
    return-void
.end method
