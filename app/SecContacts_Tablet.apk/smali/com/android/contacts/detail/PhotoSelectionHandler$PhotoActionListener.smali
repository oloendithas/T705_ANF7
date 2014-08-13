.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Lcom/android/contacts/editor/PhotoActionPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/PhotoSelectionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PhotoActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;


# direct methods
.method public constructor <init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCurrentPhotoFile()Ljava/lang/String;
.end method

.method public abstract onPhotoSelected(Landroid/graphics/Bitmap;)V
.end method

.method public abstract onPhotoSelectionDismissed()V
.end method

.method public onPickFromAvatar()V
    .locals 4

    .prologue
    .line 520
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromAvatarActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$500(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0071

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPickFromGalleryChosen()V
    .locals 4

    .prologue
    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :goto_0
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0071

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPickFromSMemo()V
    .locals 4

    .prologue
    .line 496
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromSMemoActivity()V
    invoke-static {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$300(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0071

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPickFromSNote()V
    .locals 4

    .prologue
    .line 484
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromSNoteActivity()V
    invoke-static {v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0071

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPickFromTaggedPicture()V
    .locals 4

    .prologue
    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromTaggedPictureActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$400(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0071

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onRemovePictureChosen()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public onTakePhotoChosen()V
    .locals 4

    .prologue
    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-static {}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/contacts/detail/PhotoSelectionHandler;->access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->this$0:Lcom/android/contacts/detail/PhotoSelectionHandler;

    iget-object v1, v1, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0071

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onUseAsPrimaryChosen()V
    .locals 0

    .prologue
    .line 450
    return-void
.end method
