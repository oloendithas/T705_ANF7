.class final Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;
.super Ljava/lang/Object;
.source "InteractionEmergencyMessageActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmergencyFragmentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$1;

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;-><init>(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onShowCount(I)V
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # setter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mContactsCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$102(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;I)I

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I
    invoke-static {v4}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$200(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mMaxContactsNumber:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$200(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$300(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setAddContactButtonEnabled(Z)V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$400(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mDeleteMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$400(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)Landroid/view/MenuItem;

    move-result-object v3

    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 278
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity$EmergencyFragmentListener;->this$0:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;

    # getter for: Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->mInteractionEmergencyMessageFragment:Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;
    invoke-static {v0}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;->access$300(Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageActivity;)Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/emergency/InteractionEmergencyMessageFragment;->setAddContactButtonEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 276
    goto :goto_1
.end method
