.class Lcom/android/contacts/activities/ContactEditorActivity$2;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    const v2, 0x7f0904db

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "testView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mSaveButtonVisibility:Z
    invoke-static {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->access$100(Lcom/android/contacts/activities/ContactEditorActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Lcom/android/contacts/activities/ContactEditorActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactEditorActivity$2$1;-><init>(Lcom/android/contacts/activities/ContactEditorActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/activities/ContactEditorActivity$2;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v1}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setVisibilityTutorialPopup(Z)V

    goto :goto_0
.end method
