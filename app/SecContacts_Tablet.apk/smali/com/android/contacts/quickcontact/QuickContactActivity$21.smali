.class Lcom/android/contacts/quickcontact/QuickContactActivity$21;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;


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
    .line 2757
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V
    .locals 4
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;
    .param p2, "alternate"    # Z

    .prologue
    .line 2769
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2770
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v2, 0x7f0e0432

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2791
    :goto_0
    return-void

    .line 2775
    :cond_0
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$21$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$21;ZLcom/android/contacts/quickcontact/Action;)V

    .line 2790
    .local v0, "startAppRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onItemLongClicked(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 5
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    const/4 v4, 0x1

    .line 2795
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsTutorialMode:Z
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2796
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v2, 0x7f0e0432

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2823
    :goto_0
    return v4

    .line 2801
    :cond_0
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$21$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$21;Lcom/android/contacts/quickcontact/Action;)V

    .line 2822
    .local v0, "startAppRunnable":Ljava/lang/Runnable;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onOutsideClick()V
    .locals 2

    .prologue
    .line 2763
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 2764
    .local v0, "isTransparent":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$21;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 2765
    :cond_0
    return-void

    .line 2763
    .end local v0    # "isTransparent":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
