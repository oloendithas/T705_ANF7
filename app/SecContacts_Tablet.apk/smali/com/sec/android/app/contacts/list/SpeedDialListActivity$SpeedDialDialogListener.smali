.class public Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/list/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SpeedDialDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemChosen()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$300(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$300(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mTutorialPopupview:Lcom/sec/android/app/contacts/widget/TutorialPopupView;
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$302(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Lcom/sec/android/app/contacts/widget/TutorialPopupView;)Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$202(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;Z)Z

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->setTutorialMode(Z)V

    .line 903
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->isShowing(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 906
    :cond_2
    return-void
.end method

.method public onItemSelectorCancelled()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # getter for: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->mIsTutorialMode:Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$200(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/SpeedDialListActivity$SpeedDialDialogListener;->this$0:Lcom/sec/android/app/contacts/list/SpeedDialListActivity;

    # invokes: Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->showSpeedDialTutorialPopup()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/SpeedDialListActivity;->access$400(Lcom/sec/android/app/contacts/list/SpeedDialListActivity;)V

    .line 913
    :cond_0
    return-void
.end method
