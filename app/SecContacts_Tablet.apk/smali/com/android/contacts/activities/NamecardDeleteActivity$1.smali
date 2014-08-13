.class Lcom/android/contacts/activities/NamecardDeleteActivity$1;
.super Ljava/lang/Object;
.source "NamecardDeleteActivity.java"

# interfaces
.implements Lcom/android/contacts/list/DefaultContactBrowseListFragment$DeleteContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/NamecardDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/NamecardDeleteActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$1;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedCountChanged(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 74
    # setter for: Lcom/android/contacts/activities/NamecardDeleteActivity;->mSelectedCount:I
    invoke-static {p1}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$002(I)I

    .line 75
    iget-object v0, p0, Lcom/android/contacts/activities/NamecardDeleteActivity$1;->this$0:Lcom/android/contacts/activities/NamecardDeleteActivity;

    # invokes: Lcom/android/contacts/activities/NamecardDeleteActivity;->updateSaveButtonStatus()V
    invoke-static {v0}, Lcom/android/contacts/activities/NamecardDeleteActivity;->access$100(Lcom/android/contacts/activities/NamecardDeleteActivity;)V

    .line 76
    return-void
.end method
