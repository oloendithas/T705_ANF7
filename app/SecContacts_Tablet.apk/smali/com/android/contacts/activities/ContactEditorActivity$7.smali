.class Lcom/android/contacts/activities/ContactEditorActivity$7;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->getTextWritingListener()Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;
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
    .line 1369
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$7;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextReceived(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1371
    const-string v0, "HOVERED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1372
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$7;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhaseWritingBuddyTutorialPopup(I)V

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    const-string v0, "OPENED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1374
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$7;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhaseWritingBuddyTutorialPopup(I)V

    goto :goto_0

    .line 1375
    :cond_2
    const-string v0, "TEXT_INSERTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1376
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$7;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhaseWritingBuddyTutorialPopup(I)V

    goto :goto_0

    .line 1377
    :cond_3
    const-string v0, "CLOSED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1378
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$7;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhaseWritingBuddyTutorialPopup(I)V

    goto :goto_0

    .line 1379
    :cond_4
    const-string v0, "HOVER_CANCELED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$7;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhaseWritingBuddyTutorialPopup(I)V

    goto :goto_0
.end method
