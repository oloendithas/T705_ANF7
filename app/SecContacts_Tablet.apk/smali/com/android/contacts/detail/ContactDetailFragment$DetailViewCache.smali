.class public Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailViewCache"
.end annotation


# instance fields
.field public final actionButton:Landroid/widget/ImageView;

.field public final actionsViewContainer:Landroid/view/View;

.field public final blacklistIndicator:Landroid/view/View;

.field public final connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

.field public final data:Landroid/widget/TextView;

.field public final directorySvcUtilsAutoSyncIndicator:Landroid/view/View;

.field public final footer:Landroid/widget/TextView;

.field public fourthActionButton:Landroid/widget/ImageView;

.field public fourthActionDivider:Landroid/view/View;

.field public fourthActionViewContainer:Landroid/view/View;

.field public final presenceIcon:Landroid/widget/ImageView;

.field public final primaryActionView:Landroid/view/View;

.field public final primaryIndicator:Landroid/view/View;

.field public rcsButtonRow:Landroid/widget/LinearLayout;

.field public rcsClickListener:Landroid/view/View$OnClickListener;

.field public rcs_ft_action:Landroid/widget/ImageView;

.field public rcs_im_action:Landroid/widget/ImageView;

.field public rcs_vt_action:Landroid/widget/ImageView;

.field public final secondaryActionButton:Landroid/widget/ImageView;

.field public final secondaryActionDivider:Landroid/view/View;

.field public final secondaryActionViewContainer:Landroid/view/View;

.field public final thirdActionButton:Landroid/widget/ImageView;

.field public final thirdActionDivider:Landroid/view/View;

.field public final thirdActionViewContainer:Landroid/view/View;

.field public final type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "primaryActionClickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "secondaryActionClickListener"    # Landroid/view/View$OnClickListener;
    .param p4, "thirdActionClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "fourthActionClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v0, 0x0

    .line 4676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4652
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionButton:Landroid/widget/ImageView;

    .line 4654
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionViewContainer:Landroid/view/View;

    .line 4656
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionDivider:Landroid/view/View;

    .line 4670
    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsClickListener:Landroid/view/View$OnClickListener;

    .line 4677
    const v0, 0x7f090153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->type:Landroid/widget/TextView;

    .line 4678
    const v0, 0x7f090002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    .line 4679
    const v0, 0x7f090159

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->footer:Landroid/widget/TextView;

    .line 4680
    const v0, 0x7f090158

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryIndicator:Landroid/view/View;

    .line 4681
    const v0, 0x7f090157

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->blacklistIndicator:Landroid/view/View;

    .line 4682
    const v0, 0x7f090155

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->presenceIcon:Landroid/widget/ImageView;

    .line 4684
    const v0, 0x7f090151

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    .line 4685
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4686
    const v0, 0x7f0900df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->primaryActionView:Landroid/view/View;

    .line 4688
    const v0, 0x7f090154

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->connectionIcon:Lcom/sec/android/app/contacts/detail/ExpandableHeightGridView;

    .line 4690
    const v0, 0x7f09015a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionButton:Landroid/widget/ImageView;

    .line 4692
    const v0, 0x7f090152

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    .line 4694
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4696
    const v0, 0x7f09015d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionButton:Landroid/widget/ImageView;

    .line 4700
    sget-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4701
    const v0, 0x7f09015f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionViewContainer:Landroid/view/View;

    .line 4702
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4703
    const v0, 0x7f090160

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionButton:Landroid/widget/ImageView;

    .line 4704
    const v0, 0x7f09015e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->fourthActionDivider:Landroid/view/View;

    .line 4709
    :cond_0
    const v0, 0x7f090156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->directorySvcUtilsAutoSyncIndicator:Landroid/view/View;

    .line 4712
    const v0, 0x7f09015b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->secondaryActionDivider:Landroid/view/View;

    .line 4714
    const v0, 0x7f09015c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    .line 4716
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionViewContainer:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4718
    const v0, 0x7f090162

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionButton:Landroid/widget/ImageView;

    .line 4721
    const v0, 0x7f090161

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->thirdActionDivider:Landroid/view/View;

    .line 4724
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4725
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsClickListener:Landroid/view/View$OnClickListener;

    .line 4726
    const v0, 0x7f090412

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    .line 4727
    const v0, 0x7f090413

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    .line 4728
    const v0, 0x7f090415

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    .line 4729
    const v0, 0x7f090417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    .line 4730
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4731
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4732
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4734
    :cond_1
    return-void
.end method
