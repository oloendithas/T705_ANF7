.class Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;
.super Ljava/lang/Object;
.source "SpeedDialDialogFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/widget/TutorialPopupView$OnIndicatorTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->showSpeedDialTutorialPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "createIntent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "finishActivityOnSaveCompleted"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    const-string v1, "has_result"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const-string v1, "is_speed_dial"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    const-string v1, "index"

    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$000()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 260
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tutorial_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const-string v1, "tutorial_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    :cond_0
    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$200()Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 265
    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$200()Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;->onItemChosen()V

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$4;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 268
    return-void
.end method
