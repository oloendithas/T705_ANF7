.class Lcom/android/contacts/group/GroupEditorFragment$6;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$6;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$6;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->startEditMember()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$600(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 632
    return-void
.end method
