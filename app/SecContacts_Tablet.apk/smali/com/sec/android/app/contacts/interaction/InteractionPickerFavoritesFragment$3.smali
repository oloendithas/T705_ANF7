.class Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;
.super Ljava/lang/Object;
.source "InteractionPickerFavoritesFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->showMaxCountAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mShowMaxCountDialog:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$402(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;Z)Z

    .line 1197
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;->val$flag:Z

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;

    # getter for: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->mSelectedContactHashMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$500(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    # invokes: Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->setDoneButton(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;->access$600(Lcom/sec/android/app/contacts/interaction/InteractionPickerFavoritesFragment;I)V

    .line 1199
    :cond_0
    return-void
.end method
