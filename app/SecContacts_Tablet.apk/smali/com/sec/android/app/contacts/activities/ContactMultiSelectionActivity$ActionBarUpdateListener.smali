.class final Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;
.super Ljava/lang/Object;
.source "ContactMultiSelectionActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/list/OnActionBarUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionBarUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$1;

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;-><init>(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    return-void
.end method


# virtual methods
.method public onDoneButtonStateUpdated(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateDoneButtonState(Z)V
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$400(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;Z)V

    .line 580
    return-void
.end method

.method public onTitleUpdated(II)V
    .locals 1
    .param p1, "selectedItemCount"    # I
    .param p2, "totalItemCount"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mSelectedItemCount:I
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$502(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # setter for: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->mTotalItemCount:I
    invoke-static {v0, p2}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$602(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;I)I

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity$ActionBarUpdateListener;->this$0:Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->updateActionBarTitleInTwoPaneMode()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;->access$700(Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;)V

    .line 590
    :cond_0
    return-void
.end method
