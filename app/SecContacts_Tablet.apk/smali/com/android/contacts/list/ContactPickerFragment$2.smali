.class Lcom/android/contacts/list/ContactPickerFragment$2;
.super Ljava/lang/Object;
.source "ContactPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/ContactPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/ContactPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/ContactPickerFragment;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Z

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    # getter for: Lcom/android/contacts/list/ContactPickerFragment;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/android/contacts/list/ContactPickerFragment;->access$000(Lcom/android/contacts/list/ContactPickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    # getter for: Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactPickerFragment;->access$100(Lcom/android/contacts/list/ContactPickerFragment;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    # invokes: Lcom/android/contacts/list/ContactPickerFragment;->showUpdateExistingTutorialPopup()V
    invoke-static {v0}, Lcom/android/contacts/list/ContactPickerFragment;->access$200(Lcom/android/contacts/list/ContactPickerFragment;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    # setter for: Lcom/android/contacts/list/ContactPickerFragment;->mIsSearchFocus:Z
    invoke-static {v0, p2}, Lcom/android/contacts/list/ContactPickerFragment;->access$302(Lcom/android/contacts/list/ContactPickerFragment;Z)Z

    .line 568
    if-eqz p2, :cond_2

    .line 569
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    # getter for: Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactPickerFragment;->access$100(Lcom/android/contacts/list/ContactPickerFragment;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setVisibility(I)V

    .line 574
    :cond_1
    :goto_0
    return-void

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment$2;->this$0:Lcom/android/contacts/list/ContactPickerFragment;

    # getter for: Lcom/android/contacts/list/ContactPickerFragment;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/android/contacts/list/ContactPickerFragment;->access$100(Lcom/android/contacts/list/ContactPickerFragment;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->setVisibility(I)V

    goto :goto_0
.end method
