.class Lcom/android/contacts/activities/ContactEditorActivity$5;
.super Ljava/lang/Object;
.source "ContactEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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
    .line 1224
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$5;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorActivity$5;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    # getter for: Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;
    invoke-static {v0}, Lcom/android/contacts/activities/ContactEditorActivity;->access$300(Lcom/android/contacts/activities/ContactEditorActivity;)Lcom/android/contacts/editor/ContactEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertActionMenu()Z

    .line 1228
    return-void
.end method
