.class Lcom/android/contacts/detail/ContactDetailFragment$5;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;

.field final synthetic val$isNamecard:Z

.field final synthetic val$isZoominPhotoPopup:Z

.field final synthetic val$photoBiteArray:[B


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;Z[BZ)V
    .locals 0

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iput-boolean p2, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$isZoominPhotoPopup:Z

    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$photoBiteArray:[B

    iput-boolean p4, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$isNamecard:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1552
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1553
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1554
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$isZoominPhotoPopup:Z

    if-eqz v1, :cond_1

    .line 1555
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$photoBiteArray:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$photoBiteArray:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1556
    .local v0, "photo":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->val$isNamecard:Z

    invoke-static {v1, p1, v0, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->createZoomInPhotoPopup(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Bitmap;Z)Landroid/widget/PopupWindow;

    .line 1562
    .end local v0    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1558
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoHandler:Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$PhotoHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment$5;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    # getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;
    invoke-static {v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$500(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/ContactLoader$Result;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/ContactLoader$Result;->isPrivateContact()Z

    move-result v4

    # invokes: Lcom/android/contacts/detail/ContactDetailFragment;->showPhotoActionPopup(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Z)V
    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;Z)V

    goto :goto_0
.end method
