.class Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;
.super Landroid/os/AsyncTask;
.source "InteractionPickerRCSeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAllTaskVcard"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V
    .locals 0

    .prologue
    .line 1706
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$1;

    .prologue
    .line 1706
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1300(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->setSelectAllCheckedVcard(Z)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1400(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1706
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 1715
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1717
    .local v0, "mSuccess":Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->onSelectedInfoChanged()V

    .line 1719
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1720
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;

    const/4 v2, 0x1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->showMaxCountAlertDialog(Z)V
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;->access$1500(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment;Z)V

    .line 1723
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard$1;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;Z)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1740
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1706
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerRCSeFragment$SelectAllTaskVcard;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
