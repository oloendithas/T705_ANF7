.class Lcom/android/contacts/group/GroupEditorFragment$8;
.super Landroid/database/ContentObserver;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1333
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 1336
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1337
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$8;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    # invokes: Lcom/android/contacts/group/GroupEditorFragment;->updateVibrationTitle()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupEditorFragment;->access$800(Lcom/android/contacts/group/GroupEditorFragment;)V

    .line 1338
    return-void
.end method
