.class Lcom/android/contacts/quickcontact/QuickContactActivity$20;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 2702
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$20;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2705
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 2706
    .local v0, "actionView":Lcom/android/contacts/quickcontact/CheckableImageView;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .local v3, "tag":Ljava/lang/Object;
    move-object v1, v3

    .line 2707
    check-cast v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    .line 2708
    .local v1, "fd":Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$20;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;

    move-result-object v4

    iget-object v5, v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 2709
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$20;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2711
    return-void
.end method
