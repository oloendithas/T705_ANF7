.class Lcom/android/contacts/activities/ContactEditorActivity$2$1;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/ContactEditorActivity$2;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity$2;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 490
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2$1;->this$1:Lcom/android/contacts/activities/ContactEditorActivity$2;

    iget-object v1, v1, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mEditorFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->access$200(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/editor/ContactEditorFragment;->getAddaContactTutorialManager()Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;

    move-result-object v0

    .line 492
    .local v0, "manager":Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;
    if-eqz v0, :cond_0

    .line 493
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 494
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->setVisibilityTutorialPopup(Z)V

    .line 499
    :cond_0
    :goto_0
    return v2

    .line 495
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 496
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/editor/AddaContactTutorialManager;->setVisibilityTutorialPopup(Z)V

    goto :goto_0
.end method
