.class Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

.field final synthetic val$profileIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 6315
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->val$profileIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 6318
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->this$1:Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;->access$5100(Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$AccountImageAdapter$1;->val$profileIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 6319
    return-void
.end method
