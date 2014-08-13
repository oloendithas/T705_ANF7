.class public Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeedDialDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 2778
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChosen()V
    .locals 2

    .prologue
    .line 2781
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2782
    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3600()Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2783
    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3600()Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 2784
    const/4 v0, 0x0

    # setter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3602(Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3502(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z

    .line 2787
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->setTutorialMode(Z)V

    .line 2789
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2790
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 2792
    :cond_2
    return-void
.end method

.method public onItemSelectorCancelled()V
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->showSpeedDialTutorialPopup()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    .line 2799
    :cond_0
    return-void
.end method
