.class Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;
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
    .line 271
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TAB"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, "pickerIntent":Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v1, "from_speed_dial"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 277
    const-string v1, "has_result"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 278
    const-string v1, "index"

    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$000()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const-string v1, "actionbar_title"

    const-string v2, "Speed dial setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mIsTutorialMode:Z
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/widget/TutorialPopupView;->hide()V

    .line 282
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mHelpDialog:Lcom/sec/android/app/contacts/widget/TutorialPopupView;

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tutorial_mode"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    const-string v1, "tutorial_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    :cond_0
    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$200()Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 287
    # getter for: Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    invoke-static {}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->access$200()Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;->onItemChosen()V

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$5;->this$0:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 290
    return-void
.end method
