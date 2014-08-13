.class Lcom/android/contacts/detail/ContactDetailFragment$50;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Lcom/android/contacts/detail/DeselectSimDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->deselectSimForDS(JI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$data_id:J


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;J)V
    .locals 0

    .prologue
    .line 6954
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$50;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-wide p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$50;->val$data_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoneSelected()V
    .locals 3

    .prologue
    .line 6957
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$50;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-wide v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$50;->val$data_id:J

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->resetDefaultLine(J)V
    invoke-static {v0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$5800(Lcom/android/contacts/detail/ContactDetailFragment;J)V

    .line 6958
    return-void
.end method
